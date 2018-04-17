package com.wukong.main.beans;

public class ThirdLoginBeans
{
    private String accessToken;
    private String headImgUrl;
    private String loginType;
    private String nickname;
    private String token;
    private String uid;

    public String getAccessToken()
    {
        return this.accessToken;
    }

    public String getHeadImgUrl()
    {
        return this.headImgUrl;
    }

    public String getLoginType()
    {
        return this.loginType;
    }

    public String getNickname()
    {
        return this.nickname;
    }

    public String getToken()
    {
        return this.token;
    }

    public String getUid()
    {
        return this.uid;
    }

    public void setAccessToken(String paramString)
    {
        this.accessToken = paramString;
    }

    public void setHeadImgUrl(String paramString)
    {
        this.headImgUrl = paramString;
    }

    public void setLoginType(String paramString)
    {
        this.loginType = paramString;
    }

    public void setNickname(String paramString)
    {
        this.nickname = paramString;
    }

    public void setToken(String paramString)
    {
        this.token = paramString;
    }

    public void setUid(String paramString)
    {
        this.uid = paramString;
    }
}