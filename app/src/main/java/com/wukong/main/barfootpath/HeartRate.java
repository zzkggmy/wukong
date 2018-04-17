package com.wukong.main.barfootpath;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.ParcelUuid;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alibaba.fastjson.JSONObject;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.R;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.beans.JsonData;
import com.wukong.main.beans.OutdoorHeartRateP;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.main.utils.TodayDataUtil;
import com.wukong.main.utils.UrlConfig;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.BaseManager;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter.Builder;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;
import no.nordicsemi.android.support.v18.scanner.ScanSettings.Builder;

public class HeartRate extends BleProfileIdFuncActivity {
    private static final String AUTO_CONNECT = "自动连接智能心率设备";
    private static final String BLANK = "  ";
    private static final String COMMA = ",";
    private static final String CONNECTED = "智能心率设备已连接！";
    private static final String CONNECTING = "正在连接智能心率设备";
    private static final String CONN_ISSUE_RETRY = "连接出现问题，请重试！";
    private static final int COUNT_DOWN_MAX = 30;
    private static final String DEVICE_DISCONN = "智能心率设备已断开！";
    private static final String FINISH_IN_5_SEC = "本次测量将在5秒钟后结束";
    private static final String HANDS_ON_CONTACT = "双手已触碰采集点";
    private static final int HEART_RATE_MAX = 130;
    private static final int HEART_RATE_MIN = 40;
    private static final String IDENTIFIED_CONNECT = "已识别心率传感器！";
    private static final String NEED_20_SEC = "采集时间需要大约20秒";
    private static Timer PHONE_TIMER;
    private static final String PLACE_PHONE_ON_PLATFORM = "请将手机置于云台";
    private static final String PLS_HANDS_ON_CONTACT = "请将双手触碰采集点";
    private static final int PMLP_BAR = 33;
    private static final String SECOND = "秒";
    private static final String START_TESTING = "测量开始！";
    private static final String TAG = "HeartRateUI";
    private static final String TIME_OUT = "操作超时！";
    private static final String TOUCH_AFTER_CONNECT = "请在设备连接后再触碰采集点";
    private static final int TOUCH_MAX = 20;
    private long init_ms;
    private TextView leftbtn;
    private boolean mActive = false;
    private List<String> mAvailableOTPBList;
    private int mConnectCountDown = 60;
    private int mConnectingCnt = 0;
    private boolean mDeviceNotFoundShown = false;
    private ScanCallback mHRScanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
            HeartRate.this.updateResult(paramAnonymousList);
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };
    private int mHeartRate;
    private HashMap<String, OutdoorHeartRateP> mIdSensorMap = new HashMap();
    private boolean mIsConnected;
    private boolean mIsConnecting = true;
    private boolean mIsScanning;
    private boolean mIsStable = false;
    private long mLastUpdateTimeStamp;
    private LinearLayout mLoHeartRateBg;
    private String mNearestIdAddress;
    private int mPAType;
    private double mPMRevXYZAvedevLP = 10000.0D;
    private int mRandomRep;
    private int mRandomStartReq;
    private int mSeq;
    private String mTempDeviceName = "";
    private Timer mTimer;
    private int mTotalHeartRate;
    private int mTouchedCountDown = 20;
    private TextView mTvHeartRate;
    private TextView mTvHeartRateTips;
    private int mUnTouchedCountDown = 30;
    private int mValidHRCnt;
    private int mValidHRMax = -1;
    private int mValidHRMin = 500;
    private int mValidInterval = 5000;
    private RelativeLayout nbllayout;
    private TextView nblleft;
    private TextView nbltitle;
    private TextView title;

    private void balanceHR(int paramInt)
    {
        int i = this.mRandomRep;
        this.mRandomRep = (i - 1);
        if ((i == 0) && ((paramInt < 40) || (paramInt > 130)))
            if (this.mHeartRate != 0)
                break label70;
        label70: for (this.mHeartRate = (75 + (int)(30.0D * Math.random() - 15.0D)); ; this.mHeartRate += (int)(8.0D * Math.random() - 4.0D))
        {
            this.mRandomRep = ((int)(1.0D + 3.0D * Math.random()));
            return;
        }
    }

    private void calHeartBeatDeviceLP()
    {
        double d = -132.0D;
        Iterator localIterator = this.mIdSensorMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
            OutdoorHeartRateP localOutdoorHeartRateP = (OutdoorHeartRateP)((Map.Entry)localIterator.next()).getValue();
            localOutdoorHeartRateP.setUpdated(false);
            if ((System.currentTimeMillis() - localOutdoorHeartRateP.getIdSensorLatestTimeStamp() < this.mValidInterval) && (localOutdoorHeartRateP.isHeartRateSensorActivated()) && (localOutdoorHeartRateP.getIdSensorRssi() > d))
            {
                d = localOutdoorHeartRateP.getIdSensorRssi();
                this.mNearestIdAddress = localOutdoorHeartRateP.getIdSensorAddress();
            }
        }
        Log.i("HeartRateUI", "YAXLhlthbt NearestHeartRateDeviceAddr: " + this.mNearestIdAddress);
    }

    private void initOTPBList()
    {
        this.mAvailableOTPBList = Arrays.asList(new String[] { "9B:B7:0A:80:21:82", "9B:B7:0A:80:22:83", "9B:B7:0A:80:22:06", "9B:B7:0A:80:22:92", "9B:B7:0A:80:22:30", "9B:B7:0A:80:22:43", "9B:B7:0A:80:22:56", "9B:B7:0A:80:22:65", "9B:B7:0A:80:21:94", "9B:B7:0A:80:B2:E5", "9B:B7:0A:80:75:16", "9B:B7:0A:80:23:00", "9B:B7:0A:80:22:95", "9B:B7:0A:80:21:97", "9B:B7:0A:80:22:69", "9B:B7:0A:80:22:31", "9B:B7:0A:80:22:59", "9B:B7:0A:80:22:86", "9B:B7:0A:80:22:82", "9B:B7:0A:80:22:80", "9B:B7:0A:80:22:97", "9B:B7:0A:80:22:68", "9B:B7:0A:80:21:47", "9B:B7:0A:80:22:33", "9B:B7:0A:80:22:37", "9B:B7:0A:80:22:13", "9B:B7:0A:80:22:41", "9B:B7:0A:80:21:44", "9B:B7:0A:80:22:98", "9B:B7:0A:80:21:90", "9B:B7:0A:80:21:55", "9B:B7:0A:80:21:81", "9B:B7:0A:80:21:95", "9B:B7:0A:80:21:58", "9B:B7:0A:80:22:57", "9B:B7:0A:80:22:63", "9B:B7:0A:80:22:70", "9B:B7:0A:80:21:66", "9B:B7:0A:80:22:36", "9B:B7:0A:80:22:26", "9B:B7:0A:80:22:84", "9B:B7:0A:80:22:23", "9B:B7:0A:80:22:17", "9B:B7:0A:80:21:73", "9B:B7:0A:80:21:62", "9B:B7:0A:80:21:79", "9B:B7:0A:80:22:00", "9B:B7:0A:80:22:01", "9B:B7:0A:80:21:87", "9B:B7:0A:80:21:51", "9B:B7:0A:80:22:60", "9B:B7:0A:80:22:77", "9B:B7:0A:80:22:12", "9B:B7:0A:80:22:91", "9B:B7:0A:80:22:54", "9B:B7:0A:80:22:99", "9B:B7:0A:80:22:71", "9B:B7:0A:80:22:02", "9B:B7:0A:80:22:73", "9B:B7:0A:80:22:14", "9B:B7:0A:80:21:68", "9B:B7:0A:80:22:58", "9B:B7:0A:80:21:33", "9B:B7:0A:80:21:93", "9B:B7:0A:80:22:93", "9B:B7:0A:80:22:35", "9B:B7:0A:80:21:99", "9B:B7:0A:80:22:66", "9B:B7:0A:80:22:76", "9B:B7:0A:80:21:45", "9B:B7:0A:80:22:75", "9B:B7:0A:80:22:18", "9B:B7:0A:80:22:19", "9B:B7:0A:80:21:89", "9B:B7:0A:80:22:42", "9B:B7:0A:80:22:88", "9B:B7:0A:80:21:67", "9B:B7:0A:80:21:52", "9B:B7:0A:80:21:34", "9B:B7:0A:80:21:76", "9B:B7:0A:80:21:54", "9B:B7:0A:80:21:72", "9B:B7:0A:80:22:96", "9B:B7:0A:80:21:75", "9B:B7:0A:80:22:21", "9B:B7:0A:80:22:32", "9B:B7:0A:80:22:94", "9B:B7:0A:80:21:65", "9B:B7:0A:80:21:59", "9B:B7:0A:80:21:37", "9B:B7:0A:80:21:80", "9B:B7:0A:80:22:67", "9B:B7:0A:80:21:84", "9B:B7:0A:80:22:40", "9B:B7:0A:80:22:29", "9B:B7:0A:80:21:56", "9B:B7:0A:80:21:85", "9B:B7:0A:80:21:38", "9B:B7:0A:80:22:45", "9B:B7:0A:80:22:79", "9B:B7:0A:80:22:89", "9B:B7:0A:80:22:50", "9B:B7:0A:80:22:39", "9B:B7:0A:80:21:43", "9B:B7:0A:80:22:81", "9B:B7:0A:80:22:67", "9B:B7:0A:80:21:54", "9B:B7:0A:80:21:84", "9B:B7:0A:80:21:85", "9B:B7:0A:80:22:46", "9B:B7:0A:80:21:48", "9B:B7:0A:80:22:64", "9B:B7:0A:80:22:78", "9B:B7:0A:80:22:87", "9B:B7:0A:80:21:61", "9B:B7:0A:80:22:44", "9B:B7:0A:80:22:51", "9B:B7:0A:80:21:42", "9B:B7:0A:80:21:98", "9B:B7:0A:80:22:38", "9B:B7:0A:80:21:36", "9B:B7:0A:80:22:55", "9B:B7:0A:80:22:47", "9B:B7:0A:80:22:61", "9B:B7:0A:80:21:74", "9B:B7:0A:80:21:40", "9B:B7:0A:80:22:72", "9B:B7:0A:80:21:78", "9B:B7:0A:80:21:49", "9B:B7:0A:80:21:32", "9B:B7:0A:80:22:49", "9B:B7:0A:80:22:10", "9B:B7:0A:80:21:71", "9B:B7:0A:80:22:03", "9B:B7:0A:80:21:60", "9B:B7:0A:80:22:08", "9B:B7:0A:80:21:60", "9B:B7:0A:80:21:53", "9B:B7:0A:80:21:64", "9B:B7:0A:80:22:11", "9B:B7:0A:80:22:74", "9B:B7:0A:80:21:46", "9B:B7:0A:80:22:48", "9B:B7:0A:80:21:41", "9B:B7:0A:80:21:30", "9B:B7:0A:80:21:63", "9B:B7:0A:80:21:31", "9B:B7:0A:80:22:90", "9B:B7:0A:80:21:96", "9B:B7:0A:80:21:39", "9B:B7:0A:80:21:57", "9B:B7:0A:80:22:15", "9B:B7:0A:80:22:20", "9B:B7:0A:80:22:09", "9B:B7:0A:80:21:70", "9B:B7:0A:80:21:86", "9B:B7:0A:80:21:88", "9B:B7:0A:80:22:24", "9B:B7:0A:80:22:05", "9B:B7:0A:80:22:25", "9B:B7:0A:80:22:34", "9B:B7:0A:80:21:69", "9B:B7:0A:80:22:62", "9B:B7:0A:80:21:77", "9B:B7:0A:80:21:50", "9B:B7:0A:80:21:35", "9B:B7:0A:80:21:91", "9B:B7:0A:80:22:07", "9B:B7:0A:80:21:82" });
    }

    private void initViews()
    {
        this.nblleft = ((TextView)findViewById(R.id.nbl_left));
        this.nbltitle = ((TextView)findViewById(R.id.nbl_center));
        this.nbllayout = ((RelativeLayout)findViewById(R.id.nbl_layout));
        this.mLoHeartRateBg = ((LinearLayout)findViewById(2131558503));
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903089));
        this.mTvHeartRateTips = ((TextView)findViewById(2131558506));
        this.nbllayout.setBackgroundColor(getResources().getColor(2131427417));
        this.nbltitle.setText(getString(2131165283));
        this.nbltitle.setTextColor(getResources().getColor(2131427362));
        Drawable localDrawable = getResources().getDrawable(2130903043);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        this.nblleft.setCompoundDrawables(localDrawable, null, null, null);
        this.nblleft.setText(getString(2131165223));
        this.nblleft.setTextColor(getResources().getColor(2131427361));
        this.nblleft.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                HeartRate.this.finishThisActivity(1);
            }
        });
        this.mTvHeartRate = ((TextView)findViewById(2131558504));
        this.mIsConnecting = true;
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          HeartRate.access$002(HeartRate.this, false);
                                      }
                                  }
                , 800L);
        showToastShort("请将手机置于云台");
        showToastShort("自动连接智能心率设备");
        showToastShort("请在设备连接后再触碰采集点");
        this.mTvHeartRateTips.setText("请将手机置于云台");
        if (this.mTTSService != null)
        {
            this.mTTSService.ttsStop();
            this.mTTSService.ttsPlay("请将手机置于云台".concat("自动连接智能心率设备").concat("请在设备连接后再触碰采集点"));
        }
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        startScanDelay(2000);
        this.init_ms = System.currentTimeMillis();
        this.mTimer = new Timer();
    }

    private void postResultData()
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("token", str);
        localRequestParams.addBodyParameter("itemId", "");
        localRequestParams.addBodyParameter("heartrate", "");
        localRequestParams.addBodyParameter("hrTime", "");
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.USAGEDATA, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                if (((JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class)).getCode().equals(Configs.isSuccess))
                    LOG.i("上传成功");
            }
        });
    }

    private void setOTPBAvailability(OutdoorHeartRateP paramOutdoorHeartRateP)
    {
        if (this.mAvailableOTPBList.contains(paramOutdoorHeartRateP.getHeartRateSensorAddress()))
            paramOutdoorHeartRateP.setIsHeartRateSensorActivated(true);
    }

    private void setTodayHeart(String paramString1, String paramString2, String paramString3)
    {
        new TodayDataUtil().setHeartData(paramString1, paramString2, paramString3);
    }

    private void startScan()
    {
        if (this.mIsScanning)
            return;
        this.mIdSensorMap.clear();
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(2).setReportDelay(1000L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        ParcelUuid localParcelUuid = ParcelUuid.fromString(BaseManager.XZWK_HEART_RATE_UUID.toString());
        localArrayList.add(new ScanFilter.Builder().setServiceUuid(localParcelUuid).build());
        localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.mHRScanCallback);
        this.mIsScanning = true;
    }

    private void startScanDelay(int paramInt)
    {
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          try
                                          {
                                              HeartRate.this.startScan();
                                              return;
                                          }
                                          catch (Exception localException)
                                          {
                                              HeartRate.this.startScanDelay(2000);
                                          }
                                      }
                                  }
                , paramInt);
    }

    private void stopScan()
    {
        Log.i("HeartRateUI", " scanner.stopScan(mHRScanCallback)" + this);
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.mHRScanCallback);
            this.mIsScanning = false;
        }
    }

    private void updateResult(List<ScanResult> paramList)
    {
        int i = 0;
        if (i < paramList.size())
        {
            BluetoothDevice localBluetoothDevice = ((ScanResult)paramList.get(i)).getDevice();
            this.mTempDeviceName = localBluetoothDevice.getName();
            int j;
            if ((this.mTempDeviceName != null) && (this.mTempDeviceName.contains("YAXLhlthbt")))
            {
                j = ((ScanResult)paramList.get(i)).getRssi();
                if (this.mIdSensorMap.containsKey(localBluetoothDevice.getAddress()))
                    break label150;
                OutdoorHeartRateP localOutdoorHeartRateP1 = new OutdoorHeartRateP(this.mTempDeviceName, localBluetoothDevice.getAddress(), j, System.currentTimeMillis(), localBluetoothDevice.getName(), localBluetoothDevice.getAddress(), false, 400100000, null);
                this.mIdSensorMap.put(localBluetoothDevice.getAddress(), localOutdoorHeartRateP1);
                setOTPBAvailability(localOutdoorHeartRateP1);
                localOutdoorHeartRateP1.setUpdated(true);
            }
            while (true)
            {
                i++;
                break;
                label150: OutdoorHeartRateP localOutdoorHeartRateP2 = (OutdoorHeartRateP)this.mIdSensorMap.get(localBluetoothDevice.getAddress());
                localOutdoorHeartRateP2.setIdSensorRssi(NativeSupport.calLP(localOutdoorHeartRateP2.getIdSensorRssi(), j, 14));
                ((OutdoorHeartRateP)this.mIdSensorMap.get(localBluetoothDevice.getAddress())).setIdSensorLatestTimeStamp(System.currentTimeMillis());
                localOutdoorHeartRateP2.setUpdated(true);
                setOTPBAvailability(localOutdoorHeartRateP2);
            }
        }
        calHeartBeatDeviceLP();
    }

    private void updateUI(int paramInt1, int paramInt2)
    {
        this.mSeq = paramInt2;
        if (paramInt2 == 1)
            this.mRandomStartReq = (10 + (int)(12.0D * Math.random()));
        if (paramInt2 > this.mRandomStartReq)
            if ((paramInt1 < 40) || (paramInt1 > 130))
                balanceHR(paramInt1);
        while (true)
        {
            Log.i("HeartRateUI", "------mHeartRate:" + this.mHeartRate + " seq:" + paramInt2 + " RandRep:" + this.mRandomRep + " StartReq:" + this.mRandomStartReq);
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    if (HeartRate.this.mHeartRate < 40)
                    {
                        HeartRate.this.mTvHeartRate.setText("--");
                        return;
                    }
                    HeartRate.this.mTvHeartRate.setText(String.valueOf(HeartRate.this.mHeartRate));
                }
            });
            if ((this.mHeartRate > 40) && (this.mHeartRate <= 130))
            {
                this.mTotalHeartRate += this.mHeartRate;
                this.mValidHRCnt = (1 + this.mValidHRCnt);
                if (this.mHeartRate > this.mValidHRMax)
                    this.mValidHRMax = this.mHeartRate;
                if (this.mHeartRate < this.mValidHRMin)
                    this.mValidHRMin = this.mHeartRate;
            }
            return;
            this.mHeartRate = paramInt1;
            this.mRandomRep = 0;
            continue;
            if (paramInt1 > 130)
            {
                balanceHR(paramInt1);
            }
            else
            {
                this.mHeartRate = paramInt1;
                this.mRandomRep = 0;
            }
        }
    }

    protected void finishThisActivity(final int paramInt)
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                Intent localIntent = new Intent();
                if (HeartRate.this.mValidHRCnt != 0)
                {
                    localIntent.putExtra("AvrgHeartRate", HeartRate.this.mTotalHeartRate / HeartRate.this.mValidHRCnt);
                    localIntent.putExtra("MaxHeartRate", HeartRate.this.mValidHRMax);
                    localIntent.putExtra("MinHeartRate", HeartRate.this.mValidHRMin);
                }
                HeartRate.this.setResult(paramInt, localIntent);
                HeartRate.access$002(HeartRate.this, false);
                HeartRate.this.finish();
            }
        });
    }

    protected void goToReportActivity()
    {
        finishThisActivity(1);
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968605);
        this.mDetectPause = false;
        this.mShowFinishDialog = false;
        this.mAutoConnect = false;
        this.mAutoBind = false;
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        NativeSupport.ALWAYS_ALLOW_PHONE_TIMER = true;
        initViews();
        initOTPBList();
    }

    public void onDeviceConnected()
    {
        this.mIsConnected = true;
        if (this.mTouchedCountDown == 20)
        {
            this.mTTSService.ttsStop();
            this.mTTSService.ttsPlay("智能心率设备已连接！");
            this.mTvHeartRateTips.setText("自动连接智能心率设备");
            this.mTTSService.ttsPlay("请将双手触碰采集点");
            showToastShort("采集时间需要大约20秒");
        }
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903088));
    }

    public void onDeviceDisconnected()
    {
        super.onDeviceDisconnected();
        showToastShort("智能心率设备已断开！");
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903089));
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        if (!this.mActive);
        do
        {
            do
            {
                return;
                super.onGymRealTimeEvent(paramGymRealTimeEvent);
                this.mPMRevXYZAvedevLP = paramGymRealTimeEvent.getPMRevXYZAvedevLP();
                this.mPAType = paramGymRealTimeEvent.getPAType();
                Log.i("HeartRateUI", "2.~~~~~~~~~~~~~~~~~~~~~onGymRealTimeEvent: " + paramGymRealTimeEvent.getPAType() + " " + System.currentTimeMillis());
                if ((!this.mIsConnecting) && (((this.mPMRevXYZAvedevLP < 31.0D) && (this.mPAType > 158) && (this.mPAType < 168)) || ((this.mPMRevXYZAvedevLP < 32.0D) && (this.mPAType > 167) && (this.mPAType < 199)) || ((this.mPMRevXYZAvedevLP < 33.0D) && (this.mPAType > 182) && (this.mPAType < 199))))
                {
                    Log.i("HeartRateUI", "4.~~~~~~~~~~~~~~~~~~~~~identify time: " + (System.currentTimeMillis() - this.init_ms));
                    if ((this.mNearestIdAddress == null) || (this.mNearestIdAddress.equals("")))
                    {
                        this.mIsConnecting = false;
                        return;
                    }
                    Log.i("HeartRateUI", "5. ~~identify time: " + (System.currentTimeMillis() - this.init_ms));
                    final OutdoorHeartRateP localOutdoorHeartRateP = (OutdoorHeartRateP)this.mIdSensorMap.get(this.mNearestIdAddress);
                    if (!localOutdoorHeartRateP.isHeartRateSensorActivated())
                    {
                        if ((this.mConnectCountDown == 45) && (!this.mDeviceNotFoundShown))
                        {
                            showToastLong("未发现配对设备或设备已被占用！");
                            this.mDeviceNotFoundShown = true;
                        }
                        this.mIsConnecting = false;
                        return;
                    }
                    stopScan();
                    this.mHandler.postDelayed(new Runnable()
                                              {
                                                  public void run()
                                                  {
                                                      LOG.i("HeartRateUI", "6.1 connectToGymDevice()~~~~");
                                                      if (!HeartRate.this.mActive);
                                                      do
                                                      {
                                                          return;
                                                          LOG.i("HeartRateUI", "6.2 connectToGymDevice()~~~~");
                                                      }
                                                      while (HeartRate.this.mIsConnecting);
                                                      LOG.i("HeartRateUI", "6.3 connectToGymDevice()~~~~");
                                                      NativeSupport.releaseAllMotionServiceInstances();
                                                      if (HeartRate.this.connectToGymDevice(localOutdoorHeartRateP.getHeartRateSensorName(), localOutdoorHeartRateP.getHeartRateSensorAddress(), 0))
                                                      {
                                                          HeartRate.access$002(HeartRate.this, true);
                                                          HeartRate.this.showToastShort("已识别心率传感器！");
                                                          return;
                                                      }
                                                      HeartRate.this.showToastLong("连接出现问题，请重试！");
                                                      HeartRate.this.finishThisActivity(-1);
                                                  }
                                              }
                            , 500L);
                }
            }
            while (!this.mIsConnected);
            if ((this.mPMRevXYZAvedevLP > 500.0D) && (this.mIsStable))
            {
                this.mIsStable = false;
                showPauseDialog();
            }
        }
        while (this.mPMRevXYZAvedevLP >= 50.0D);
        this.mIsStable = true;
    }

    public void onHeartRate(int[] paramArrayOfInt)
    {
        Log.i("HeartRateUI", "hr[0]" + paramArrayOfInt[0] + " hr[1]" + paramArrayOfInt[1]);
        updateUI(paramArrayOfInt[0], paramArrayOfInt[1]);
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
    }

    public void onStart()
    {
        super.onStart();
        if (!this.mIsConnected)
        {
            startScanDelay(2000);
            this.mTimer.schedule(new TimerTask()
                                 {
                                     public void run()
                                     {
                                         if ((!HeartRate.this.mIsConnected) && (HeartRate.this.mTouchedCountDown > 7))
                                         {
                                             HeartRate.this.mHandler.post(new Runnable()
                                             {
                                                 public void run()
                                                 {
                                                     HeartRate.this.mTvHeartRateTips.setText("正在连接智能心率设备".concat("  ").concat(String.valueOf(HeartRate.access$510(HeartRate.this)).concat("秒")));
                                                 }
                                             });
                                             if (HeartRate.this.mTouchedCountDown <= 0)
                                                 HeartRate.this.finishThisActivity(1);
                                             if (HeartRate.this.mUnTouchedCountDown <= 0)
                                             {
                                                 if (HeartRate.this.mValidHRMax <= 0)
                                                     break label343;
                                                 HeartRate.this.finishThisActivity(1);
                                             }
                                         }
                                         while (true)
                                         {
                                             if (HeartRate.this.mConnectCountDown <= 0)
                                                 HeartRate.this.finishThisActivity(-3);
                                             return;
                                             if ((System.currentTimeMillis() - HeartRate.this.mLastUpdateTimeStamp > 1800L) && (HeartRate.this.mTouchedCountDown > 10))
                                             {
                                                 HeartRate.this.updateUI(0, 0);
                                                 HeartRate.this.mHandler.post(new Runnable()
                                                 {
                                                     public void run()
                                                     {
                                                         HeartRate.this.mTvHeartRateTips.setText("请将双手触碰采集点".concat("  ").concat(String.valueOf(HeartRate.access$1010(HeartRate.this))).concat("秒"));
                                                         if ((HeartRate.this.mUnTouchedCountDown % 15 == 0) && (HeartRate.this.mUnTouchedCountDown != 0))
                                                         {
                                                             HeartRate.this.mTTSService.ttsStop();
                                                             HeartRate.this.mTTSService.ttsPlay("请将双手触碰采集点");
                                                         }
                                                     }
                                                 });
                                             }
                                             if ((HeartRate.this.mSeq >= 1) || (HeartRate.this.mTouchedCountDown <= 7))
                                             {
                                                 if ((HeartRate.this.mSeq == 1) && (HeartRate.this.mTouchedCountDown > 7))
                                                 {
                                                     HeartRate.access$1502(HeartRate.this, 0);
                                                     HeartRate.access$402(HeartRate.this, 20);
                                                     HeartRate.this.mHandler.post(new Runnable()
                                                     {
                                                         public void run()
                                                         {
                                                             HeartRate.this.mTTSService.ttsStop();
                                                             HeartRate.this.mTTSService.ttsPlay("双手已触碰采集点".concat(",").concat("采集时间需要大约20秒").concat(",").concat("测量开始！"));
                                                         }
                                                     });
                                                 }
                                                 HeartRate.this.mHandler.post(new Runnable()
                                                 {
                                                     public void run()
                                                     {
                                                         HeartRate.this.mTvHeartRateTips.setText("双手已触碰采集点".concat("  ").concat(String.valueOf(HeartRate.access$410(HeartRate.this))).concat("秒"));
                                                     }
                                                 });
                                             }
                                             if (HeartRate.this.mTouchedCountDown == 7)
                                                 HeartRate.this.mHandler.post(new Runnable()
                                                 {
                                                     public void run()
                                                     {
                                                         HeartRate.this.mTTSService.ttsStop();
                                                         HeartRate.this.mTTSService.ttsPlay("本次测量将在5秒钟后结束");
                                                     }
                                                 });
                                             if ((HeartRate.this.mTouchedCountDown > 3) || (HeartRate.this.mTouchedCountDown <= 1))
                                                 break;
                                             HeartRate.this.showToastShort(String.valueOf(-1 + HeartRate.this.mTouchedCountDown));
                                             break;
                                             label343: HeartRate.this.finishThisActivity(-2);
                                         }
                                     }
                                 }
                    , 0L, 1000L);
        }
        while (true)
        {
            this.mActive = true;
            return;
            this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903088));
        }
    }

    protected void onStop()
    {
        super.onStop();
        stopScan();
        this.mActive = false;
        if (isFinishing())
        {
            if (this.mTTSService != null)
                this.mTTSService.ttsStop();
            if (this.mTimer != null)
                this.mTimer.cancel();
        }
    }

    protected void showPauseDialog()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if (((HeartRate.this.mPauseDialog != null) && (HeartRate.this.mPauseDialog.isShowing())) || (HeartRate.this.mTimerCnt >= 0))
                    return;
                HeartRate.this.mTTSService.ttsPlay("心率检测暂停！");
                HeartRate.this.mHandler.post(new Runnable()
                {
                    public void run()
                    {
                        HeartRate.access$3002(HeartRate.this, HeartRate.this.mPausePrompt.show());
                    }
                });
                HeartRate.access$3302(HeartRate.this, 5);
                HeartRate.access$3402(HeartRate.this, new Timer());
                HeartRate.this.mPauseTimer.schedule(new TimerTask()
                                                    {
                                                        public void run()
                                                        {
                                                            HeartRate.this.mHandler.post(new Runnable()
                                                            {
                                                                public void run()
                                                                {
                                                                    if ((HeartRate.this.mPauseDialog != null) && (HeartRate.this.mPauseDialog.isShowing()))
                                                                    {
                                                                        HeartRate.this.mPauseDialog.setTitle("心率检测暂停");
                                                                        HeartRate.this.mPauseDialog.setMessage("心率传感器将在暂停后5秒钟自动断开。点击\"继续\"继续测试。\n结束检测？  ".concat(String.valueOf(HeartRate.access$3810(HeartRate.this))));
                                                                        if (HeartRate.this.mTimerCnt <= -1)
                                                                        {
                                                                            HeartRate.this.tryDismissPausePrompt();
                                                                            if (HeartRate.this.mPauseTimer != null)
                                                                                HeartRate.this.mPauseTimer.cancel();
                                                                            HeartRate.this.finishThisActivity(1);
                                                                        }
                                                                    }
                                                                    do
                                                                    {
                                                                        return;
                                                                        HeartRate.this.tryDismissPausePrompt();
                                                                    }
                                                                    while (HeartRate.this.mPauseTimer == null);
                                                                    HeartRate.this.mPauseTimer.cancel();
                                                                }
                                                            });
                                                        }
                                                    }
                        , 0L, 1000L);
            }
        });
    }

    public void unbindService(ServiceConnection paramServiceConnection)
    {
        super.unbindService(paramServiceConnection);
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903089));
    }
}