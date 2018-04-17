package com.wukong.main.utils;

import android.util.Log;

public class LOG
{
    public static String TAG = "TAG";
    public static boolean isDebug = true;
    public static String value = "";

    public static void d(String paramString1, String paramString2)
    {
        if (isDebug)
            Log.d(paramString1, paramString2);
    }

    public static void e(String paramString1, String paramString2)
    {
        if (isDebug)
            Log.e(paramString1, paramString2);
    }

    public static void i(String paramString)
    {
        if (isDebug)
            Log.i(TAG, paramString + value);
    }

    public static void i(String paramString1, String paramString2)
    {
        if (isDebug)
            Log.i(paramString1, paramString2 + value);
    }

    public static void setTAG(String paramString)
    {
        TAG = paramString;
    }
}