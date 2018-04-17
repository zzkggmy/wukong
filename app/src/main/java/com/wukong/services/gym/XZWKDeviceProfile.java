package com.wukong.services.gym;

import android.util.Log;

import com.wukong.services.ble.BleProfileService;

public class XZWKDeviceProfile
{
    private static final String TAG = "XZWKDeviceProfile";
    public static final int TYPE_HEART_RATE = 20001;
    public static final int TYPE_ID = 12000;
    public static final int TYPE_MEG = 40000;
    public static final int TYPE_MOTION_F_IN = 10000;
    public static final int TYPE_MOTION_REED = 10100;
    public static final int TYPE_RUN = 90000;
    public static final int TYPE_WEIGHT = 30000;
    public static final int TYPE_WGT = 15000;
    public static final int TYPE_WRIST_BAND = 80000;
    protected boolean mBatteryToastShowed = false;
    protected int mBatteryValue = -1;
    protected int mBatteryVolUpdateCount = 0;
    protected boolean mConnected = false;
    protected String mDeviceAddress = null;
    protected String mDeviceName = null;
    private int mInstanceNum = -1;

    public BleProfileService.LocalBinder getBLEService(XZWKDeviceProfileCallback paramXZWKDeviceProfileCallback)
    {
        if (paramXZWKDeviceProfileCallback != null)
            return paramXZWKDeviceProfileCallback.getDeviceBLEService(this.mDeviceAddress, this.mInstanceNum);
        return null;
    }

    public int getBatteryValue()
    {
        return this.mBatteryValue;
    }

    public int getBatteryVolUpdateCount()
    {
        return this.mBatteryVolUpdateCount;
    }

    public String getDeviceAddress()
    {
        return this.mDeviceAddress;
    }

    public String getDeviceName()
    {
        return this.mDeviceName;
    }

    public int getInstanceNum()
    {
        return this.mInstanceNum;
    }

    public void increaseBatteryVolUpdateCountBy1()
    {
        this.mBatteryVolUpdateCount = (1 + this.mBatteryVolUpdateCount);
    }

    public void initInstanceNum()
    {
        if (this.mInstanceNum < 0)
        {
            this.mInstanceNum = NativeSupport.getAvailableMotionServiceInstanceNum();
            Log.i("XZWKDeviceProfile", "getAvailableMotionServiceInstanceNum " + this.mInstanceNum);
            NativeSupport.engageMotionServiceInstanceInstanceAt(this.mInstanceNum);
        }
    }

    public boolean isBatteryToastShowed()
    {
        return this.mBatteryToastShowed;
    }

    public boolean isConnected()
    {
        return this.mConnected;
    }

    public void releaseServiceInstance()
    {
        if (this.mInstanceNum >= 0)
            NativeSupport.releaseMotionServiceInstanceAt(this.mInstanceNum);
    }

    public void setBLEService(XZWKDeviceProfileCallback paramXZWKDeviceProfileCallback, BleProfileService.LocalBinder paramLocalBinder)
    {
        if (paramXZWKDeviceProfileCallback != null)
        {
            paramXZWKDeviceProfileCallback.setDeviceBLEService(paramLocalBinder, this.mInstanceNum);
            if (paramLocalBinder != null)
                paramLocalBinder.setInstanceNum(this.mInstanceNum);
        }
    }

    public void setBatteryToastShowed(boolean paramBoolean)
    {
        this.mBatteryToastShowed = paramBoolean;
    }

    public void setBatteryValue(int paramInt)
    {
        this.mBatteryValue = paramInt;
    }

    public void setBatteryVolUpdateCount(int paramInt)
    {
        this.mBatteryVolUpdateCount = paramInt;
    }

    public void setConnected(boolean paramBoolean)
    {
        this.mConnected = paramBoolean;
    }

    public void setDeviceAddress(String paramString)
    {
        this.mDeviceAddress = paramString;
    }

    public void setDeviceName(String paramString)
    {
        this.mDeviceName = paramString;
    }
}