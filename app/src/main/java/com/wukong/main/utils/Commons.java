package com.wukong.main.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.StrictMode;
import android.telephony.TelephonyManager;
import android.widget.EditText;
import android.widget.Toast;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import org.apache.shiro.crypto.hash.Md5Hash;

public class Commons
{
    public static SharedPreferences preferences;

    public static void VersionException()
    {
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectDiskReads().detectDiskWrites().detectNetwork().penaltyLog().build());
        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectLeakedSqlLiteObjects().penaltyLog().penaltyDeath().build());
    }

    public static boolean editIsNull(EditText paramEditText)
    {
        return strIsNull(paramEditText.getText().toString());
    }

    public static String[] getDaysOfMonth(String paramString, int paramInt, String[] paramArrayOfString)
    {
        int i = 0;
        switch (paramInt)
        {
            default:
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
            case 4:
            case 6:
            case 9:
            case 11:
            case 2:
        }
        String[] arrayOfString;
        while (true)
        {
            arrayOfString = new String[i];
            for (int j = 0; j < arrayOfString.length; j++)
                arrayOfString[j] = paramArrayOfString[j];
            i = 31;
            continue;
            i = 30;
            continue;
            if (isLeapYear(paramString))
                i = 29;
            else
                i = 28;
        }
        return arrayOfString;
    }

    public static String getEditInfo(EditText paramEditText)
    {
        String str = paramEditText.getText().toString();
        if (!strIsNull(str))
            str = "";
        return str;
    }

    public static String getIMEI(Context paramContext)
    {
        return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    }

    public static String getPreference(String paramString)
    {
        if (preferences != null)
            return preferences.getString(paramString, "");
        return null;
    }

    public static String getPreference(String paramString1, String paramString2)
    {
        if (preferences != null)
            return preferences.getString(paramString1, paramString2);
        return null;
    }

    public static boolean getPreferenceBoolean(String paramString)
    {
        SharedPreferences localSharedPreferences = preferences;
        boolean bool = false;
        if (localSharedPreferences != null)
            bool = preferences.getBoolean(paramString, false);
        return bool;
    }

    public static float getPreferenceFloat(String paramString)
    {
        SharedPreferences localSharedPreferences = preferences;
        float f = 0.0F;
        if (localSharedPreferences != null)
            f = preferences.getFloat(paramString, 0.0F);
        return f;
    }

    public static int getPreferenceInt(String paramString)
    {
        SharedPreferences localSharedPreferences = preferences;
        int i = 0;
        if (localSharedPreferences != null)
            i = preferences.getInt(paramString, 0);
        return i;
    }

    public static long getPreferenceLong(String paramString)
    {
        long l = 0L;
        if (preferences != null)
            l = preferences.getLong(paramString, l);
        return l;
    }

    public static double getPreferences(String paramString)
    {
        if (preferences != null)
            return preferences.getFloat(paramString, 0.0F);
        return 0.0D;
    }

    public static String getSign(String[] paramArrayOfString)
    {
        String str1 = "";
        int i = paramArrayOfString.length;
        for (int j = 0; j < i; j++)
        {
            String str5 = paramArrayOfString[j];
            str1 = str1 + str5 + ",";
        }
        String str2 = str1 + UrlConfig.App_Secret;
        LOG.i(str2);
        while (true)
        {
            StringBuffer localStringBuffer;
            int k;
            try
            {
                byte[] arrayOfByte = MessageDigest.getInstance("MD5").digest(str2.getBytes());
                localStringBuffer = new StringBuffer();
                k = 0;
                if (k < arrayOfByte.length)
                {
                    String str4 = Integer.toHexString(0xFF & arrayOfByte[k]);
                    if (str4.length() == 1)
                        localStringBuffer.append("0" + str4);
                    else
                        localStringBuffer.append(str4);
                }
            }
            catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
            {
                localNoSuchAlgorithmException.printStackTrace();
                throw new RuntimeException("buhuifasheng");
            }
            String str3 = localStringBuffer.toString();
            return str3;
            k++;
        }
    }

    public static String getTime()
    {
        return String.valueOf(System.currentTimeMillis());
    }

    public static String getVersion(Context paramContext)
    {
        try
        {
            String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
            return str;
        }
        catch (Exception localException)
        {
            localException.printStackTrace();
        }
        return "";
    }

    public static boolean isConnectNet(Context paramContext)
    {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
            return localNetworkInfo.isAvailable();
        Toast.makeText(paramContext, paramContext.getResources().getString(2131165309), 0).show();
        return false;
    }

    public static boolean isLeapYear(String paramString)
    {
        int i = 1;
        Date localDate = strToDate(paramString);
        GregorianCalendar localGregorianCalendar = (GregorianCalendar)Calendar.getInstance();
        if ((localGregorianCalendar == null) || (localDate == null))
            i = 0;
        int j;
        do
        {
            do
            {
                return i;
                localGregorianCalendar.setTime(localDate);
                j = localGregorianCalendar.get(i);
            }
            while (j % 400 == 0);
            if (j % 4 != 0)
                break;
        }
        while (j % 100 != 0);
        return false;
        return false;
    }

    public static boolean isQQClientAvailable(Context paramContext)
    {
        List localList = paramContext.getPackageManager().getInstalledPackages(0);
        if (localList != null)
            for (int i = 0; i < localList.size(); i++)
            {
                String str = ((PackageInfo)localList.get(i)).packageName;
                if ((str.equalsIgnoreCase("com.tencent.qqlite")) || (str.equalsIgnoreCase("com.tencent.mobileqq")))
                    return true;
            }
        return false;
    }

    public static boolean isSinaAvailable(Context paramContext)
    {
        List localList = paramContext.getPackageManager().getInstalledPackages(0);
        if (localList != null)
            for (int i = 0; i < localList.size(); i++)
                if (((PackageInfo)localList.get(i)).packageName.equals("com.sina.weibo"))
                    return true;
        return false;
    }

    public static boolean isWeixinAvilible(Context paramContext)
    {
        List localList = paramContext.getPackageManager().getInstalledPackages(0);
        if (localList != null)
            for (int i = 0; i < localList.size(); i++)
                if (((PackageInfo)localList.get(i)).packageName.equals("com.tencent.mm"))
                    return true;
        return false;
    }

    public static void setPreference(String paramString, float paramFloat)
    {
        preferences.edit().putFloat(paramString, paramFloat).apply();
    }

    public static void setPreference(String paramString, int paramInt)
    {
        preferences.edit().putInt(paramString, paramInt).apply();
    }

    public static void setPreference(String paramString, long paramLong)
    {
        preferences.edit().putLong(paramString, paramLong).apply();
    }

    public static void setPreference(String paramString1, String paramString2)
    {
        if ((!strIsNull(paramString2)) || (paramString2.equals("null")))
            paramString2 = "";
        preferences.edit().putString(paramString1, paramString2).apply();
    }

    public static void setPreference(String paramString, boolean paramBoolean)
    {
        preferences.edit().putBoolean(paramString, paramBoolean).apply();
    }

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
            LOG.i(localStringBuffer.toString());
            return new Md5Hash("," + UrlConfig.App_Secret).toHex();
        }
        return "";
    }

    public static String stampToDate()
    {
        long l = System.currentTimeMillis();
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(l));
    }

    public static boolean strIsNull(String paramString)
    {
        return (paramString != null) && (paramString.length() > 0);
    }

    public static Date strToDate(String paramString)
    {
        return new SimpleDateFormat("yyyy-MM-dd").parse(paramString, new ParsePosition(0));
    }

    public static boolean valueNull(String paramString)
    {
        return (strIsNull(paramString)) && (!paramString.equals("null"));
    }
}