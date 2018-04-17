package com.wukong.main.login.configs;

import android.content.Context;
import android.content.SharedPreferences;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;

public class AccessTokenKeeper
{
    private static final String KEY_ACCESS_TOKEN = "access_token";
    private static final String KEY_EXPIRES_IN = "expires_in";
    private static final String KEY_REFRESH_TOKEN = "refresh_token";
    private static final String KEY_UID = "uid";
    private static final String PREFERENCES_NAME = "com_weibo_sdk_android";

    public static void clear(Context paramContext)
    {
        if (paramContext == null)
            return;
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("com_weibo_sdk_android", 32768).edit();
        localEditor.clear();
        localEditor.commit();
    }

    public static Oauth2AccessToken readAccessToken(Context paramContext)
    {
        if (paramContext == null)
            return null;
        Oauth2AccessToken localOauth2AccessToken = new Oauth2AccessToken();
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("com_weibo_sdk_android", 32768);
        localOauth2AccessToken.setUid(localSharedPreferences.getString("uid", ""));
        localOauth2AccessToken.setToken(localSharedPreferences.getString("access_token", ""));
        localOauth2AccessToken.setRefreshToken(localSharedPreferences.getString("refresh_token", ""));
        localOauth2AccessToken.setExpiresTime(localSharedPreferences.getLong("expires_in", 0L));
        return localOauth2AccessToken;
    }

    public static void writeAccessToken(Context paramContext, Oauth2AccessToken paramOauth2AccessToken)
    {
        if ((paramContext == null) || (paramOauth2AccessToken == null))
            return;
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("com_weibo_sdk_android", 32768).edit();
        localEditor.putString("uid", paramOauth2AccessToken.getUid());
        localEditor.putString("access_token", paramOauth2AccessToken.getToken());
        localEditor.putString("refresh_token", paramOauth2AccessToken.getRefreshToken());
        localEditor.putLong("expires_in", paramOauth2AccessToken.getExpiresTime());
        localEditor.commit();
    }
}