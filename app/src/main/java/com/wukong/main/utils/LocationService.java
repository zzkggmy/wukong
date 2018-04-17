package com.wukong.main.utils;

import android.content.Context;
import com.baidu.location.BDLocationListener;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;
import com.baidu.location.LocationClientOption.LocationMode;

public class LocationService
{
    private LocationClientOption DIYoption;
    private LocationClient client = null;
    private LocationClientOption mOption;
    private Object objLock = new Object();

    public LocationService(Context paramContext)
    {
        synchronized (this.objLock)
        {
            if (this.client == null)
            {
                this.client = new LocationClient(paramContext);
                this.client.setLocOption(getDefaultLocationClientOption());
            }
            return;
        }
    }

    public LocationClientOption getDefaultLocationClientOption()
    {
        if (this.mOption == null)
        {
            this.mOption = new LocationClientOption();
            this.mOption.setLocationMode(LocationClientOption.LocationMode.Hight_Accuracy);
            this.mOption.setCoorType("bd09ll");
            this.mOption.setScanSpan(3000);
            this.mOption.setIsNeedAddress(true);
            this.mOption.setIsNeedLocationDescribe(true);
            this.mOption.setNeedDeviceDirect(false);
            this.mOption.setLocationNotify(false);
            this.mOption.setIgnoreKillProcess(true);
            this.mOption.setIsNeedLocationDescribe(true);
            this.mOption.setIsNeedLocationPoiList(true);
            this.mOption.SetIgnoreCacheException(false);
            this.mOption.setIsNeedAltitude(false);
        }
        return this.mOption;
    }

    public LocationClientOption getOption()
    {
        return this.DIYoption;
    }

    public boolean registerListener(BDLocationListener paramBDLocationListener)
    {
        boolean bool = false;
        if (paramBDLocationListener != null)
        {
            this.client.registerLocationListener(paramBDLocationListener);
            bool = true;
        }
        return bool;
    }

    public boolean requestHotSpotState()
    {
        return this.client.requestHotSpotState();
    }

    public boolean setLocationOption(LocationClientOption paramLocationClientOption)
    {
        if (paramLocationClientOption != null)
        {
            if (this.client.isStarted())
                this.client.stop();
            this.DIYoption = paramLocationClientOption;
            this.client.setLocOption(paramLocationClientOption);
        }
        return false;
    }

    public void start()
    {
        synchronized (this.objLock)
        {
            if ((this.client != null) && (!this.client.isStarted()))
                this.client.start();
            return;
        }
    }

    public void stop()
    {
        synchronized (this.objLock)
        {
            if ((this.client != null) && (this.client.isStarted()))
                this.client.stop();
            return;
        }
    }

    public void unregisterListener(BDLocationListener paramBDLocationListener)
    {
        if (paramBDLocationListener != null)
            this.client.unRegisterLocationListener(paramBDLocationListener);
    }
}