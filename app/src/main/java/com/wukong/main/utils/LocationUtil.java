package com.wukong.main.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.baidu.location.BDLocation;
import com.baidu.location.BDLocationListener;
import com.baidu.location.Poi;
import com.wukong.main.base.WukongApplication;

public class LocationUtil
{
    private final int SDK_PERMISSION_REQUEST = 127;
    private String addrstr;
    private Context context;
    private Handler handler;
    private double latitude;
    private LocationService locationService;
    private double lontitude;
    private BDLocationListener mListener = new BDLocationListener()
    {
        public void onConnectHotSpotMessage(String paramAnonymousString, int paramAnonymousInt)
        {
        }

        public void onReceiveLocation(BDLocation paramAnonymousBDLocation)
        {
            StringBuffer localStringBuffer;
            if ((paramAnonymousBDLocation != null) && (paramAnonymousBDLocation.getLocType() != 167))
            {
                localStringBuffer = new StringBuffer(256);
                localStringBuffer.append("time : ");
                LocationUtil.access$002(LocationUtil.this, paramAnonymousBDLocation.getLongitude());
                LocationUtil.access$102(LocationUtil.this, paramAnonymousBDLocation.getLatitude());
                LocationUtil.access$202(LocationUtil.this, paramAnonymousBDLocation.getAddrStr());
                Message localMessage = new Message();
                localMessage.what = 1;
                LocationUtil.this.handler.sendMessage(localMessage);
                if ((paramAnonymousBDLocation.getPoiList() != null) && (!paramAnonymousBDLocation.getPoiList().isEmpty()))
                    for (int i = 0; i < paramAnonymousBDLocation.getPoiList().size(); i++)
                    {
                        Poi localPoi = (Poi)paramAnonymousBDLocation.getPoiList().get(i);
                        localStringBuffer.append(localPoi.getName() + ";");
                    }
                if (paramAnonymousBDLocation.getLocType() != 61)
                    break label277;
                localStringBuffer.append("\nspeed : ");
                localStringBuffer.append(paramAnonymousBDLocation.getSpeed());
                localStringBuffer.append("\nsatellite : ");
                localStringBuffer.append(paramAnonymousBDLocation.getSatelliteNumber());
                localStringBuffer.append("\nheight : ");
                localStringBuffer.append(paramAnonymousBDLocation.getAltitude());
                localStringBuffer.append("\ngps status : ");
                localStringBuffer.append(paramAnonymousBDLocation.getGpsAccuracyStatus());
                localStringBuffer.append("\ndescribe : ");
                localStringBuffer.append("gps定位成功");
            }
            while (true)
            {
                LOG.i(localStringBuffer.toString());
                return;
                label277: if (paramAnonymousBDLocation.getLocType() == 161)
                {
                    if (paramAnonymousBDLocation.hasAltitude())
                    {
                        localStringBuffer.append("\nheight : ");
                        localStringBuffer.append(paramAnonymousBDLocation.getAltitude());
                    }
                    localStringBuffer.append("\noperationers : ");
                    localStringBuffer.append(paramAnonymousBDLocation.getOperators());
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("网络定位成功");
                }
                else if (paramAnonymousBDLocation.getLocType() == 66)
                {
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("离线定位成功，离线定位结果也是有效的");
                }
                else if (paramAnonymousBDLocation.getLocType() == 167)
                {
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("服务端网络定位失败，可以反馈IMEI号和大体定位时间到loc-bugs@baidu.com，会有人追查原因");
                }
                else if (paramAnonymousBDLocation.getLocType() == 63)
                {
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("网络不同导致定位失败，请检查网络是否通畅");
                }
                else if (paramAnonymousBDLocation.getLocType() == 62)
                {
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("无法获取有效定位依据导致定位失败，一般是由于手机的原因，处于飞行模式下一般会造成这种结果，可以试着重启手机");
                }
            }
        }
    };

    public LocationUtil(Context paramContext, Handler paramHandler)
    {
        this.context = paramContext;
        this.handler = paramHandler;
    }

    public String getAddrstr()
    {
        return this.addrstr;
    }

    public double getLatitude()
    {
        return this.latitude;
    }

    public double getLontitude()
    {
        return this.lontitude;
    }

    public void startLocation()
    {
        this.locationService = ((WukongApplication)this.context.getApplicationContext()).locationService;
        this.locationService.registerListener(this.mListener);
        this.locationService.setLocationOption(this.locationService.getDefaultLocationClientOption());
        this.locationService.start();
    }

    public void stopLocation()
    {
        this.locationService.unregisterListener(this.mListener);
        this.locationService.stop();
    }
}