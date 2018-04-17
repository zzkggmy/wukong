package com.wukong.main.fragments;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.ParcelUuid;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.alibaba.fastjson.JSONObject;
import com.baidu.mapapi.model.LatLng;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.barfootpath.HeartRate;
import com.wukong.main.barmine.SettingAct;
import com.wukong.main.base.BaseFragment;
import com.wukong.main.beans.JsonData;
import com.wukong.main.beans.MineBean;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.LocationUtil;
import com.wukong.main.utils.TodayDataUtil;
import com.wukong.main.utils.TodayDataUtil.FootPath;
import com.wukong.main.utils.UrlConfig;
import com.wukong.main.widgets.MineTextView;
import com.wukong.services.gym.BaseManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter.Builder;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;
import no.nordicsemi.android.support.v18.scanner.ScanSettings.Builder;

public class MineFragment extends BaseFragment
{
    private String bleAddr;
    private MineTextView calorie;
    private MineTextView circles;
    private MineTextView days;
    private MineTextView groups;
    private Handler handler = new Handler()
    {
        public void handleMessage(Message paramAnonymousMessage)
        {
            super.handleMessage(paramAnonymousMessage);
            switch (paramAnonymousMessage.what)
            {
                default:
                    return;
                case 0:
                    MineFragment.this.locationUtil = new LocationUtil(MineFragment.this.getActivity(), MineFragment.this.handler);
                    MineFragment.this.locationUtil.startLocation();
                    return;
                case 1:
                    LOG.i(MineFragment.this.locationUtil.getAddrstr());
                    MineFragment.this.locationUtil.stopLocation();
                    LOG.i(String.valueOf(MineFragment.this.locationUtil.getLontitude()) + "-----" + String.valueOf(MineFragment.this.locationUtil.getLatitude()));
                    MineFragment.this.getNearestNormalItem(String.valueOf(MineFragment.this.locationUtil.getLontitude()), String.valueOf(MineFragment.this.locationUtil.getLatitude()));
                    return;
                case 2:
            }
            MineFragment.this.StartScan();
        }
    };
    private MineTextView kms;
    private LatLng lastPoint;
    LocationUtil locationUtil;
    private boolean mIsScanning;
    private ScanCallback mScanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };
    private MineTextView minute;
    private TextView nblleft;
    private TextView nblleft1;
    private TextView nblright;
    private TextView nbltitle;
    private LatLng nowPoint;
    private TextView todaydata;
    private View view;

    private void StartScan()
    {
        if (this.mIsScanning)
            return;
        checkBLE();
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(2).setReportDelay(1200L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        ParcelUuid localParcelUuid = ParcelUuid.fromString(BaseManager.XZWK_SMART_PATH_UUID.toString());
        localArrayList.add(new ScanFilter.Builder().setServiceUuid(localParcelUuid).build());
        localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.mScanCallback);
        this.mIsScanning = true;
    }

    private void StopScan()
    {
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.mScanCallback);
            this.mIsScanning = false;
        }
    }

    private void getBleAddress(List<ScanResult> paramList)
    {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
            BluetoothDevice localBluetoothDevice = ((ScanResult)localIterator.next()).getDevice();
            if ((localBluetoothDevice != null) && (localBluetoothDevice.getName().startsWith("YAXLpth")))
            {
                this.bleAddr = localBluetoothDevice.getAddress();
                StopScan();
            }
        }
    }

    private void getNearestNormalItem(String paramString1, String paramString2)
    {
        String str = Commons.getPreference(Configs.token);
        LOG.i("token = " + str);
        LOG.i("lng = " + paramString1);
        LOG.i("lat = " + paramString2);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("token", str);
        localRequestParams.addQueryStringParameter("lng", paramString1);
        localRequestParams.addQueryStringParameter("lat", paramString2);
        if (Commons.strIsNull(this.bleAddr))
            localRequestParams.addQueryStringParameter("btAddrs", this.bleAddr);
        localRequestParams.addQueryStringParameter("radius", "100");
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.getNearsItem, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                if (localJsonData.getCode().equals(Configs.isSuccess))
                    ((MineBean)JSONObject.parseObject(localJsonData.getData(), MineBean.class));
            }
        });
    }

    private void initViews()
    {
        this.nblleft = ((TextView)this.view.findViewById(2131558659));
        this.nblleft1 = ((TextView)this.view.findViewById(2131558660));
        this.nbltitle = ((TextView)this.view.findViewById(2131558661));
        this.nblright = ((TextView)this.view.findViewById(2131558662));
        this.todaydata = ((TextView)this.view.findViewById(2131558629));
        this.days = ((MineTextView)this.view.findViewById(2131558623));
        this.calorie = ((MineTextView)this.view.findViewById(2131558624));
        this.minute = ((MineTextView)this.view.findViewById(2131558625));
        this.groups = ((MineTextView)this.view.findViewById(2131558626));
        this.kms = ((MineTextView)this.view.findViewById(2131558627));
        this.circles = ((MineTextView)this.view.findViewById(2131558628));
        Drawable localDrawable = getResources().getDrawable(2130903233);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        this.nblleft.setCompoundDrawables(localDrawable, null, null, null);
        this.nblleft.setText(getString(2131165381));
        this.nblleft.setVisibility(8);
        this.nblleft1.setBackgroundResource(2130903087);
        this.nbltitle.setText(getString(2131165285));
        this.nblright.setBackgroundResource(2130903189);
        if ((0x2 & Commons.getPreferenceLong(Configs.FunctionSet)) != 0L)
            this.nbltitle.setText(getString(2131165352));
        this.nblleft1.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(MineFragment.this.getActivity(), HeartRate.class);
                MineFragment.this.startActivity(localIntent);
            }
        });
        this.nblright.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(MineFragment.this.getActivity(), SettingAct.class);
                MineFragment.this.startActivityForResult(localIntent, 1);
            }
        });
        if (Commons.isConnectNet(getActivity()))
        {
            getMyInfo();
            this.handler.sendEmptyMessage(0);
        }
        while (true)
        {
            this.handler.sendEmptyMessage(2);
            updateUIData();
            return;
            double d1 = Commons.getPreferences(Configs.latitude);
            double d2 = Commons.getPreferences(Configs.longitude);
            LOG.i("beforeLat = " + d1 + "  beforeLon" + d2);
            this.lastPoint = new LatLng(d1, d2);
        }
    }

    private void updateUIData()
    {
        this.days.setText(getNumWithNAfterDot(Commons.getPreferenceFloat(Configs.TotalDays), 0));
        this.calorie.setText(getNumWithNAfterDot(Commons.getPreferenceFloat(Configs.TotalCal), 0));
        this.kms.setText(getNumWithNAfterDot(Commons.getPreferenceFloat(Configs.TotalMeter) / 1000.0F, 1));
        this.circles.setText(getNumWithNAfterDot(Commons.getPreferenceFloat(Configs.TotalCircle), 0));
    }

    public void getMyInfo()
    {
        String str = Commons.getPreference(Configs.token);
        LOG.i("token = " + str);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("token", str);
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.GET_MYDATA, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                if (localJsonData.getCode().equals(Configs.isSuccess))
                    ((MineBean)JSONObject.parseObject(localJsonData.getData(), MineBean.class));
            }
        });
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
        this.view = paramLayoutInflater.inflate(2130968640, paramViewGroup, false);
        initViews();
        checkBLE();
        return this.view;
    }

    public void onHiddenChanged(boolean paramBoolean)
    {
        super.onHiddenChanged(paramBoolean);
        updateUIData();
    }

    public void updateToday()
    {
        String str1 = "";
        TodayDataUtil.FootPath localFootPath = TodayDataUtil.getPathDate();
        if (localFootPath != null)
            str1 = localFootPath.getName() + "：" + localFootPath.getRotateCount() + "圈   " + localFootPath.getDistance() + "米    " + localFootPath.getTime() + "\n";
        String str2 = TodayDataUtil.getHeartData();
        if (Commons.strIsNull(str2))
            str1 = str1 + str2;
        this.todaydata.setText(str1);
    }
}