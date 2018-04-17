package com.wukong.main.beans;

public class FootPathDeviceBean
{
    private String equipTypeCode;
    private String id;
    private String sensors;

    public String getEquipTypeCode()
    {
        return this.equipTypeCode;
    }

    public String getId()
    {
        return this.id;
    }

    public String getSensors()
    {
        return this.sensors;
    }

    public void setEquipTypeCode(String paramString)
    {
        this.equipTypeCode = paramString;
    }

    public void setId(String paramString)
    {
        this.id = paramString;
    }

    public void setSensors(String paramString)
    {
        this.sensors = paramString;
    }
}