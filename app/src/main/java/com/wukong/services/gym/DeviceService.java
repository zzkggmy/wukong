package com.wukong.services.gym;

import android.bluetooth.BluetoothGattCharacteristic;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.wukong.services.ble.BleManager;
import com.wukong.services.ble.BleProfileService;
import com.wukong.services.ble.BleProfileService.LocalBinder;

public class DeviceService extends BleProfileService
        implements BaseManagerCallbacks
{
    private static final String ACTION_DISCONNECT = "ACTION_DISCONNECT";
    private static final String TAG = DeviceService.class.getSimpleName();
    protected GymBinder mBinder;
    private final BroadcastReceiver mDisconnectActionBroadcastReceiver = new BroadcastReceiver()
    {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
            if (DeviceService.this.isConnected())
            {
                if (DeviceService.this.getBinder() != null)
                    DeviceService.this.getBinder().disconnect();
                return;
            }
            DeviceService.this.stopSelf();
        }
    };
    private BaseManager mManager;

    protected GymBinder getBinder()
    {
        return this.mBinder;
    }

    protected BleManager<BaseManagerCallbacks> initializeManager()
    {
        this.mManager = new BaseManager(this);
        return this.mManager;
    }

    public void onCreate()
    {
        super.onCreate();
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("ACTION_DISCONNECT");
        registerReceiver(this.mDisconnectActionBroadcastReceiver, localIntentFilter);
        this.mBinder = new GymBinder();
        NativeSupport.setRunBinder(this.mBinder);
    }

    public void onDestroy()
    {
        unregisterReceiver(this.mDisconnectActionBroadcastReceiver);
        NativeSupport.set_GYM_SERVICE_CALLBACK(null);
        super.onDestroy();
    }

    public void onDeviceConnected()
    {
        Log.i(TAG, "2.....basketballservice onDeviceConnected()");
        super.onDeviceConnected();
    }

    public void onDeviceDisconnected()
    {
        super.onDeviceDisconnected();
    }

    protected void onRebind()
    {
    }

    public void onSampleValueReceived(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        if ((this.mProcessingData) && (this.mManager != null))
        {
            if (this.mManager.getDeviceType() == 20001)
                NativeSupport.dispatchHeartRate(paramBluetoothGattCharacteristic);
        }
        else
            return;
        NativeSupport.putDataIntoQueque(new DeviceBLEGattCharacteristic(paramBluetoothGattCharacteristic, this.mInstanceNum, this.mManager.getDeviceType()));
    }

    protected void onServiceStarted()
    {
    }

    protected void onUnbind()
    {
    }

    public class GymBinder extends BleProfileService.LocalBinder
    {
        private float mPOST_FLPTAU_ANGLE_BAR = 100000.0F;
        private float mPOST_FLPTAU_ANGLE_MIN_BAR = 100000.0F;
        private float mRIGHT_SIGNED_FLPTAU_ANGLE_BAR = 100000.0F;
        private float mTAU_ANGLE_HOLD_BAR = 100000.0F;
        private float mTAU_ANGLE_REST_BAR = 100000.0F;

        public GymBinder()
        {
            super();
        }

        private void commitMotionParamChange()
        {
            if ((DeviceService.this.mManager != null) && (DeviceService.this.mManager.getDeviceType() == 10000))
            {
                float[] arrayOfFloat = new float[20];
                int i = 0 + 1;
                arrayOfFloat[0] = DeviceService.this.mManager.getDeviceType();
                int j = i + 1;
                arrayOfFloat[i] = this.mPOST_FLPTAU_ANGLE_BAR;
                int k = j + 1;
                arrayOfFloat[j] = this.mPOST_FLPTAU_ANGLE_MIN_BAR;
                int m = k + 1;
                arrayOfFloat[k] = this.mTAU_ANGLE_HOLD_BAR;
                int n = m + 1;
                arrayOfFloat[m] = this.mTAU_ANGLE_REST_BAR;
                (n + 1);
                arrayOfFloat[n] = this.mRIGHT_SIGNED_FLPTAU_ANGLE_BAR;
                NativeSupport.setMotionServiceParameters(arrayOfFloat, DeviceService.this.mInstanceNum);
            }
        }

        public boolean isProcessingData()
        {
            return (super.isProcessingData()) && (NativeSupport.isProcessingMotionData());
        }

        public void setActivityIsFinishing(boolean paramBoolean)
        {
            super.setActivityIsFinishing(paramBoolean);
            if (paramBoolean)
            {
                setServiceCallback_(null);
                stopProcessingData();
            }
        }

        public void setMotionUParams(double[] paramArrayOfDouble)
        {
            NativeSupport.setMotionUParams(paramArrayOfDouble);
        }

        public void setPOST_FLPTAU_ANGLE_BAR(float paramFloat)
        {
            this.mPOST_FLPTAU_ANGLE_BAR = paramFloat;
            commitMotionParamChange();
        }

        public void setPOST_FLPTAU_ANGLE_MIN_BAR(float paramFloat)
        {
            this.mPOST_FLPTAU_ANGLE_MIN_BAR = paramFloat;
            commitMotionParamChange();
        }

        public void setRIGHT_SIGNED_FLPTAU_ANGLE_BAR(float paramFloat)
        {
            this.mRIGHT_SIGNED_FLPTAU_ANGLE_BAR = paramFloat;
            commitMotionParamChange();
        }

        public void setServiceCallback_(BaseServiceCallbacks paramBaseServiceCallbacks)
        {
            NativeSupport.set_GYM_SERVICE_CALLBACK(paramBaseServiceCallbacks);
        }

        public void setTAU_ANGLE_HOLD_BAR(float paramFloat)
        {
            this.mTAU_ANGLE_HOLD_BAR = paramFloat;
            commitMotionParamChange();
        }

        public void setTAU_ANGLE_REST_BAR(float paramFloat)
        {
            this.mTAU_ANGLE_REST_BAR = paramFloat;
            commitMotionParamChange();
        }

        public boolean startProcessingData()
        {
            super.startProcessingData();
            return true;
        }

        public boolean stopProcessingData()
        {
            super.stopProcessingData();
            return true;
        }

        public boolean writeMotionCharacteristicValue(byte[] paramArrayOfByte)
        {
            BaseManager localBaseManager = DeviceService.this.mManager;
            boolean bool = false;
            if (localBaseManager != null)
            {
                Log.i(DeviceService.TAG, "2. writeCharacteristicValue" + paramArrayOfByte[0] + paramArrayOfByte[1] + paramArrayOfByte[2] + paramArrayOfByte[3] + paramArrayOfByte[4] + paramArrayOfByte[5] + paramArrayOfByte[6]);
                bool = DeviceService.this.mManager.writeCharacteristicValue(paramArrayOfByte);
            }
            return bool;
        }
    }
}