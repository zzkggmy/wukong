package com.wukong.main.login.configs;

import android.content.Context;
import android.util.SparseArray;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;

public class UsersAPI extends AbsOpenAPI
{
    private static final String API_BASE_URL = "https://api.weibo.com/2/users";
    private static final int READ_USER = 0;
    private static final int READ_USER_BY_DOMAIN = 1;
    private static final int READ_USER_COUNT = 2;
    private static final SparseArray<String> sAPIList = new SparseArray();

    static
    {
        sAPIList.put(0, "https://api.weibo.com/2/users/show.json");
        sAPIList.put(1, "https://api.weibo.com/2/users/domain_show.json");
        sAPIList.put(2, "https://api.weibo.com/2/users/counts.json");
    }

    public UsersAPI(Context paramContext, String paramString, Oauth2AccessToken paramOauth2AccessToken)
    {
        super(paramContext, paramString, paramOauth2AccessToken);
    }

    private WeiboParameters buildCountsParams(long[] paramArrayOfLong)
    {
        WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
        StringBuilder localStringBuilder = new StringBuilder();
        int i = paramArrayOfLong.length;
        for (int j = 0; j < i; j++)
            localStringBuilder.append(paramArrayOfLong[j]).append(",");
        localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
        localWeiboParameters.put("uids", localStringBuilder.toString());
        return localWeiboParameters;
    }

    public void counts(long[] paramArrayOfLong, RequestListener paramRequestListener)
    {
        WeiboParameters localWeiboParameters = buildCountsParams(paramArrayOfLong);
        requestAsync((String)sAPIList.get(2), localWeiboParameters, "GET", paramRequestListener);
    }

    public String countsSync(long[] paramArrayOfLong)
    {
        WeiboParameters localWeiboParameters = buildCountsParams(paramArrayOfLong);
        return requestSync((String)sAPIList.get(2), localWeiboParameters, "GET");
    }

    public void domainShow(String paramString, RequestListener paramRequestListener)
    {
        WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
        localWeiboParameters.put("domain", paramString);
        requestAsync((String)sAPIList.get(1), localWeiboParameters, "GET", paramRequestListener);
    }

    public String domainShowSync(String paramString)
    {
        WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
        localWeiboParameters.put("domain", paramString);
        return requestSync((String)sAPIList.get(1), localWeiboParameters, "GET");
    }

    public void show(long paramLong, RequestListener paramRequestListener)
    {
        WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
        localWeiboParameters.put("uid", paramLong);
        requestAsync((String)sAPIList.get(0), localWeiboParameters, "GET", paramRequestListener);
    }

    public void show(String paramString, RequestListener paramRequestListener)
    {
        WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
        localWeiboParameters.put("screen_name", paramString);
        requestAsync((String)sAPIList.get(0), localWeiboParameters, "GET", paramRequestListener);
    }

    public String showSync(long paramLong)
    {
        WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
        localWeiboParameters.put("uid", paramLong);
        return requestSync((String)sAPIList.get(0), localWeiboParameters, "GET");
    }

    public String showSync(String paramString)
    {
        WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
        localWeiboParameters.put("screen_name", paramString);
        return requestSync((String)sAPIList.get(0), localWeiboParameters, "GET");
    }
}