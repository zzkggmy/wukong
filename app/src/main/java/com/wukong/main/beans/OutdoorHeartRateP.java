package com.wukong.main.beans;

public class OutdoorHeartRateP
{
    private String mHeartRateSensorAddress;
    private String mHeartRateSensorName;
    private String mIdSensorAddress;
    private double mIdSensorIssi;
    private long mIdSensorLatestTimeStamp;
    private String mIdSensorName;
    private boolean mIsHeartRateSensorActivated;
    private String mPackageId;
    private int mType;
    private boolean mUpdated;

    public OutdoorHeartRateP(String paramString1, String paramString2, int paramInt1, long paramLong, String paramString3, String paramString4, boolean paramBoolean, int paramInt2, String paramString5)
    {
        this.mIdSensorName = paramString1;
        this.mIdSensorAddress = paramString2;
        this.mIdSensorIssi = paramInt1;
        this.mIdSensorLatestTimeStamp = paramLong;
        this.mHeartRateSensorName = paramString3;
        this.mHeartRateSensorAddress = paramString4;
        this.mIsHeartRateSensorActivated = paramBoolean;
        this.mType = paramInt2;
        this.mPackageId = paramString5;
    }

    public String getHeartRateSensorAddress()
    {
        return this.mHeartRateSensorAddress;
    }

    public String getHeartRateSensorName()
    {
        return this.mHeartRateSensorName;
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

    public double getIdSensorRssi()
    {
        return this.mIdSensorIssi;
    }

    public String getPackageId()
    {
        return this.mPackageId;
    }

    public int getType()
    {
        return this.mType;
    }

    public boolean isHeartRateSensorActivated()
    {
        return this.mIsHeartRateSensorActivated;
    }

    public boolean isUpdated()
    {
        return this.mUpdated;
    }

    public void setHeartRateSensorAddress(String paramString)
    {
        this.mHeartRateSensorAddress = paramString;
    }

    public void setHeartRateSensorName(String paramString)
    {
        this.mHeartRateSensorName = paramString;
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

    public void setIdSensorRssi(double paramDouble)
    {
        this.mIdSensorIssi = paramDouble;
    }

    public void setIsHeartRateSensorActivated(boolean paramBoolean)
    {
        this.mIsHeartRateSensorActivated = paramBoolean;
    }

    public void setPackageId(String paramString)
    {
        this.mPackageId = paramString;
    }

    public void setType(int paramInt)
    {
        this.mType = paramInt;
    }

    public void setUpdated(boolean paramBoolean)
    {
        this.mUpdated = paramBoolean;
    }
}