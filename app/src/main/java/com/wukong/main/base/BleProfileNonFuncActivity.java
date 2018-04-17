package com.wukong.main.base;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.PowerManager;
import android.provider.Settings;
import android.provider.Settings.System;
import android.util.Log;
import android.view.WindowManager;

import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.services.ble.BleProfileService;
import com.wukong.services.gym.DeviceService;
import com.wukong.services.gym.GymServiceCallbacks;
import com.wukong.services.gym.gymevent.GymFRotationEvent;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymRotationEvent;
import com.wukong.services.gym.gymevent.GymSwayBiEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import com.wukong.services.gym.gymevent.StretchEvent;

import java.util.Calendar;
import java.util.TimeZone;

public abstract class BleProfileNonFuncActivity extends BleProfileBaseActivity<DeviceService.GymBinder>
        implements GymServiceCallbacks
{
    protected static String TAG = "BleProfileNonFuncActivity";

    public void acquireWakeLock()
    {
        @SuppressLint("WrongConstant") PowerManager localPowerManager = (PowerManager)getSystemService("power");
        if (localPowerManager.isScreenOn());
        PowerManager.WakeLock localWakeLock;
        do
        {
            return;
            localWakeLock = localPowerManager.newWakeLock(268435462, "XZWK");
        }
        while (localWakeLock == null);
        setSystemScreenOffTimeout(11000);
        LOG.i(TAG, "get ScreenOffTimeout! " + getSystemScreenOffTimeout());
        setBrightness(0.0F);
        localWakeLock.acquire();
        localWakeLock.release();
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          LOG.i(BleProfileNonFuncActivity.TAG, "set Brightness back! " + Commons.getPreferenceInt(Configs.DefaultScreenBrightness));
                                          BleProfileNonFuncActivity.this.setBrightness(Commons.getPreferenceInt(Configs.DefaultScreenBrightness));
                                          LOG.i(BleProfileNonFuncActivity.TAG, "set ScreenOffTimeout back! " + Commons.getPreferenceInt(Configs.DefaultScreenOffTimeOut));
                                          BleProfileNonFuncActivity.this.setSystemScreenOffTimeout(Commons.getPreferenceInt(Configs.DefaultScreenOffTimeOut));
                                      }
                                  }
                , 50000L);
        LOG.i(TAG, "get powermanager wakelock!");
    }

    protected int getAboutTextId()
    {
        return 0;
    }

    protected int getDefaultDeviceName()
    {
        return 0;
    }

    public String getFirstNChars(double paramDouble, int paramInt)
    {
        String str = String.valueOf(paramDouble);
        if (str.length() <= paramInt)
            return str;
        if (str.substring(0, paramInt).endsWith("."))
            return str.substring(0, paramInt - 1);
        return str.substring(0, paramInt);
    }

    public String getNowTimeDateStr()
    {
        Calendar localCalendar = Calendar.getInstance();
        localCalendar.setTimeInMillis(java.lang.System.currentTimeMillis());
        localCalendar.setTimeZone(TimeZone.getTimeZone("GMT+8:00"));
        int i = localCalendar.get(1);
        int j = 1 + localCalendar.get(2);
        int k = localCalendar.get(5);
        return String.valueOf(i).concat("-").concat(String.valueOf(j)).concat("-").concat(String.valueOf(k));
    }

    public String getNowTimeString()
    {
        Calendar localCalendar = Calendar.getInstance();
        localCalendar.setTimeInMillis(java.lang.System.currentTimeMillis());
        localCalendar.setTimeZone(TimeZone.getTimeZone("GMT+8:00"));
        int i = localCalendar.get(1);
        int j = 1 + localCalendar.get(2);
        int k = localCalendar.get(5);
        int m = localCalendar.get(11);
        int n = localCalendar.get(12);
        int i1 = localCalendar.get(13);
        return String.valueOf(i).concat("-").concat(String.valueOf(j)).concat("-").concat(String.valueOf(k)).concat(" ").concat(String.valueOf(m)).concat(":").concat(String.valueOf(n)).concat(":").concat(String.valueOf(i1));
    }

    public String getNumWithNAfterDot(double paramDouble, int paramInt)
    {
        String str = String.valueOf(paramDouble);
        if (str.length() <= paramInt);
        int i;
        do
        {
            do
                return str;
            while (!str.contains("."));
            i = str.indexOf('.');
            if (paramInt == 0)
                return str.substring(0, i);
        }
        while (i >= str.length() - paramInt);
        return str.substring(0, 1 + (i + paramInt));
    }

    public int getSystemBrightness()
    {
        try
        {
            int i = Settings.System.getInt(getContentResolver(), "screen_brightness");
            return i;
        }
        catch (Settings.SettingNotFoundException localSettingNotFoundException)
        {
            localSettingNotFoundException.printStackTrace();
        }
        return 0;
    }

    public int getSystemScreenOffTimeout()
    {
        try
        {
            int i = Settings.System.getInt(getContentResolver(), "screen_off_timeout");
            return i;
        }
        catch (Settings.SettingNotFoundException localSettingNotFoundException)
        {
            localSettingNotFoundException.printStackTrace();
        }
        return 1000;
    }

    public String getTimeDHMS(long paramLong)
    {
        long l1 = paramLong / 1000L;
        long l2 = l1 % 60L;
        long l3 = l1 / 60L % 60L;
        long l4 = l1 / 3600L;
        return String.valueOf(l1 / 86400L).concat("d ").concat(String.valueOf(l4)).concat(":").concat(String.valueOf(l3)).concat(":").concat(String.valueOf(l2));
    }

    public String getTimeHMS(long paramLong)
    {
        long l1 = paramLong / 1000L;
        long l2 = l1 % 60L;
        long l3 = l1 / 60L % 60L;
        return String.valueOf(l1 / 3600L).concat(":").concat(String.valueOf(l3)).concat(":").concat(String.valueOf(l2));
    }

    protected void onCreateView(Bundle paramBundle)
    {
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onGymDeviceParams(double[] paramArrayOfDouble)
    {
    }

    public void onGymFRotationEvent(GymFRotationEvent paramGymFRotationEvent)
    {
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
    }

    public void onGymReedRealEvent(double[] paramArrayOfDouble)
    {
    }

    public void onGymRotationEvent(GymRotationEvent paramGymRotationEvent)
    {
    }

    public void onGymSwayBiEvent(GymSwayBiEvent paramGymSwayBiEvent)
    {
    }

    public void onGymSwayBiRealEvent(GymSwayBiEvent paramGymSwayBiEvent)
    {
    }

    public void onGymSwaySingleEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
    }

    public void onGymSwaySingleRealEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
    }

    public void onGymWaistEvent(double[] paramArrayOfDouble)
    {
    }

    public void onHeartRate(int[] paramArrayOfInt)
    {
    }

    public void onMegEvent(double[] paramArrayOfDouble)
    {
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.stopProcessingData();
        Log.i(getClass().getSimpleName(), "nonfunc-onServiceBinded()");
    }

    protected void onServiceUnbinded()
    {
    }

    public void onServicesDiscovered(boolean paramBoolean)
    {
    }

    public void onStatisticData(double[] paramArrayOfDouble)
    {
    }

    public void onStretching(StretchEvent paramStretchEvent)
    {
    }

    protected void onViewCreated(Bundle paramBundle)
    {
        super.onViewCreated(paramBundle);
    }

    public void onWeightEvent(double[] paramArrayOfDouble)
    {
    }

    protected void saveTotalDays()
    {
        if (!getNowTimeDateStr().equals(Commons.getPreference(Configs.TodayDate, "")))
        {
            Commons.setPreference(Configs.TodayDate, getNowTimeDateStr());
            float f = 1.0F + Commons.getPreferenceFloat(Configs.TotalDays);
            Commons.setPreference(Configs.TotalDays, f);
        }
    }

    public void setBrightness(float paramFloat)
    {
        WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
        localLayoutParams.screenBrightness = (paramFloat / 255.0F);
        getWindow().setAttributes(localLayoutParams);
    }

    protected void setDefaultUI()
    {
    }

    public void setSystemScreenOffTimeout(int paramInt)
    {
        try
        {
            Settings.System.putInt(getContentResolver(), "screen_off_timeout", paramInt);
            return;
        }
        catch (Exception localException)
        {
            localException.printStackTrace();
        }
    }
}