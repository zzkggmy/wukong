package com.wukong.main.beans;

public class SmartPathDeviceInstance
{
    private int mPathSensorRssi;
    private long mPathSensorTimeStamp;
    private SmartPathDevice mSmartPathDevice;

    public SmartPathDeviceInstance(SmartPathDevice paramSmartPathDevice, long paramLong, int paramInt)
    {
        this.mSmartPathDevice = paramSmartPathDevice;
        this.mPathSensorTimeStamp = paramLong;
        this.mPathSensorRssi = paramInt;
    }

    public int getPathSensorIssi()
    {
        return this.mPathSensorRssi;
    }

    public long getPathSensorTimeStamp()
    {
        return this.mPathSensorTimeStamp;
    }

    public SmartPathDevice getSmartPathDevice()
    {
        return this.mSmartPathDevice;
    }

    public void setPathSensorRssi(int paramInt)
    {
        this.mPathSensorRssi = paramInt;
    }

    public void setPathSensorTimeStamp(long paramLong)
    {
        this.mPathSensorTimeStamp = paramLong;
    }

    public void setSmartPathDevice(SmartPathDevice paramSmartPathDevice)
    {
        this.mSmartPathDevice = paramSmartPathDevice;
    }
}