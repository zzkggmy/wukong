package com.wukong.main.beans;

public class IndoorDeviceP1 extends OutdoorDeviceP1
{
    private String mWeightSensorAddress;
    private String mWeightSensorName;

    public IndoorDeviceP1(String paramString1, String paramString2, int paramInt1, long paramLong, String paramString3, String paramString4, boolean paramBoolean, int paramInt2, String paramString5)
    {
        super(paramString1, paramString2, paramInt1, paramLong, paramString3, paramString4, paramInt2, paramString5);
    }

    public String getWeightSensorAddress()
    {
        return this.mWeightSensorAddress;
    }

    public String getWeightSensorName()
    {
        return this.mWeightSensorName;
    }

    public void setWeightSensorAddress(String paramString)
    {
        this.mWeightSensorAddress = paramString;
    }

    public void setWeightSensorName(String paramString)
    {
        this.mWeightSensorName = paramString;
    }
}