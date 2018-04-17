package com.wukong.main.base;

import android.app.Application;
import android.content.Context;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import com.baidu.mapapi.SDKInitializer;
import com.wukong.main.utils.LocationService;

public class WukongApplication extends Application
{
    public LocationService locationService;
    public Vibrator mVibrator;

    public void onCreate()
    {
        super.onCreate();
        com.wukong.main.utils.Commons.preferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.locationService = new LocationService(getApplicationContext());
        this.mVibrator = ((Vibrator)getApplicationContext().getSystemService("vibrator"));
        SDKInitializer.initialize(getApplicationContext());
    }
}