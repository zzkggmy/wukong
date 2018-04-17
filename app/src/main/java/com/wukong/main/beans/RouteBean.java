package com.wukong.main.beans;

public class RouteBean
{
    private String equipTypeCode;
    private String itemId;
    private String sensors;

    public String getEquipTypeCode()
    {
        return this.equipTypeCode;
    }

    public String getItemId()
    {
        return this.itemId;
    }

    public String getSensors()
    {
        return this.sensors;
    }

    public void setEquipTypeCode(String paramString)
    {
        this.equipTypeCode = paramString;
    }

    public void setItemId(String paramString)
    {
        this.itemId = paramString;
    }

    public void setSensors(String paramString)
    {
        this.sensors = paramString;
    }
}