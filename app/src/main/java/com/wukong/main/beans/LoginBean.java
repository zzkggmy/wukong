package com.wukong.main.beans;

public class LoginBean
{
    private String expire;
    private String token;
    private String user;

    public String getExpire()
    {
        return this.expire;
    }

    public String getToken()
    {
        return this.token;
    }

    public String getUser()
    {
        return this.user;
    }

    public void setExpire(String paramString)
    {
        this.expire = paramString;
    }

    public void setToken(String paramString)
    {
        this.token = paramString;
    }

    public void setUser(String paramString)
    {
        this.user = paramString;
    }
}