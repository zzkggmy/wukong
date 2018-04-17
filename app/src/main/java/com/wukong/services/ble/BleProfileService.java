package com.wukong.services.ble;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import android.widget.Toast;
import com.wukong.services.gym.BaseServiceCallbacks;
import com.wukong.services.gym.NativeSupport;

public abstract class BleProfileService extends Service
        implements BleManagerCallbacks
{
    public static final String BROADCAST_BATTERY_LEVEL = "com.wukong.BROADCAST_BATTERY_LEVEL";
    public static final String BROADCAST_BOND_STATE = "com.wukong.BROADCAST_BOND_STATE";
    public static final String BROADCAST_CONNECTION_STATE = "com.wukong.BROADCAST_CONNECTION_STATE";
    public static final String BROADCAST_DEVICE_READY = "com.wukong.DEVICE_READY";
    public static final String BROADCAST_ERROR = "com.wukong.BROADCAST_ERROR";
    public static final String BROADCAST_SERVICES_DISCOVERED = "com.wukong.BROADCAST_SERVICES_DISCOVERED";
    public static final String EXTRA_BATTERY_LEVEL = "com.wukong.EXTRA_BATTERY_LEVEL";
    public static final String EXTRA_BOND_STATE = "com.wukong.EXTRA_BOND_STATE";
    public static final String EXTRA_CONNECTION_STATE = "com.wukong.EXTRA_CONNECTION_STATE";
    public static final String EXTRA_DEVICE_ADDRESS = "com.wukong.EXTRA_DEVICE_ADDRESS";
    public static final String EXTRA_DEVICE_NAME = "com.wukong.EXTRA_DEVICE_NAME";
    public static final String EXTRA_ERROR_CODE = "com.wukong.EXTRA_ERROR_CODE";
    public static final String EXTRA_ERROR_MESSAGE = "com.wukong.EXTRA_ERROR_MESSAGE";
    public static final String EXTRA_LOG_URI = "com.wukong.EXTRA_LOG_URI";
    public static final String EXTRA_SERVICE_PRIMARY = "com.wukong.EXTRA_SERVICE_PRIMARY";
    public static final String EXTRA_SERVICE_SECONDARY = "com.wukong.EXTRA_SERVICE_SECONDARY";
    public static final int STATE_CONNECTED = 1;
    public static final int STATE_CONNECTING = 2;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_DISCONNECTING = 3;
    public static final int STATE_LINK_LOSS = -1;
    private static final String TAG = "BleProfileService";
    private boolean mActivityFinished;
    protected boolean mBinded;
    private BleManager<BleManagerCallbacks> mBleManager;
    private boolean mConnected;
    private String mDeviceAddress;
    private String mDeviceName;
    private Handler mHandler;
    protected int mInstanceNum = -1;
    protected boolean mProcessingData = false;

    protected LocalBinder getBinder()
    {
        return new LocalBinder();
    }

    protected String getDeviceAddress()
    {
        return this.mDeviceAddress;
    }

    protected String getDeviceName()
    {
        return this.mDeviceName;
    }

    protected abstract BleManager initializeManager();

    protected boolean isConnected()
    {
        return this.mConnected;
    }

    public void onBatteryValueReceived(int paramInt)
    {
        Intent localIntent = new Intent("com.wukong.BROADCAST_BATTERY_LEVEL");
        localIntent.putExtra("com.wukong.EXTRA_BATTERY_LEVEL", paramInt);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public IBinder onBind(Intent paramIntent)
    {
        this.mBinded = true;
        return getBinder();
    }

    public void onBonded()
    {
        Intent localIntent = new Intent("com.wukong.BROADCAST_BOND_STATE");
        localIntent.putExtra("com.wukong.EXTRA_BOND_STATE", 12);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public void onBondingRequired()
    {
        Intent localIntent = new Intent("com.wukong.BROADCAST_BOND_STATE");
        localIntent.putExtra("com.wukong.EXTRA_BOND_STATE", 11);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public void onCreate()
    {
        super.onCreate();
        Log.i("BleProfileService", "onCreate()??????????////");
        this.mHandler = new Handler();
        this.mBleManager = initializeManager();
        this.mBleManager.setGattCallbacks(this);
    }

    public void onDestroy()
    {
        super.onDestroy();
        this.mBleManager = null;
        this.mDeviceAddress = null;
        this.mDeviceName = null;
        this.mConnected = false;
    }

    public void onDeviceConnected()
    {
        this.mConnected = true;
        Log.i("BleProfileService", "3.....on-DeviceConnected.??????");
        Intent localIntent = new Intent("com.wukong.BROADCAST_CONNECTION_STATE");
        localIntent.putExtra("com.wukong.EXTRA_CONNECTION_STATE", 1);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public void onDeviceDisconnected()
    {
        this.mConnected = false;
        this.mDeviceAddress = null;
        this.mDeviceName = null;
        Intent localIntent = new Intent("com.wukong.BROADCAST_CONNECTION_STATE");
        localIntent.putExtra("com.wukong.EXTRA_CONNECTION_STATE", 0);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
        if (stopWhenDisconnected())
            stopService();
    }

    public void onDeviceDisconnecting()
    {
        Intent localIntent = new Intent("com.wukong.BROADCAST_CONNECTION_STATE");
        localIntent.putExtra("com.wukong.EXTRA_CONNECTION_STATE", 3);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public void onDeviceNotSupported()
    {
        Intent localIntent = new Intent("com.wukong.BROADCAST_SERVICES_DISCOVERED");
        localIntent.putExtra("com.wukong.EXTRA_SERVICE_PRIMARY", false);
        localIntent.putExtra("com.wukong.EXTRA_SERVICE_SECONDARY", false);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public void onDeviceReady()
    {
        Intent localIntent = new Intent("com.wukong.DEVICE_READY");
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public void onError(String paramString, int paramInt)
    {
        Intent localIntent = new Intent("com.wukong.BROADCAST_ERROR");
        localIntent.putExtra("com.wukong.EXTRA_ERROR_MESSAGE", paramString);
        localIntent.putExtra("com.wukong.EXTRA_ERROR_CODE", paramInt);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
        this.mBleManager.disconnect();
        stopSelf();
    }

    public void onLinklossOccur()
    {
        this.mConnected = false;
        Intent localIntent = new Intent("com.wukong.BROADCAST_CONNECTION_STATE");
        localIntent.putExtra("com.wukong.EXTRA_CONNECTION_STATE", -1);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    protected void onRebind()
    {
    }

    public final void onRebind(Intent paramIntent)
    {
        this.mBinded = true;
        if (this.mActivityFinished)
            onRebind();
        if ((this.mActivityFinished) && (this.mConnected))
        {
            this.mActivityFinished = false;
            this.mBleManager.readBatteryLevel();
        }
    }

    protected void onServiceStarted()
    {
    }

    public void onServicesDiscovered(boolean paramBoolean)
    {
        Intent localIntent = new Intent("com.wukong.BROADCAST_SERVICES_DISCOVERED");
        localIntent.putExtra("com.wukong.EXTRA_SERVICE_PRIMARY", true);
        localIntent.putExtra("com.wukong.EXTRA_SERVICE_SECONDARY", paramBoolean);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.mDeviceAddress);
        localIntent.putExtra("com.wukong.EXTRA_DEVICE_NAME", this.mDeviceName);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
    }

    public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
    {
        Log.i("BleProfileService", "onStartCommand()");
        if ((paramIntent == null) || (!paramIntent.hasExtra("com.wukong.EXTRA_DEVICE_ADDRESS")))
            throw new UnsupportedOperationException("No device address at EXTRA_DEVICE_ADDRESS key");
        ((Uri)paramIntent.getParcelableExtra("com.wukong.EXTRA_LOG_URI"));
        this.mDeviceAddress = paramIntent.getStringExtra("com.wukong.EXTRA_DEVICE_ADDRESS");
        Intent localIntent = new Intent("com.wukong.BROADCAST_CONNECTION_STATE");
        localIntent.putExtra("com.wukong.EXTRA_CONNECTION_STATE", 2);
        LocalBroadcastManager.getInstance(this).sendBroadcast(localIntent);
        BluetoothDevice localBluetoothDevice = ((BluetoothManager)getSystemService("bluetooth")).getAdapter().getRemoteDevice(this.mDeviceAddress);
        this.mDeviceName = localBluetoothDevice.getName();
        onServiceStarted();
        this.mBleManager.connect(localBluetoothDevice);
        return 3;
    }

    protected void onUnbind()
    {
    }

    public final boolean onUnbind(Intent paramIntent)
    {
        this.mBinded = false;
        if (this.mActivityFinished)
            onUnbind();
        if ((this.mActivityFinished) && (this.mConnected))
            this.mBleManager.setBatteryNotifications(false);
        return true;
    }

    protected void showToast(final int paramInt)
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                Toast.makeText(BleProfileService.this, paramInt, 0).show();
            }
        });
    }

    protected void showToast(final String paramString)
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                Toast.makeText(BleProfileService.this, paramString, 0).show();
            }
        });
    }

    protected void stopService()
    {
        stopSelf();
    }

    protected boolean stopWhenDisconnected()
    {
        return true;
    }

    public class LocalBinder extends Binder
    {
        public LocalBinder()
        {
        }

        public final void disconnect()
        {
            if (!BleProfileService.this.mConnected)
            {
                BleProfileService.this.mBleManager.close();
                BleProfileService.this.onDeviceDisconnected();
                return;
            }
            BleProfileService.this.mBleManager.disconnect();
        }

        public String getDeviceAddress()
        {
            return BleProfileService.this.mDeviceAddress;
        }

        public String getDeviceName()
        {
            return BleProfileService.this.mDeviceName;
        }

        public int getInstanceNum()
        {
            return BleProfileService.this.mInstanceNum;
        }

        public boolean isConnected()
        {
            return BleProfileService.this.mConnected;
        }

        public boolean isProcessingData()
        {
            return (BleProfileService.this.mProcessingData) && (NativeSupport.isSendingData());
        }

        public void setActivityIsFinishing(boolean paramBoolean)
        {
            BleProfileService.access$202(BleProfileService.this, paramBoolean);
        }

        public void setInstanceNum(int paramInt)
        {
            BleProfileService.this.mInstanceNum = paramInt;
        }

        public void setServiceCallback_(BaseServiceCallbacks paramBaseServiceCallbacks)
        {
        }

        public boolean startProcessingData()
        {
            Log.i("BleProfileService", "0. BLEService startProcessingData");
            BleProfileService.this.mProcessingData = true;
            NativeSupport.startSendingData();
            return true;
        }

        public boolean stopProcessingData()
        {
            boolean bool1 = BleProfileService.this.mProcessingData;
            boolean bool2 = false;
            if (bool1)
            {
                Log.i("BleProfileService", "BLEService stopProcessing!");
                NativeSupport.stopSendingData();
                BleProfileService.this.mProcessingData = false;
                bool2 = true;
            }
            return bool2;
        }
    }
}