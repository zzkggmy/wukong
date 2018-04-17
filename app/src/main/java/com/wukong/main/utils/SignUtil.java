package com.wukong.main.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

public class SignUtil
{
    private static final String APP_SECRET = "jianxingzhe2017";

    public static String sign(Object[] paramArrayOfObject)
    {
        StringBuffer localStringBuffer = new StringBuffer();
        if (paramArrayOfObject != null)
        {
            int i = paramArrayOfObject.length;
            int j = 0;
            if (j < i)
            {
                Object localObject = paramArrayOfObject[j];
                if (localObject == null);
                while (true)
                {
                    j++;
                    break;
                    if (localStringBuffer.length() > 0)
                        localStringBuffer.append(",");
                    localStringBuffer.append(localObject.toString());
                }
            }
            return new Md5Hash("," + "jianxingzhe2017").toHex();
        }
        return "";
    }

    public static void verifyQuestTime(Long paramLong)
    {
        if (System.currentTimeMillis() - paramLong.longValue() > 60000L);
    }

    public static void verifySign(String paramString, Object[] paramArrayOfObject)
    {
        String str = sign(paramArrayOfObject);
        LOG.i("signed=" + str);
        LOG.i("  sign=" + paramString);
        if (!str.equals(paramString))
        {
            LOG.i("签名错误");
            return;
        }
        LOG.i("签名OK");
    }
}