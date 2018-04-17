package com.wukong.main.beans;

public class SensorsBean
{
    private String btAddr;
    private String sensorId;
    private String sortOrder;
    private String space;

    public String getBtAddr()
    {
        return this.btAddr;
    }

    public String getSensorId()
    {
        return this.sensorId;
    }

    public String getSortOrder()
    {
        return this.sortOrder;
    }

    public String getSpace()
    {
        return this.space;
    }

    public void setBtAddr(String paramString)
    {
        this.btAddr = paramString;
    }

    public void setSensorId(String paramString)
    {
        this.sensorId = paramString;
    }

    public void setSortOrder(String paramString)
    {
        this.sortOrder = paramString;
    }

    public void setSpace(String paramString)
    {
        this.space = paramString;
    }
}