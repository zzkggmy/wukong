package com.wukong.services.ble;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.util.Log;
import java.util.Queue;
import java.util.UUID;

public abstract class BleManager<E extends BleManagerCallbacks>
{
    private static final UUID BATTERY_LEVEL_CHARACTERISTIC = UUID.fromString("00002A19-0000-1000-8000-00805f9b34fb");
    private static final UUID BATTERY_SERVICE;
    private static final UUID CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    private static final String ERROR_AUTH_ERROR_WHILE_BONDED = "Phone has lost bonding information";
    private static final String ERROR_CONNECTION_STATE_CHANGE = "Error on connection state change";
    private static final String ERROR_DISCOVERY_SERVICE = "Error on discovering services";
    private static final String ERROR_READ_CHARACTERISTIC = "Error on reading characteristic";
    private static final String ERROR_WRITE_DESCRIPTOR = "Error on writing descriptor";
    private static final UUID GENERIC_ATTRIBUTE_SERVICE = UUID.fromString("00001801-0000-1000-8000-00805f9b34fb");
    private static final int PAIRING_VARIANT_CONSENT = 3;
    private static final int PAIRING_VARIANT_DISPLAY_PASSKEY = 4;
    private static final int PAIRING_VARIANT_DISPLAY_PIN = 5;
    private static final int PAIRING_VARIANT_OOB_CONSENT = 6;
    private static final int PAIRING_VARIANT_PASSKEY = 1;
    private static final int PAIRING_VARIANT_PASSKEY_CONFIRMATION = 2;
    private static final int PAIRING_VARIANT_PIN = 0;
    private static final UUID SERVICE_CHANGED_CHARACTERISTIC = UUID.fromString("00002A05-0000-1000-8000-00805f9b34fb");
    private static final String TAG = "BleManager";
    private BluetoothGatt mBluetoothGatt;
    private BroadcastReceiver mBondingBroadcastReceiver = new BroadcastReceiver()
    {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
            BluetoothDevice localBluetoothDevice = (BluetoothDevice)paramAnonymousIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            int i = paramAnonymousIntent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", -1);
            int j = paramAnonymousIntent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", -1);
            if ((BleManager.this.mBluetoothGatt == null) || (!localBluetoothDevice.getAddress().equals(BleManager.this.mBluetoothGatt.getDevice().getAddress())))
                return;
            DebugLogger.i("BleManager", "Bond state changed for: " + localBluetoothDevice.getName() + " new state: " + i + " previous: " + j);
            switch (i)
            {
                default:
                    return;
                case 11:
                    BleManager.this.mCallbacks.onBondingRequired();
                    return;
                case 12:
            }
            BleManager.this.mCallbacks.onBonded();
            BleManager.this.mBluetoothGatt.discoverServices();
        }
    };
    protected E mCallbacks;
    private boolean mConnected;
    private Context mContext;
    private Handler mHandler;
    private final BroadcastReceiver mPairingRequestBroadcastReceiver = new BroadcastReceiver()
    {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
            BluetoothDevice localBluetoothDevice = (BluetoothDevice)paramAnonymousIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if ((BleManager.this.mBluetoothGatt == null) || (!localBluetoothDevice.getAddress().equals(BleManager.this.mBluetoothGatt.getDevice().getAddress())))
                return;
            paramAnonymousIntent.getIntExtra("android.bluetooth.device.extra.PAIRING_VARIANT", 0);
        }
    };
    private boolean mUserDisconnected;

    static
    {
        BATTERY_SERVICE = UUID.fromString("0000180F-0000-1000-8000-00805f9b34fb");
    }

    public BleManager(Context paramContext)
    {
        this.mContext = paramContext;
        this.mHandler = new Handler();
        this.mUserDisconnected = false;
        paramContext.registerReceiver(this.mBondingBroadcastReceiver, new IntentFilter("android.bluetooth.device.action.BOND_STATE_CHANGED"));
        paramContext.registerReceiver(this.mPairingRequestBroadcastReceiver, new IntentFilter("android.bluetooth.device.action.PAIRING_REQUEST"));
    }

    private String bondStateToString(int paramInt)
    {
        switch (paramInt)
        {
            default:
                return "UNKNOWN";
            case 10:
                return "BOND_NONE";
            case 11:
                return "BOND_BONDING";
            case 12:
        }
        return "BOND_BONDED";
    }

    private boolean ensureServiceChangedEnabled(BluetoothGatt paramBluetoothGatt)
    {
        if (paramBluetoothGatt == null);
        BluetoothGattCharacteristic localBluetoothGattCharacteristic;
        do
        {
            BluetoothGattService localBluetoothGattService;
            do
            {
                do
                    return false;
                while (paramBluetoothGatt.getDevice().getBondState() != 12);
                localBluetoothGattService = paramBluetoothGatt.getService(GENERIC_ATTRIBUTE_SERVICE);
            }
            while (localBluetoothGattService == null);
            localBluetoothGattCharacteristic = localBluetoothGattService.getCharacteristic(SERVICE_CHANGED_CHARACTERISTIC);
        }
        while (localBluetoothGattCharacteristic == null);
        return enableIndications(localBluetoothGattCharacteristic);
    }

    private String getWriteType(int paramInt)
    {
        switch (paramInt)
        {
            case 3:
            default:
                return "UNKNOWN: " + paramInt;
            case 2:
                return "WRITE REQUEST";
            case 1:
                return "WRITE COMMAND";
            case 4:
        }
        return "WRITE SIGNED";
    }

    private boolean isBatteryLevelCCCD(BluetoothGattDescriptor paramBluetoothGattDescriptor)
    {
        if (paramBluetoothGattDescriptor == null)
            return false;
        return BATTERY_LEVEL_CHARACTERISTIC.equals(paramBluetoothGattDescriptor.getCharacteristic().getUuid());
    }

    private boolean isBatteryLevelCharacteristic(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        if (paramBluetoothGattCharacteristic == null)
            return false;
        return BATTERY_LEVEL_CHARACTERISTIC.equals(paramBluetoothGattCharacteristic.getUuid());
    }

    private boolean isServiceChangedCCCD(BluetoothGattDescriptor paramBluetoothGattDescriptor)
    {
        if (paramBluetoothGattDescriptor == null)
            return false;
        return SERVICE_CHANGED_CHARACTERISTIC.equals(paramBluetoothGattDescriptor.getCharacteristic().getUuid());
    }

    private String pairingVariantToString(int paramInt)
    {
        switch (paramInt)
        {
            default:
                return "UNKNOWN";
            case 0:
                return "PAIRING_VARIANT_PIN";
            case 1:
                return "PAIRING_VARIANT_PASSKEY";
            case 2:
                return "PAIRING_VARIANT_PASSKEY_CONFIRMATION";
            case 3:
                return "PAIRING_VARIANT_CONSENT";
            case 4:
                return "PAIRING_VARIANT_DISPLAY_PASSKEY";
            case 5:
                return "PAIRING_VARIANT_DISPLAY_PIN";
            case 6:
        }
        return "PAIRING_VARIANT_OOB_CONSENT";
    }

    public void close()
    {
        try
        {
            this.mContext.unregisterReceiver(this.mBondingBroadcastReceiver);
            this.mContext.unregisterReceiver(this.mPairingRequestBroadcastReceiver);
            label22: if (this.mBluetoothGatt != null)
            {
                this.mBluetoothGatt.close();
                this.mBluetoothGatt = null;
            }
            this.mUserDisconnected = false;
            return;
        }
        catch (Exception localException)
        {
            break label22;
        }
    }

    public void connect(BluetoothDevice paramBluetoothDevice)
    {
        if (this.mConnected)
            return;
        if (this.mBluetoothGatt != null)
        {
            this.mBluetoothGatt.close();
            this.mBluetoothGatt = null;
        }
        boolean bool1 = shouldAutoConnect();
        if (!bool1);
        for (boolean bool2 = true; ; bool2 = false)
        {
            this.mUserDisconnected = bool2;
            Log.i("BleManager", "Connecting...");
            Log.i("BleManager", "gatt = device.connectGatt(autoConnect = " + bool1 + ")");
            this.mBluetoothGatt = paramBluetoothDevice.connectGatt(this.mContext, bool1, getGattCallback());
            return;
        }
    }

    public boolean disconnect()
    {
        this.mUserDisconnected = true;
        if ((this.mConnected) && (this.mBluetoothGatt != null))
        {
            this.mCallbacks.onDeviceDisconnecting();
            this.mBluetoothGatt.disconnect();
            return true;
        }
        return false;
    }

    protected final boolean enableIndications(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        BluetoothGatt localBluetoothGatt = this.mBluetoothGatt;
        if ((localBluetoothGatt == null) || (paramBluetoothGattCharacteristic == null));
        BluetoothGattDescriptor localBluetoothGattDescriptor;
        do
        {
            do
                return false;
            while ((0x20 & paramBluetoothGattCharacteristic.getProperties()) == 0);
            localBluetoothGatt.setCharacteristicNotification(paramBluetoothGattCharacteristic, true);
            localBluetoothGattDescriptor = paramBluetoothGattCharacteristic.getDescriptor(CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID);
        }
        while (localBluetoothGattDescriptor == null);
        localBluetoothGattDescriptor.setValue(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
        return localBluetoothGatt.writeDescriptor(localBluetoothGattDescriptor);
    }

    protected final boolean enableNotifications(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        BluetoothGatt localBluetoothGatt = this.mBluetoothGatt;
        if ((localBluetoothGatt == null) || (paramBluetoothGattCharacteristic == null));
        BluetoothGattDescriptor localBluetoothGattDescriptor;
        do
        {
            do
                return false;
            while ((0x10 & paramBluetoothGattCharacteristic.getProperties()) == 0);
            localBluetoothGatt.setCharacteristicNotification(paramBluetoothGattCharacteristic, true);
            localBluetoothGattDescriptor = paramBluetoothGattCharacteristic.getDescriptor(CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID);
        }
        while (localBluetoothGattDescriptor == null);
        localBluetoothGattDescriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        return localBluetoothGatt.writeDescriptor(localBluetoothGattDescriptor);
    }

    protected Context getContext()
    {
        return this.mContext;
    }

    protected abstract BleManager<E>.BleManagerGattCallback getGattCallback();

    public final boolean readBatteryLevel()
    {
        BluetoothGatt localBluetoothGatt = this.mBluetoothGatt;
        if (localBluetoothGatt == null);
        BluetoothGattCharacteristic localBluetoothGattCharacteristic;
        do
        {
            BluetoothGattService localBluetoothGattService;
            do
            {
                return false;
                localBluetoothGattService = localBluetoothGatt.getService(BATTERY_SERVICE);
            }
            while (localBluetoothGattService == null);
            localBluetoothGattCharacteristic = localBluetoothGattService.getCharacteristic(BATTERY_LEVEL_CHARACTERISTIC);
        }
        while (localBluetoothGattCharacteristic == null);
        if ((0x2 & localBluetoothGattCharacteristic.getProperties()) == 0)
            return setBatteryNotifications(true);
        return readCharacteristic(localBluetoothGattCharacteristic);
    }

    protected final boolean readCharacteristic(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        BluetoothGatt localBluetoothGatt = this.mBluetoothGatt;
        if ((localBluetoothGatt == null) || (paramBluetoothGattCharacteristic == null));
        while ((0x2 & paramBluetoothGattCharacteristic.getProperties()) == 0)
            return false;
        return localBluetoothGatt.readCharacteristic(paramBluetoothGattCharacteristic);
    }

    public boolean setBatteryNotifications(boolean paramBoolean)
    {
        BluetoothGatt localBluetoothGatt = this.mBluetoothGatt;
        if (localBluetoothGatt == null);
        BluetoothGattDescriptor localBluetoothGattDescriptor;
        do
        {
            BluetoothGattCharacteristic localBluetoothGattCharacteristic;
            do
            {
                BluetoothGattService localBluetoothGattService;
                do
                {
                    return false;
                    localBluetoothGattService = localBluetoothGatt.getService(BATTERY_SERVICE);
                }
                while (localBluetoothGattService == null);
                localBluetoothGattCharacteristic = localBluetoothGattService.getCharacteristic(BATTERY_LEVEL_CHARACTERISTIC);
            }
            while ((localBluetoothGattCharacteristic == null) || ((0x10 & localBluetoothGattCharacteristic.getProperties()) == 0));
            localBluetoothGatt.setCharacteristicNotification(localBluetoothGattCharacteristic, paramBoolean);
            localBluetoothGattDescriptor = localBluetoothGattCharacteristic.getDescriptor(CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID);
        }
        while (localBluetoothGattDescriptor == null);
        if (paramBoolean)
            localBluetoothGattDescriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        while (true)
        {
            return localBluetoothGatt.writeDescriptor(localBluetoothGattDescriptor);
            localBluetoothGattDescriptor.setValue(BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
        }
    }

    public void setGattCallbacks(E paramE)
    {
        this.mCallbacks = paramE;
    }

    protected boolean shouldAutoConnect()
    {
        return false;
    }

    protected void sleepFor(int paramInt)
    {
        long l = paramInt;
        try
        {
            Thread.sleep(l);
            Log.i("BleManager", "Thread.sleep(" + paramInt + ")");
            return;
        }
        catch (Exception localException)
        {
            Log.i("BleManager", localException.getMessage());
        }
    }

    protected final boolean writeCharacteristic(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        BluetoothGatt localBluetoothGatt = this.mBluetoothGatt;
        if ((localBluetoothGatt == null) || (paramBluetoothGattCharacteristic == null));
        while ((0xC & paramBluetoothGattCharacteristic.getProperties()) == 0)
            return false;
        return localBluetoothGatt.writeCharacteristic(paramBluetoothGattCharacteristic);
    }

    protected abstract class BleManagerGattCallback extends BluetoothGattCallback
    {
        private boolean mInitInProgress;
        private Queue<BleManager.Request> mInitQueue;

        protected BleManagerGattCallback()
        {
        }

        private void nextRequest()
        {
            BleManager.this.sleepFor(100);
            Queue localQueue = this.mInitQueue;
            if (localQueue != null);
            for (BleManager.Request localRequest = (BleManager.Request)localQueue.poll(); localRequest == null; localRequest = null)
            {
                if (this.mInitInProgress)
                {
                    this.mInitInProgress = false;
                    onDeviceReady();
                }
                return;
            }
            switch (BleManager.3.$SwitchMap$com$wukong$services$ble$BleManager$Request$Type[BleManager.Request.access$900(localRequest).ordinal()])
            {
                default:
                    return;
                case 1:
                    BleManager.this.readCharacteristic(BleManager.Request.access$1000(localRequest));
                    return;
                case 2:
                    BluetoothGattCharacteristic localBluetoothGattCharacteristic = BleManager.Request.access$1000(localRequest);
                    localBluetoothGattCharacteristic.setValue(BleManager.Request.access$1100(localRequest));
                    BleManager.this.writeCharacteristic(localBluetoothGattCharacteristic);
                    return;
                case 3:
                    BleManager.this.sleepFor(500);
                    BleManager.this.enableNotifications(BleManager.Request.access$1000(localRequest));
                    return;
                case 4:
            }
            BleManager.this.enableIndications(BleManager.Request.access$1000(localRequest));
        }

        private void onError(String paramString, int paramInt)
        {
            BleManager.this.mCallbacks.onError(paramString, paramInt);
        }

        private String stateToString(int paramInt)
        {
            switch (paramInt)
            {
                default:
                    return "DISCONNECTED";
                case 2:
                    return "CONNECTED";
                case 1:
                    return "CONNECTING";
                case 3:
            }
            return "DISCONNECTING";
        }

        protected abstract Queue<BleManager.Request> initGatt(BluetoothGatt paramBluetoothGatt);

        protected boolean isOptionalServiceSupported(BluetoothGatt paramBluetoothGatt)
        {
            return false;
        }

        protected abstract boolean isRequiredServiceSupported(BluetoothGatt paramBluetoothGatt);

        public final void onCharacteristicChanged(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
            ParserUtils.parse(paramBluetoothGattCharacteristic);
            if (BleManager.this.isBatteryLevelCharacteristic(paramBluetoothGattCharacteristic))
            {
                int k = paramBluetoothGattCharacteristic.getIntValue(17, 0).intValue();
                BleManager.this.mCallbacks.onBatteryValueReceived(k);
                return;
            }
            BluetoothGattDescriptor localBluetoothGattDescriptor = paramBluetoothGattCharacteristic.getDescriptor(BleManager.CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID);
            int i;
            if ((localBluetoothGattDescriptor != null) && (localBluetoothGattDescriptor.getValue() != null) && (localBluetoothGattDescriptor.getValue().length == 2))
            {
                int j = localBluetoothGattDescriptor.getValue()[0];
                i = 0;
                if (j != 1);
            }
            else
            {
                i = 1;
            }
            if (i != 0)
            {
                onCharacteristicNotified(paramBluetoothGatt, paramBluetoothGattCharacteristic);
                return;
            }
            onCharacteristicIndicated(paramBluetoothGatt, paramBluetoothGattCharacteristic);
        }

        protected void onCharacteristicIndicated(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
        }

        protected void onCharacteristicNotified(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
        }

        protected void onCharacteristicRead(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
        }

        public final void onCharacteristicRead(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt)
        {
            if (paramInt == 0)
                if (BleManager.this.isBatteryLevelCharacteristic(paramBluetoothGattCharacteristic))
                {
                    int i = paramBluetoothGattCharacteristic.getIntValue(17, 0).intValue();
                    BleManager.this.mCallbacks.onBatteryValueReceived(i);
                    if (!BleManager.this.setBatteryNotifications(true))
                        nextRequest();
                }
            do
            {
                return;
                onCharacteristicRead(paramBluetoothGatt, paramBluetoothGattCharacteristic);
                nextRequest();
                return;
                if (paramInt != 5)
                    break;
            }
            while (paramBluetoothGatt.getDevice().getBondState() == 10);
            Log.i("BleManager", "Phone has lost bonding information");
            BleManager.this.mCallbacks.onError("Phone has lost bonding information", paramInt);
            return;
            Log.i("BleManager", "onCharacteristicRead error " + paramInt);
            onError("Error on reading characteristic", paramInt);
        }

        protected void onCharacteristicWrite(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
        }

        public void onCharacteristicWrite(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt)
        {
            if (paramInt == 0)
            {
                onCharacteristicWrite(paramBluetoothGatt, paramBluetoothGattCharacteristic);
                nextRequest();
            }
            do
            {
                return;
                if (paramInt != 5)
                    break;
                DebugLogger.e("BleManager", "GATT_INSUFFICIENT_AUTHENTICATION error " + paramInt);
            }
            while (paramBluetoothGatt.getDevice().getBondState() == 10);
            Log.i("BleManager", "Phone has lost bonding information");
            BleManager.this.mCallbacks.onError("Phone has lost bonding information", paramInt);
            return;
            Log.i("BleManager", "onCharacteristicRead error " + paramInt);
            onError("Error on reading characteristic", paramInt);
        }

        public final void onConnectionStateChange(final BluetoothGatt paramBluetoothGatt, int paramInt1, int paramInt2)
        {
            Log.i("BleManager", "[Callback] Connection state changed with status: " + paramInt1 + " and new state: " + paramInt2 + " (" + stateToString(paramInt2) + ")");
            if ((paramInt1 == 0) && (paramInt2 == 2))
            {
                BleManager.access$102(BleManager.this, true);
                BleManager.this.mCallbacks.onDeviceConnected();
                BleManager.this.mHandler.postDelayed(new Runnable()
                                                     {
                                                         public void run()
                                                         {
                                                             if (paramBluetoothGatt.getDevice().getBondState() != 11)
                                                                 paramBluetoothGatt.discoverServices();
                                                         }
                                                     }
                        , 600L);
                return;
            }
            if (paramInt2 == 0)
            {
                if (paramInt1 != 0)
                    Log.i("BleManager", "Error: (0x" + Integer.toHexString(paramInt1) + "): " + GattError.parseConnectionError(paramInt1));
                Log.i("BleManager", "1.Disconnected from " + paramBluetoothGatt.getDevice().getAddress() + "---------->");
                onDeviceDisconnected();
                BleManager.access$102(BleManager.this, false);
                if (BleManager.this.mUserDisconnected)
                {
                    if (paramInt1 == 133)
                        BleManager.this.mCallbacks.onError("onLinklossOccur", 6733);
                    Log.i("BleManager", "User Disconnected");
                    BleManager.this.mCallbacks.onDeviceDisconnected();
                    BleManager.this.close();
                    return;
                }
                Log.i("BleManager", "Connection lost");
                BleManager.this.mCallbacks.onLinklossOccur();
                return;
            }
            Log.i("BleManager", "Error (0x" + Integer.toHexString(paramInt1) + "): " + GattError.parseConnectionError(paramInt1));
            BleManager.this.mCallbacks.onError("Error on connection state change", paramInt1);
        }

        public final void onDescriptorWrite(BluetoothGatt paramBluetoothGatt, BluetoothGattDescriptor paramBluetoothGattDescriptor, int paramInt)
        {
            if (paramInt == 0)
                if (BleManager.this.isServiceChangedCCCD(paramBluetoothGattDescriptor))
                    if (!BleManager.this.readBatteryLevel())
                        nextRequest();
            do
            {
                byte[] arrayOfByte;
                do
                {
                    return;
                    if (!BleManager.this.isBatteryLevelCCCD(paramBluetoothGattDescriptor))
                        break;
                    arrayOfByte = paramBluetoothGattDescriptor.getValue();
                }
                while ((arrayOfByte == null) || (arrayOfByte.length <= 0) || (arrayOfByte[0] != 1));
                nextRequest();
                return;
                nextRequest();
                return;
                if (paramInt != 5)
                    break;
            }
            while (paramBluetoothGatt.getDevice().getBondState() == 10);
            Log.i("BleManager", "Phone has lost bonding information");
            BleManager.this.mCallbacks.onError("Phone has lost bonding information", paramInt);
            return;
            Log.i("BleManager", "onDescriptorWrite error " + paramInt);
            onError("Error on writing descriptor", paramInt);
        }

        protected abstract void onDeviceDisconnected();

        protected void onDeviceReady()
        {
            BleManager.this.mCallbacks.onDeviceReady();
        }

        public final void onServicesDiscovered(BluetoothGatt paramBluetoothGatt, int paramInt)
        {
            if (paramInt == 0)
            {
                if (isRequiredServiceSupported(paramBluetoothGatt))
                {
                    boolean bool = isOptionalServiceSupported(paramBluetoothGatt);
                    if (bool)
                        BleManager.this.mCallbacks.onServicesDiscovered(bool);
                    this.mInitInProgress = true;
                    this.mInitQueue = initGatt(paramBluetoothGatt);
                    if (BleManager.this.ensureServiceChangedEnabled(paramBluetoothGatt));
                    while (BleManager.this.readBatteryLevel())
                        return;
                    nextRequest();
                    return;
                }
                Log.i("BleManager", "Device is not supported");
                BleManager.this.mCallbacks.onDeviceNotSupported();
                BleManager.this.disconnect();
                return;
            }
            Log.i("BleManager", "onServicesDiscovered error " + paramInt);
            onError("Error on discovering services", paramInt);
        }
    }

    protected static final class Request
    {
        private final BluetoothGattCharacteristic characteristic;
        private final Type type;
        private final byte[] value;

        private Request(Type paramType, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
            this.type = paramType;
            this.characteristic = paramBluetoothGattCharacteristic;
            this.value = null;
        }

        private Request(Type paramType, BluetoothGattCharacteristic paramBluetoothGattCharacteristic, byte[] paramArrayOfByte)
        {
            this.type = paramType;
            this.characteristic = paramBluetoothGattCharacteristic;
            this.value = paramArrayOfByte;
        }

        public static Request newEnableIndicationsRequest(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
            return new Request(Type.ENABLE_INDICATIONS, paramBluetoothGattCharacteristic);
        }

        public static Request newEnableNotificationsRequest(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
            return new Request(Type.ENABLE_NOTIFICATIONS, paramBluetoothGattCharacteristic);
        }

        public static Request newReadRequest(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
        {
            return new Request(Type.READ, paramBluetoothGattCharacteristic);
        }

        public static Request newWriteRequest(BluetoothGattCharacteristic paramBluetoothGattCharacteristic, byte[] paramArrayOfByte)
        {
            return new Request(Type.WRITE, paramBluetoothGattCharacteristic, paramArrayOfByte);
        }

        private static enum Type
        {
            static
            {
                READ = new Type("READ", 1);
                ENABLE_NOTIFICATIONS = new Type("ENABLE_NOTIFICATIONS", 2);
                ENABLE_INDICATIONS = new Type("ENABLE_INDICATIONS", 3);
                Type[] arrayOfType = new Type[4];
                arrayOfType[0] = WRITE;
                arrayOfType[1] = READ;
                arrayOfType[2] = ENABLE_NOTIFICATIONS;
                arrayOfType[3] = ENABLE_INDICATIONS;
            }
        }
    }
}