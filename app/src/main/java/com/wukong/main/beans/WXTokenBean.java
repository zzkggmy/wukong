package com.wukong.main.beans;

public class WXTokenBean
{
    private String access_token;
    private String expires_in;
    private String openid;
    private String refresh_token;
    private String scope;
    private String unionid;

    public String getAccess_token()
    {
        return this.access_token;
    }

    public String getExpires_in()
    {
        return this.expires_in;
    }

    public String getOpenid()
    {
        return this.openid;
    }

    public String getRefresh_token()
    {
        return this.refresh_token;
    }

    public String getScope()
    {
        return this.scope;
    }

    public String getUnionid()
    {
        return this.unionid;
    }

    public void setAccess_token(String paramString)
    {
        this.access_token = paramString;
    }

    public void setExpires_in(String paramString)
    {
        this.expires_in = paramString;
    }

    public void setOpenid(String paramString)
    {
        this.openid = paramString;
    }

    public void setRefresh_token(String paramString)
    {
        this.refresh_token = paramString;
    }

    public void setScope(String paramString)
    {
        this.scope = paramString;
    }

    public void setUnionid(String paramString)
    {
        this.unionid = paramString;
    }
}