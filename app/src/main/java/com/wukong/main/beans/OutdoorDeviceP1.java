package com.wukong.main.beans;

public class OutdoorDeviceP1
{
    private String mIdSensorAddress;
    private long mIdSensorLatestTimeStamp;
    private String mIdSensorName;
    private int mIdSensorRssi;
    private String mMotionSensorAddress;
    private String mMotionSensorName;
    private String mPackageId;
    private double mRssiInstantLP;
    private int mType;
    private boolean mUpdated;

    public OutdoorDeviceP1(String paramString1, String paramString2, int paramInt1, long paramLong, String paramString3, String paramString4, int paramInt2, String paramString5)
    {
        this.mIdSensorName = paramString1;
        this.mIdSensorAddress = paramString2;
        this.mIdSensorRssi = paramInt1;
        this.mRssiInstantLP = paramInt1;
        this.mIdSensorLatestTimeStamp = paramLong;
        this.mMotionSensorName = paramString3;
        this.mMotionSensorAddress = paramString4;
        this.mType = paramInt2;
        this.mPackageId = paramString5;
    }

    public String getIdSensorAddress()
    {
        return this.mIdSensorAddress;
    }

    public long getIdSensorLatestTimeStamp()
    {
        return this.mIdSensorLatestTimeStamp;
    }

    public String getIdSensorName()
    {
        return this.mIdSensorName;
    }

    public int getIdSensorRssi()
    {
        return this.mIdSensorRssi;
    }

    public int getInstrumentType()
    {
        return this.mType;
    }

    public String getMotionSensorAddress()
    {
        return this.mMotionSensorAddress;
    }

    public String getMotionSensorName()
    {
        return this.mMotionSensorName;
    }

    public String getPackageId()
    {
        return this.mPackageId;
    }

    public double getRssiInstantLP()
    {
        return this.mRssiInstantLP;
    }

    public boolean isUpdated()
    {
        return this.mUpdated;
    }

    public void setIdSensorAddress(String paramString)
    {
        this.mIdSensorAddress = paramString;
    }

    public void setIdSensorLatestTimeStamp(long paramLong)
    {
        this.mIdSensorLatestTimeStamp = paramLong;
    }

    public void setIdSensorName(String paramString)
    {
        this.mIdSensorName = paramString;
    }

    public void setIdSensorRssi(int paramInt)
    {
        this.mIdSensorRssi = paramInt;
    }

    public void setInstrumentType(int paramInt)
    {
        this.mType = paramInt;
    }

    public void setMotionSensorAddress(String paramString)
    {
        this.mMotionSensorAddress = paramString;
    }

    public void setMotionSensorName(String paramString)
    {
        this.mMotionSensorName = paramString;
    }

    public void setPackageId(String paramString)
    {
        this.mPackageId = paramString;
    }

    public void setRssiInstantLP(double paramDouble)
    {
        this.mRssiInstantLP = paramDouble;
    }

    public void setUpdated(boolean paramBoolean)
    {
        this.mUpdated = paramBoolean;
    }
}