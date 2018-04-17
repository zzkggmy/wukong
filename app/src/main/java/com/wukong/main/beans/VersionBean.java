package com.wukong.main.beans;

public class VersionBean
{
    private String isLatest;
    private String url;

    public String getIsLatest()
    {
        return this.isLatest;
    }

    public String getUrl()
    {
        return this.url;
    }

    public void setIsLatest(String paramString)
    {
        this.isLatest = paramString;
    }

    public void setUrl(String paramString)
    {
        this.url = paramString;
    }
}