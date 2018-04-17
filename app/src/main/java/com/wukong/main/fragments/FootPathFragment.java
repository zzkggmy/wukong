package com.wukong.main.fragments;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.bluetooth.BluetoothDevice;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.ParcelUuid;
import android.os.PowerManager;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baidu.location.BDLocation;
import com.baidu.location.BDLocationListener;
import com.baidu.location.Poi;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.db.sqlite.Selector;
import com.lidroid.xutils.db.sqlite.WhereBuilder;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.barfootpath.DialogAct;
import com.wukong.main.barfootpath.HeartRate;
import com.wukong.main.barfootpath.MoreFootpathAct;
import com.wukong.main.base.BaseFragment;
import com.wukong.main.base.BleProfileNonFuncActivity;
import com.wukong.main.base.WukongApplication;
import com.wukong.main.beans.FPDeviceBean;
import com.wukong.main.beans.FootPathDeviceBean;
import com.wukong.main.beans.FootPathFragmentBean;
import com.wukong.main.beans.JsonData;
import com.wukong.main.beans.SensorsBean;
import com.wukong.main.beans.SmartPathDevice;
import com.wukong.main.beans.SmartPathDeviceInstance;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.LocationService;
import com.wukong.main.utils.TTSService;
import com.wukong.main.utils.TodayDataUtil;
import com.wukong.main.utils.TodayDataUtil.FootPath;
import com.wukong.main.utils.UrlConfig;
import com.wukong.main.widgets.MoveScorllView;
import com.wukong.services.gym.BaseManager;
import com.wukong.services.gym.NativeSupport;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter.Builder;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;
import no.nordicsemi.android.support.v18.scanner.ScanSettings.Builder;

public class FootPathFragment extends BaseFragment
        implements SensorEventListener
{
    private static final double CAL_RATE = 0.065D;
    private static int IMG_path_10003 = 0;
    private static int IMG_path_20006 = 0;
    private static int IMG_path_210005 = 0;
    private static int IMG_path_220006 = 0;
    private static int IMG_path_230006 = 0;
    private static int IMG_path_240003 = 0;
    private static int IMG_path_250006 = 0;
    private static int IMG_path_260003 = 0;
    private static int IMG_path_270003 = 0;
    private static int IMG_path_280004 = 0;
    private static int IMG_path_290009 = 0;
    private static int IMG_path_300007 = 0;
    private static int IMG_path_310005 = 0;
    private static int IMG_path_320005 = 0;
    private static int IMG_path_330007 = 0;
    private static int IMG_path_340006 = 0;
    private static int IMG_path_350004 = 0;
    private static int IMG_path_360003 = 0;
    private static int IMG_path_370008 = 0;
    private static int IMG_path_380004 = 0;
    private static int IMG_path_390010 = 0;
    private static int IMG_path_400006 = 0;
    private static int IMG_path_410007 = 0;
    private static int IMG_path_420005 = 0;
    private static int IMG_path_430004 = 0;
    private static int IMG_path_440004 = 0;
    private static int IMG_path_450003 = 0;
    private static int IMG_path_460010 = 0;
    private static int IMG_path_470010 = 0;
    private static int IMG_path_480003 = 0;
    private static int IMG_path_490004 = 0;
    private static int IMG_path_default = 0;
    private static final String TAG = "FootPathFragment";
    private static final String TIME_OUT = "操作超时！";
    private DbUtils DB;
    private final int SDK_PERMISSION_REQUEST = 127;
    private TextView address;
    private String addrstr;
    private Animation animation;
    private FootPathFragmentBean bean;
    private String bleAddr = "C5:B4:4F:C6:3B:ED";
    private int curnum = 0;
    private FootPathDeviceBean devicebean;
    private Handler handler = new Handler()
    {
        public void handleMessage(Message paramAnonymousMessage)
        {
            super.handleMessage(paramAnonymousMessage);
            switch (paramAnonymousMessage.what)
            {
                default:
                case 1:
                    do
                    {
                        return;
                        FootPathFragment.this.stopLocation();
                    }
                    while (!Commons.strIsNull(FootPathFragment.this.addrstr));
                    FootPathFragment.this.address.setText(FootPathFragment.this.addrstr);
                    return;
                case 2:
                    FootPathFragment.this.StartScanBLE();
                    return;
                case 3:
            }
            FootPathFragment.this.StopScanBLE();
        }
    };
    private boolean isFindNoUploadData = false;
    private String latitude;
    private LinearLayout layout;
    private LinearLayout layoutB;
    private LinearLayout layoutT;
    private List<FootPathFragmentBean> list;
    private LocationService locationService;
    private String lontitude;
    private double mAvrgSpeed;
    protected AlertDialog mBLEBlockedDialog;
    protected AlertDialog.Builder mBLEBlockedPrompt;
    private double mCalories;
    private float mCircleCnt;
    private int mDistance_m;
    private long mFirstRunStartTime;
    private int mFisrtStepCnt = -1;
    private HashMap<String, SmartPathDevice> mGloblePathDeviceMap = new HashMap();
    private ImageView mImgvOfPath;
    private ImageView mImgvPause;
    private ImageView mImgvPlay;
    private ImageView mImgvStop;
    private boolean mIsActive = false;
    private boolean mIsFinished;
    private boolean mIsPathManDetect;
    private boolean mIsScanning;
    private int mLastmCircleCnt;
    private long mLatestUpdateTS;
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
                FootPathFragment.access$602(FootPathFragment.this, String.valueOf(paramAnonymousBDLocation.getLongitude()));
                FootPathFragment.access$502(FootPathFragment.this, String.valueOf(paramAnonymousBDLocation.getLatitude()));
                FootPathFragment.access$4902(FootPathFragment.this, paramAnonymousBDLocation.getAddrStr());
                Message localMessage = new Message();
                localMessage.what = 1;
                FootPathFragment.this.handler.sendMessage(localMessage);
                if ((paramAnonymousBDLocation.getPoiList() != null) && (!paramAnonymousBDLocation.getPoiList().isEmpty()))
                    for (int i = 0; i < paramAnonymousBDLocation.getPoiList().size(); i++)
                    {
                        Poi localPoi = (Poi)paramAnonymousBDLocation.getPoiList().get(i);
                        localStringBuffer.append(localPoi.getName() + ";");
                    }
                if (paramAnonymousBDLocation.getLocType() != 61)
                    break label276;
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
            label276:
            do
            {
                return;
                if (paramAnonymousBDLocation.getLocType() == 161)
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
                    return;
                }
                if (paramAnonymousBDLocation.getLocType() == 66)
                {
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("离线定位成功，离线定位结果也是有效的");
                    return;
                }
                if (paramAnonymousBDLocation.getLocType() == 167)
                {
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("服务端网络定位失败，可以反馈IMEI号和大体定位时间到loc-bugs@baidu.com，会有人追查原因");
                    return;
                }
                if (paramAnonymousBDLocation.getLocType() == 63)
                {
                    localStringBuffer.append("\ndescribe : ");
                    localStringBuffer.append("网络不同导致定位失败，请检查网络是否通畅");
                    return;
                }
            }
            while (paramAnonymousBDLocation.getLocType() != 62);
            localStringBuffer.append("\ndescribe : ");
            localStringBuffer.append("无法获取有效定位依据导致定位失败，一般是由于手机的原因，处于飞行模式下一般会造成这种结果，可以试着重启手机");
        }
    };
    private HashMap<String, SmartPathDevice> mLocalPathDeviceMap = new HashMap();
    private SparseArray<SmartPathDevice> mLocalPathDeviceOrderArr = new SparseArray();
    private boolean mNarmalFinish;
    private boolean mNotInWhiteListBlockScan = false;
    private long mOldDuration_ms;
    private int mOldStepCnt;
    private ArrayDeque<SmartPathDeviceInstance> mPathDeviceQueue = new ArrayDeque();
    private int mReScanCnt;
    private int mRestartScanCnt_InvalidUpdate;
    private long mRoundDuration_ms;
    private long mRoundStartTime;
    private int mRound_InvalidUpdateCnt;
    private ScanCallback mScanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
            FootPathFragment.this.updateResult(paramAnonymousList);
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };
    private long mScanStartTime;
    private int mScreenBrightness;
    private int mScreenOffTimeout;
    protected SensorManager mSensorManager;
    private boolean mShowContinueTips = true;
    private int mStepCnt;
    private boolean mStoppedByHeartRate;
    private String mTempDeviceName = "";
    private Timer mTimer;
    private boolean mTipsShown = false;
    private TextView mTv1_0;
    private TextView mTv1_1;
    private TextView mTv2_1;
    private TextView mTv2_2;
    private TextView mTv2_3;
    private TextView mTv3_1;
    private TextView mTv3_2;
    private TextView mTv3_3;
    private TextView mTvTotalDistance;
    private TextView mTv_get_heart_rate;
    private int mUpdateCount;
    private int mValidInterval = 5000;
    private TextView morefp;
    private boolean oldDataIsUpload = false;
    private String permissionInfo;
    private Runnable scollToBottom = new Runnable()
    {
        public void run()
        {
            int i = FootPathFragment.this.layout.getMeasuredHeight() - FootPathFragment.this.scorllView.getHeight();
            if (i > 0)
            {
                FootPathFragment.this.scorllView.scrollBy(0, 35);
                if (FootPathFragment.this.scorllView.getScrollY() == i)
                    Thread.currentThread().interrupt();
            }
            else
            {
                return;
            }
            FootPathFragment.this.handler.postDelayed(this, 20L);
        }
    };
    private MoveScorllView scorllView;
    private boolean sendSuccess = false;
    private int size;
    private View view;

    private void StartScanBLE()
    {
        if (this.mIsScanning)
            return;
        this.mUpdateCount = 0;
        checkBLE();
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(1).setReportDelay(1200L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        ParcelUuid localParcelUuid = ParcelUuid.fromString(BaseManager.XZWK_SMART_PATH_UUID.toString());
        localArrayList.add(new ScanFilter.Builder().setServiceUuid(localParcelUuid).build());
        localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.mScanCallback);
        this.mIsScanning = true;
        this.mImgvPlay.setImageResource(2130903213);
        this.mScanStartTime = System.currentTimeMillis();
        this.mLatestUpdateTS = this.mScanStartTime;
        this.mRound_InvalidUpdateCnt = 0;
    }

    private void StopScanBLE()
    {
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.mScanCallback);
            this.mIsScanning = false;
            this.mImgvPlay.setImageResource(2130903161);
        }
    }

    @TargetApi(23)
    private boolean addPermission(ArrayList<String> paramArrayList, String paramString)
    {
        if ((getActivity().checkSelfPermission(paramString) == 0) || (shouldShowRequestPermissionRationale(paramString)))
            return true;
        paramArrayList.add(paramString);
        return false;
    }

    private void calNearestPathDeviceLP()
    {
        this.mUpdateCount = (1 + this.mUpdateCount);
        String str = null;
        double d = -132.0D;
        Iterator localIterator = this.mGloblePathDeviceMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            ((SmartPathDevice)localEntry.getValue()).setUpdated(false);
            if ((System.currentTimeMillis() - ((SmartPathDevice)localEntry.getValue()).getLatestTimeStamp() < this.mValidInterval) && (((SmartPathDevice)localEntry.getValue()).getPathSensorRssiInstantLP() > d))
            {
                d = ((SmartPathDevice)localEntry.getValue()).getPathSensorRssiInstantLP();
                str = ((SmartPathDevice)localEntry.getValue()).getPathSensorAddress();
            }
        }
        LOG.i("FootPathFragment", "Path nearestAddr:" + str);
        if ((this.mLocalPathDeviceMap.isEmpty()) && (this.mGloblePathDeviceMap.containsKey(str)))
            loadLocalPathDevice(str);
        if ((str != null) && (this.mUpdateCount > 2))
            tryAddPathDeviceToPathQue(str, (int)d);
    }

    private List<SensorsBean> checkLocalDevice()
    {
        try
        {
            List localList1 = this.DB.findAll(Selector.from(FootPathDeviceBean.class).where("equipTypeCode", "=", "200000000"));
            if ((localList1 != null) && (localList1.size() > 0))
                for (int i = 0; i < localList1.size(); i++)
                {
                    List localList2 = JSONArray.parseArray(((FootPathDeviceBean)localList1.get(i)).getSensors(), SensorsBean.class);
                    for (int j = 0; j < localList2.size(); j++)
                    {
                        SensorsBean localSensorsBean = (SensorsBean)localList2.get(i);
                        if (this.bleAddr.equals(localSensorsBean.getBtAddr()))
                        {
                            LOG.i("size = " + localList2.size());
                            return localList2;
                        }
                    }
                }
        }
        catch (DbException localDbException)
        {
            localDbException.printStackTrace();
        }
        return null;
    }

    private void deleteDbData()
    {
        if (this.curnum < this.size);
        try
        {
            this.DB.delete(FootPathFragmentBean.class, WhereBuilder.b("startTime", "=", ((FootPathFragmentBean)this.list.get(this.curnum)).getStartTime()));
            return;
        }
        catch (DbException localDbException)
        {
            localDbException.printStackTrace();
        }
    }

    private void findNoUploadData()
    {
        try
        {
            this.list = this.DB.findAll(Selector.from(FootPathFragmentBean.class).where("uid", "=", Commons.getPreference(Configs.userID)));
            if (this.list != null)
            {
                this.size = this.list.size();
                LOG.i("SIZE = " + this.size + " curnum = " + this.curnum + "===");
                if (this.size > 0)
                {
                    this.oldDataIsUpload = true;
                    uploadOldData();
                }
            }
            return;
        }
        catch (DbException localDbException)
        {
            localDbException.printStackTrace();
        }
    }

    private void getDeviceInfo()
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("token", str);
        localRequestParams.addQueryStringParameter("btAddr", this.bleAddr);
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.GET_BLEMAC, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + (String)paramAnonymousResponseInfo.result);
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                List localList;
                FootPathDeviceBean localFootPathDeviceBean;
                if (localJsonData.getCode().equals(Configs.isSuccess))
                {
                    FPDeviceBean localFPDeviceBean = (FPDeviceBean)JSONObject.parseObject(localJsonData.getData(), FPDeviceBean.class);
                    localList = JSONArray.parseArray(localFPDeviceBean.getSensors(), SensorsBean.class);
                    localFootPathDeviceBean = new FootPathDeviceBean();
                    localFootPathDeviceBean.setEquipTypeCode("200000000");
                    localFootPathDeviceBean.setSensors(localFPDeviceBean.getSensors());
                }
                try
                {
                    FootPathFragment.this.DB.save(localFootPathDeviceBean);
                    if (localList.size() > 0)
                        FootPathFragment.this.setLocalNetData(localList);
                    return;
                }
                catch (DbException localDbException)
                {
                    while (true)
                        localDbException.printStackTrace();
                }
            }
        });
    }

    @TargetApi(23)
    private void getPersimmions()
    {
        if (Build.VERSION.SDK_INT >= 23)
        {
            ArrayList localArrayList = new ArrayList();
            if (getActivity().checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0)
                localArrayList.add("android.permission.ACCESS_FINE_LOCATION");
            if (getActivity().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0)
                localArrayList.add("android.permission.ACCESS_COARSE_LOCATION");
            if (addPermission(localArrayList, "android.permission.WRITE_EXTERNAL_STORAGE"))
                this.permissionInfo += "Manifest.permission.WRITE_EXTERNAL_STORAGE Deny \n";
            if (addPermission(localArrayList, "android.permission.READ_PHONE_STATE"))
                this.permissionInfo += "Manifest.permission.READ_PHONE_STATE Deny \n";
            if (getActivity().checkSelfPermission("android.permission.CAMERA") != 0)
                localArrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            if (localArrayList.size() > 0)
                requestPermissions((String[])localArrayList.toArray(new String[localArrayList.size()]), 127);
        }
    }

    private void getTodayDataFromLocal()
    {
        this.mOldStepCnt = Commons.getPreferenceInt(Configs.TodaySteps);
        this.mDistance_m = Commons.getPreferenceInt(Configs.TodayDistance);
        this.mOldDuration_ms = Commons.getPreferenceLong(Configs.TodayDuration);
        this.mCircleCnt = Commons.getPreferenceFloat(Configs.TodayCircle);
        this.mAvrgSpeed = Commons.getPreferenceFloat(Configs.TodaySpeed);
        this.mCalories = Commons.getPreferenceFloat(Configs.TodayCal);
    }

    private void goneTopImg()
    {
        this.handler.post(this.scollToBottom);
    }

    private void initViews()
    {
        this.mImgvOfPath = ((ImageView)this.view.findViewById(2131558606));
        this.mTv1_0 = ((TextView)this.view.findViewById(2131558612));
        this.mTv1_1 = ((TextView)this.view.findViewById(2131558611));
        this.mTv2_1 = ((TextView)this.view.findViewById(2131558613));
        this.mTv2_2 = ((TextView)this.view.findViewById(2131558614));
        this.mTv2_3 = ((TextView)this.view.findViewById(2131558615));
        this.mTv3_1 = ((TextView)this.view.findViewById(2131558616));
        this.mTv3_2 = ((TextView)this.view.findViewById(2131558618));
        this.mTv3_3 = ((TextView)this.view.findViewById(2131558619));
        setTextViewColor(125, 125, 125);
        this.layoutT = ((LinearLayout)this.view.findViewById(2131558605));
        this.layout = ((LinearLayout)this.view.findViewById(2131558604));
        this.layoutB = ((LinearLayout)this.view.findViewById(2131558610));
        this.address = ((TextView)this.view.findViewById(2131558607));
        this.mTvTotalDistance = ((TextView)this.view.findViewById(2131558609));
        this.scorllView = ((MoveScorllView)this.view.findViewById(2131558603));
        this.mTv_get_heart_rate = ((TextView)this.view.findViewById(2131558617));
        this.mTv_get_heart_rate.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(FootPathFragment.this.getActivity(), HeartRate.class);
                localIntent.putExtra("Type", "心率测试仪");
                FootPathFragment.access$002(FootPathFragment.this, false);
                FootPathFragment.access$102(FootPathFragment.this, false);
                FootPathFragment.this.startActivityForResult(localIntent, 1);
                if (FootPathFragment.this.mIsScanning)
                {
                    FootPathFragment.this.stopScan();
                    FootPathFragment.access$402(FootPathFragment.this, true);
                }
            }
        });
        this.morefp = ((TextView)this.view.findViewById(2131558608));
        this.morefp.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(FootPathFragment.this.getActivity(), MoreFootpathAct.class);
                localIntent.putExtra("latitude", FootPathFragment.this.latitude);
                localIntent.putExtra("lontitude", FootPathFragment.this.lontitude);
                FootPathFragment.this.startActivity(localIntent);
            }
        });
        this.mImgvPlay = ((ImageView)this.view.findViewById(2131558621));
        this.mImgvPlay.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                if (FootPathFragment.this.mIsScanning)
                {
                    FootPathFragment.this.stopScan();
                    FootPathFragment.access$702(FootPathFragment.this, FootPathFragment.this.mOldDuration_ms + FootPathFragment.this.mRoundDuration_ms);
                    FootPathFragment.this.mTTSService.ttsPlay("计时停止！");
                    FootPathFragment.this.showToastShort("计时停止！");
                    FootPathFragment.this.setTextViewColor(205, 205, 205);
                    return;
                }
                FootPathFragment.this.startScan();
                FootPathFragment.access$1302(FootPathFragment.this, System.currentTimeMillis());
                if (FootPathFragment.this.mOldDuration_ms > 0L)
                {
                    FootPathFragment.this.mTTSService.ttsPlay("计时继续！");
                    FootPathFragment.this.showToastShort("计时继续！");
                }
                while (true)
                {
                    FootPathFragment.this.setTextViewColor(125, 125, 125);
                    return;
                    FootPathFragment.this.mTTSService.ttsPlay("计时开始！");
                    FootPathFragment.this.showToastShort("计时开始！");
                }
            }
        });
        this.mBLEBlockedPrompt = new AlertDialog.Builder(getActivity()).setTitle("无法正常获取蓝牙信号").setMessage("您的手机系统阻止程序在后台或锁屏时获取蓝牙信号！为了使程序能正常运行，请设置允许该程序后台运行!").setPositiveButton("如何设置", new DialogInterface.OnClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
                Intent localIntent = new Intent(FootPathFragment.this.getActivity(), DialogAct.class);
                FootPathFragment.this.startActivity(localIntent);
                FootPathFragment.this.showToastLong("修改以后请重启APP！");
                FootPathFragment.this.restartScan();
                Commons.setPreference(Configs.IsBackgroundRunEnabledMan, true);
            }
        }).setNeutralButton("不再提醒", new DialogInterface.OnClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
                FootPathFragment.this.restartScan();
                Commons.setPreference(Configs.NoBackgroundRunTips, true);
                FootPathFragment.this.showToastLong("智能步道程序可能无法正常接收蓝牙信号！");
            }
        }).setNegativeButton("取消", new DialogInterface.OnClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
                FootPathFragment.this.restartScan();
            }
        }).setCancelable(false);
        this.bean = new FootPathFragmentBean();
        this.devicebean = new FootPathDeviceBean();
        this.DB = DbUtils.create(getActivity());
        if (Commons.isConnectNet(getActivity()))
            this.isFindNoUploadData = true;
        this.mTimer = new Timer();
        if (!this.mIsPathManDetect)
            startScan();
        List localList = checkLocalDevice();
        if (localList == null)
            getDeviceInfo();
        while (true)
        {
            this.mScreenBrightness = Commons.getPreferenceInt(Configs.DefaultScreenBrightness);
            this.mScreenOffTimeout = Commons.getPreferenceInt(Configs.DefaultScreenOffTimeOut);
            return;
            setLocalNetData(localList);
        }
    }

    @TargetApi(23)
    private boolean isInPowerWhiteList()
    {
        if (Build.VERSION.SDK_INT >= 23)
        {
            boolean bool = ((PowerManager)getActivity().getSystemService("power")).isIgnoringBatteryOptimizations("com.wukong.main");
            LOG.i("FootPathFragment", "mPowerManager~~~ isIgnoringBatteryOptimizations: " + bool);
            return bool;
        }
        return true;
    }

    private void loadLocalPathDevice(String paramString)
    {
        SmartPathDevice localSmartPathDevice = (SmartPathDevice)this.mGloblePathDeviceMap.get(paramString);
        int i = localSmartPathDevice.getMaxOrder();
        Iterator localIterator = this.mGloblePathDeviceMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            if (((SmartPathDevice)localEntry.getValue()).getMaxOrder() == i)
            {
                this.mLocalPathDeviceOrderArr.put(((SmartPathDevice)localEntry.getValue()).getOrder(), localEntry.getValue());
                this.mLocalPathDeviceMap.put(localEntry.getKey(), localEntry.getValue());
            }
        }
        this.address.setText(localSmartPathDevice.getPathName());
        this.mImgvOfPath.setImageResource(localSmartPathDevice.getImgSourceId());
        this.mTvTotalDistance.setText(String.valueOf(localSmartPathDevice.getDistancePerCircle_m()).concat("米"));
    }

    private void loadPathDevice(String paramString)
    {
        LOG.i("FootPathFragment", "1!!!!!!!mPathDeviceQueue.size " + this.mGloblePathDeviceMap.size());
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:75", new SmartPathDevice("9B:B7:0A:80:38:75", "9B:B7:0A:80:38:75", 180, null, 10001, 10003, 540, IMG_path_10003, "柳荫公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:61", new SmartPathDevice("9B:B7:0A:80:39:61", "9B:B7:0A:80:39:61", 180, null, 10002, 10003, 540, IMG_path_10003, "柳荫公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:46", new SmartPathDevice("9B:B7:0A:80:38:46", "9B:B7:0A:80:38:46", 180, null, 10003, 10003, 540, IMG_path_10003, "柳荫公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:18:93", new SmartPathDevice("9B:B7:0A:80:18:93", "9B:B7:0A:80:18:93", 200, null, 20001, 20006, 1200, IMG_path_20006, "西局玉璞园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:70", new SmartPathDevice("9B:B7:0A:80:16:70", "9B:B7:0A:80:16:70", 200, null, 20002, 20006, 1200, IMG_path_20006, "西局玉璞园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:08", new SmartPathDevice("9B:B7:0A:80:23:08", "9B:B7:0A:80:23:08", 200, null, 20003, 20006, 1200, IMG_path_20006, "西局玉璞园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:17", new SmartPathDevice("9B:B7:0A:80:23:17", "9B:B7:0A:80:23:17", 200, null, 20004, 20006, 1200, IMG_path_20006, "西局玉璞园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:19:23", new SmartPathDevice("9B:B7:0A:80:19:23", "9B:B7:0A:80:19:23", 200, null, 20005, 20006, 1200, IMG_path_20006, "西局玉璞园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:20:06", new SmartPathDevice("9B:B7:0A:80:20:06", "9B:B7:0A:80:20:06", 200, null, 20006, 20006, 1200, IMG_path_20006, "西局玉璞园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:74", new SmartPathDevice("9B:B7:0A:80:16:74", "9B:B7:0A:80:16:74", 100, null, 210001, 210005, 500, IMG_path_210005, "建西苑社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:68", new SmartPathDevice("9B:B7:0A:80:16:68", "9B:B7:0A:80:16:68", 100, null, 210002, 210005, 500, IMG_path_210005, "建西苑社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:20:95", new SmartPathDevice("9B:B7:0A:80:20:95", "9B:B7:0A:80:20:95", 100, null, 210003, 210005, 500, IMG_path_210005, "建西苑社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:96", new SmartPathDevice("9B:B7:0A:80:16:96", "9B:B7:0A:80:16:96", 100, null, 210004, 210005, 500, IMG_path_210005, "建西苑社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:17:20", new SmartPathDevice("9B:B7:0A:80:17:20", "9B:B7:0A:80:17:20", 100, null, 210005, 210005, 500, IMG_path_210005, "建西苑社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:19:60", new SmartPathDevice("9B:B7:0A:80:19:60", "9B:B7:0A:80:19:60", 100, null, 220001, 220006, 600, IMG_path_220006, "药用植物园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:09", new SmartPathDevice("9B:B7:0A:80:23:09", "9B:B7:0A:80:23:09", 100, null, 220002, 220006, 600, IMG_path_220006, "药用植物园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:17:22", new SmartPathDevice("9B:B7:0A:80:17:22", "9B:B7:0A:80:17:22", 100, null, 220003, 220006, 600, IMG_path_220006, "药用植物园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:20:88", new SmartPathDevice("9B:B7:0A:80:20:88", "9B:B7:0A:80:20:88", 100, null, 220004, 220006, 600, IMG_path_220006, "药用植物园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:88", new SmartPathDevice("9B:B7:0A:80:16:88", "9B:B7:0A:80:16:88", 100, null, 220005, 220006, 600, IMG_path_220006, "药用植物园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:16", new SmartPathDevice("9B:B7:0A:80:23:16", "9B:B7:0A:80:23:16", 100, null, 220006, 220006, 600, IMG_path_220006, "药用植物园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:96", new SmartPathDevice("9B:B7:0A:80:23:96", "9B:B7:0A:80:23:96", 200, null, 230001, 230006, 600, IMG_path_230006, "田村山公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:19:20", new SmartPathDevice("9B:B7:0A:80:19:20", "9B:B7:0A:80:19:20", 200, null, 230002, 230006, 600, IMG_path_230006, "田村山公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:17:08", new SmartPathDevice("9B:B7:0A:80:17:08", "9B:B7:0A:80:17:08", 200, null, 230003, 230006, 600, IMG_path_230006, "田村山公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:99", new SmartPathDevice("9B:B7:0A:80:16:99", "9B:B7:0A:80:16:99", 200, null, 230004, 230006, 600, IMG_path_230006, "田村山公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:17:18", new SmartPathDevice("9B:B7:0A:80:17:18", "9B:B7:0A:80:17:18", 200, null, 230005, 230006, 600, IMG_path_230006, "田村山公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:92", new SmartPathDevice("9B:B7:0A:80:16:92", "9B:B7:0A:80:16:92", 200, null, 230006, 230006, 600, IMG_path_230006, "田村山公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:19:54", new SmartPathDevice("9B:B7:0A:80:19:54", "9B:B7:0A:80:19:54", 100, null, 240001, 240003, 300, IMG_path_240003, "屯佃村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:75", new SmartPathDevice("9B:B7:0A:80:23:75", "9B:B7:0A:80:23:75", 100, null, 240002, 240003, 300, IMG_path_240003, "屯佃村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:20:22", new SmartPathDevice("9B:B7:0A:80:20:22", "9B:B7:0A:80:20:22", 100, null, 240003, 240003, 300, IMG_path_240003, "屯佃村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:52", new SmartPathDevice("9B:B7:0A:80:39:52", "9B:B7:0A:80:39:52", 100, null, 250001, 250006, 600, IMG_path_250006, "小瓦窑村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:63", new SmartPathDevice("9B:B7:0A:80:39:63", "9B:B7:0A:80:39:63", 100, null, 250002, 250006, 600, IMG_path_250006, "小瓦窑村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:40", new SmartPathDevice("9B:B7:0A:80:39:40", "9B:B7:0A:80:39:40", 100, null, 250003, 250006, 600, IMG_path_250006, "小瓦窑村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:78", new SmartPathDevice("9B:B7:0A:80:38:78", "9B:B7:0A:80:38:78", 100, null, 250004, 250006, 600, IMG_path_250006, "小瓦窑村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:57", new SmartPathDevice("9B:B7:0A:80:39:57", "9B:B7:0A:80:39:57", 100, null, 250005, 250006, 600, IMG_path_250006, "小瓦窑村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:71", new SmartPathDevice("9B:B7:0A:80:39:71", "9B:B7:0A:80:39:71", 100, null, 250006, 250006, 600, IMG_path_250006, "小瓦窑村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:51", new SmartPathDevice("9B:B7:0A:80:39:51", "9B:B7:0A:80:39:51", 100, null, 260001, 260003, 300, IMG_path_260003, "周庄子村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:16", new SmartPathDevice("9B:B7:0A:80:39:16", "9B:B7:0A:80:39:16", 100, null, 260002, 260003, 300, IMG_path_260003, "周庄子村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:64", new SmartPathDevice("9B:B7:0A:80:39:64", "9B:B7:0A:80:39:64", 100, null, 260003, 260003, 300, IMG_path_260003, "周庄子村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:15", new SmartPathDevice("9B:B7:0A:80:39:15", "9B:B7:0A:80:39:15", 100, null, 270001, 270003, 300, IMG_path_270003, "岳各庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:92", new SmartPathDevice("9B:B7:0A:80:38:92", "9B:B7:0A:80:38:92", 100, null, 270002, 270003, 300, IMG_path_270003, "岳各庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:86", new SmartPathDevice("9B:B7:0A:80:39:86", "9B:B7:0A:80:39:86", 100, null, 270003, 270003, 300, IMG_path_270003, "岳各庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:86", new SmartPathDevice("9B:B7:0A:80:38:86", "9B:B7:0A:80:38:86", 100, null, 280001, 280004, 400, IMG_path_280004, "成仪路社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:68", new SmartPathDevice("9B:B7:0A:80:39:68", "9B:B7:0A:80:39:68", 100, null, 280002, 280004, 400, IMG_path_280004, "成仪路社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:01", new SmartPathDevice("9B:B7:0A:80:40:01", "9B:B7:0A:80:40:01", 100, null, 280003, 280004, 400, IMG_path_280004, "成仪路社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:50", new SmartPathDevice("9B:B7:0A:80:38:50", "9B:B7:0A:80:38:50", 100, null, 280004, 280004, 400, IMG_path_280004, "成仪路社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:90", new SmartPathDevice("9B:B7:0A:80:38:90", "9B:B7:0A:80:38:90", 100, null, 290001, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:87", new SmartPathDevice("9B:B7:0A:80:39:87", "9B:B7:0A:80:39:87", 100, null, 290002, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:00", new SmartPathDevice("9B:B7:0A:80:39:00", "9B:B7:0A:80:39:00", 100, null, 290003, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:44", new SmartPathDevice("9B:B7:0A:80:39:44", "9B:B7:0A:80:39:44", 100, null, 290004, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:62", new SmartPathDevice("9B:B7:0A:80:39:62", "9B:B7:0A:80:39:62", 100, null, 290005, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:02", new SmartPathDevice("9B:B7:0A:80:39:02", "9B:B7:0A:80:39:02", 100, null, 290006, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:72", new SmartPathDevice("9B:B7:0A:80:39:72", "9B:B7:0A:80:39:72", 100, null, 290007, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:06", new SmartPathDevice("9B:B7:0A:80:40:06", "9B:B7:0A:80:40:06", 100, null, 290008, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:30", new SmartPathDevice("9B:B7:0A:80:39:30", "9B:B7:0A:80:39:30", 100, null, 290009, 290009, 900, IMG_path_290009, "怪村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:74", new SmartPathDevice("9B:B7:0A:80:38:74", "9B:B7:0A:80:38:74", 100, null, 300001, 300007, 700, IMG_path_300007, "马家坟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:33", new SmartPathDevice("9B:B7:0A:80:39:33", "9B:B7:0A:80:39:33", 100, null, 300002, 300007, 700, IMG_path_300007, "马家坟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:05", new SmartPathDevice("9B:B7:0A:80:39:05", "9B:B7:0A:80:39:05", 100, null, 300003, 300007, 700, IMG_path_300007, "马家坟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:51", new SmartPathDevice("9B:B7:0A:80:38:51", "9B:B7:0A:80:38:51", 100, null, 300004, 300007, 700, IMG_path_300007, "马家坟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:19", new SmartPathDevice("9B:B7:0A:80:39:19", "9B:B7:0A:80:39:19", 100, null, 300005, 300007, 700, IMG_path_300007, "马家坟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:89", new SmartPathDevice("9B:B7:0A:80:38:89", "9B:B7:0A:80:38:89", 100, null, 300006, 300007, 700, IMG_path_300007, "马家坟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:70", new SmartPathDevice("9B:B7:0A:80:38:70", "9B:B7:0A:80:38:70", 100, null, 300007, 300007, 700, IMG_path_300007, "马家坟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:53", new SmartPathDevice("9B:B7:0A:80:38:53", "9B:B7:0A:80:38:53", 100, null, 310001, 310005, 500, IMG_path_310005, "天元公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:09", new SmartPathDevice("9B:B7:0A:80:40:09", "9B:B7:0A:80:40:09", 100, null, 310002, 310005, 500, IMG_path_310005, "天元公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:46", new SmartPathDevice("9B:B7:0A:80:39:46", "9B:B7:0A:80:39:46", 100, null, 310003, 310005, 500, IMG_path_310005, "天元公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:63", new SmartPathDevice("9B:B7:0A:80:38:63", "9B:B7:0A:80:38:63", 100, null, 310004, 310005, 500, IMG_path_310005, "天元公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:35", new SmartPathDevice("9B:B7:0A:80:39:35", "9B:B7:0A:80:39:35", 100, null, 310005, 310005, 500, IMG_path_310005, "天元公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:68", new SmartPathDevice("9B:B7:0A:80:38:68", "9B:B7:0A:80:38:68", 100, null, 320001, 320005, 500, IMG_path_320005, "月季园二区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:88", new SmartPathDevice("9B:B7:0A:80:38:88", "9B:B7:0A:80:38:88", 100, null, 320002, 320005, 500, IMG_path_320005, "月季园二区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:47", new SmartPathDevice("9B:B7:0A:80:39:47", "9B:B7:0A:80:39:47", 100, null, 320003, 320005, 500, IMG_path_320005, "月季园二区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:23", new SmartPathDevice("9B:B7:0A:80:39:23", "9B:B7:0A:80:39:23", 100, null, 320004, 320005, 500, IMG_path_320005, "月季园二区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:76", new SmartPathDevice("9B:B7:0A:80:38:76", "9B:B7:0A:80:38:76", 100, null, 320005, 320005, 500, IMG_path_320005, "月季园二区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:41", new SmartPathDevice("9B:B7:0A:80:39:41", "9B:B7:0A:80:39:41", 100, null, 330001, 330007, 700, IMG_path_330007, "马栏村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:85", new SmartPathDevice("9B:B7:0A:80:38:85", "9B:B7:0A:80:38:85", 100, null, 330002, 330007, 700, IMG_path_330007, "马栏村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:82", new SmartPathDevice("9B:B7:0A:80:39:82", "9B:B7:0A:80:39:82", 100, null, 330003, 330007, 700, IMG_path_330007, "马栏村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:71", new SmartPathDevice("9B:B7:0A:80:38:71", "9B:B7:0A:80:38:71", 100, null, 330004, 330007, 700, IMG_path_330007, "马栏村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:47", new SmartPathDevice("9B:B7:0A:80:38:47", "9B:B7:0A:80:38:47", 100, null, 330005, 330007, 700, IMG_path_330007, "马栏村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:03", new SmartPathDevice("9B:B7:0A:80:40:03", "9B:B7:0A:80:40:03", 100, null, 330006, 330007, 700, IMG_path_330007, "马栏村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:48", new SmartPathDevice("9B:B7:0A:80:38:48", "9B:B7:0A:80:38:48", 100, null, 330007, 330007, 700, IMG_path_330007, "马栏村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:39", new SmartPathDevice("9B:B7:0A:80:39:39", "9B:B7:0A:80:39:39", 100, null, 340001, 340006, 600, IMG_path_340006, "中门寺南坡社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:34", new SmartPathDevice("9B:B7:0A:80:39:34", "9B:B7:0A:80:39:34", 100, null, 340002, 340006, 600, IMG_path_340006, "中门寺南坡社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:94", new SmartPathDevice("9B:B7:0A:80:38:94", "9B:B7:0A:80:38:94", 100, null, 340003, 340006, 600, IMG_path_340006, "中门寺南坡社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:38", new SmartPathDevice("9B:B7:0A:80:39:38", "9B:B7:0A:80:39:38", 100, null, 340004, 340006, 600, IMG_path_340006, "中门寺南坡社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:69", new SmartPathDevice("9B:B7:0A:80:39:69", "9B:B7:0A:80:39:69", 100, null, 340005, 340006, 600, IMG_path_340006, "中门寺南坡社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:66", new SmartPathDevice("9B:B7:0A:80:39:66", "9B:B7:0A:80:39:66", 100, null, 340006, 340006, 600, IMG_path_340006, "中门寺南坡社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:56", new SmartPathDevice("9B:B7:0A:80:39:56", "9B:B7:0A:80:39:56", 100, null, 350001, 350004, 400, IMG_path_350004, "滨河西区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:99", new SmartPathDevice("9B:B7:0A:80:38:99", "9B:B7:0A:80:38:99", 100, null, 350002, 350004, 400, IMG_path_350004, "滨河西区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:67", new SmartPathDevice("9B:B7:0A:80:38:67", "9B:B7:0A:80:38:67", 100, null, 350003, 350004, 400, IMG_path_350004, "滨河西区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:12", new SmartPathDevice("9B:B7:0A:80:39:12", "9B:B7:0A:80:39:12", 100, null, 350004, 350004, 400, IMG_path_350004, "滨河西区社区"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:59", new SmartPathDevice("9B:B7:0A:80:39:59", "9B:B7:0A:80:39:59", 100, null, 360001, 360003, 300, IMG_path_360003, "东杨庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:58", new SmartPathDevice("9B:B7:0A:80:39:58", "9B:B7:0A:80:39:58", 100, null, 360002, 360003, 300, IMG_path_360003, "东杨庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:52", new SmartPathDevice("9B:B7:0A:80:38:52", "9B:B7:0A:80:38:52", 100, null, 360003, 360003, 300, IMG_path_360003, "东杨庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:26", new SmartPathDevice("9B:B7:0A:80:39:26", "9B:B7:0A:80:39:26", 100, null, 370001, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:65", new SmartPathDevice("9B:B7:0A:80:38:65", "9B:B7:0A:80:38:65", 100, null, 370002, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:06", new SmartPathDevice("9B:B7:0A:80:39:06", "9B:B7:0A:80:39:06", 100, null, 370003, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:60", new SmartPathDevice("9B:B7:0A:80:38:60", "9B:B7:0A:80:38:60", 100, null, 370004, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:76", new SmartPathDevice("9B:B7:0A:80:39:76", "9B:B7:0A:80:39:76", 100, null, 370005, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:08", new SmartPathDevice("9B:B7:0A:80:40:08", "9B:B7:0A:80:40:08", 100, null, 370006, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:27", new SmartPathDevice("9B:B7:0A:80:39:27", "9B:B7:0A:80:39:27", 100, null, 370007, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:90", new SmartPathDevice("9B:B7:0A:80:39:90", "9B:B7:0A:80:39:90", 100, null, 370008, 370008, 800, IMG_path_370008, "滨水森林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:93", new SmartPathDevice("9B:B7:0A:80:38:93", "9B:B7:0A:80:38:93", 100, null, 380001, 380004, 400, IMG_path_380004, "西长沟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:61", new SmartPathDevice("9B:B7:0A:80:38:61", "9B:B7:0A:80:38:61", 100, null, 380002, 380004, 400, IMG_path_380004, "西长沟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:91", new SmartPathDevice("9B:B7:0A:80:38:91", "9B:B7:0A:80:38:91", 100, null, 380003, 380004, 400, IMG_path_380004, "西长沟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:96", new SmartPathDevice("9B:B7:0A:80:38:96", "9B:B7:0A:80:38:96", 100, null, 380004, 380004, 400, IMG_path_380004, "西长沟村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:79", new SmartPathDevice("9B:B7:0A:80:39:79", "9B:B7:0A:80:39:79", 100, null, 390001, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:17", new SmartPathDevice("9B:B7:0A:80:39:17", "9B:B7:0A:80:39:17", 100, null, 390002, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:43", new SmartPathDevice("9B:B7:0A:80:39:43", "9B:B7:0A:80:39:43", 100, null, 390003, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:55", new SmartPathDevice("9B:B7:0A:80:38:55", "9B:B7:0A:80:38:55", 100, null, 390004, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:57", new SmartPathDevice("9B:B7:0A:80:38:57", "9B:B7:0A:80:38:57", 100, null, 390005, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:67", new SmartPathDevice("9B:B7:0A:80:39:67", "9B:B7:0A:80:39:67", 100, null, 390006, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:11", new SmartPathDevice("9B:B7:0A:80:40:11", "9B:B7:0A:80:40:11", 100, null, 390007, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:48", new SmartPathDevice("9B:B7:0A:80:39:48", "9B:B7:0A:80:39:48", 100, null, 390008, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:37", new SmartPathDevice("9B:B7:0A:80:39:37", "9B:B7:0A:80:39:37", 100, null, 390009, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:97", new SmartPathDevice("9B:B7:0A:80:38:97", "9B:B7:0A:80:38:97", 100, null, 390010, 390010, 1000, IMG_path_390010, "太和庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:73", new SmartPathDevice("9B:B7:0A:80:38:73", "9B:B7:0A:80:38:73", 100, null, 400001, 400006, 600, IMG_path_400006, "南正村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:07", new SmartPathDevice("9B:B7:0A:80:40:07", "9B:B7:0A:80:40:07", 100, null, 400002, 400006, 600, IMG_path_400006, "南正村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:94", new SmartPathDevice("9B:B7:0A:80:39:94", "9B:B7:0A:80:39:94", 100, null, 400003, 400006, 600, IMG_path_400006, "南正村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:11", new SmartPathDevice("9B:B7:0A:80:39:11", "9B:B7:0A:80:39:11", 100, null, 400004, 400006, 600, IMG_path_400006, "南正村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:98", new SmartPathDevice("9B:B7:0A:80:39:98", "9B:B7:0A:80:39:98", 100, null, 400005, 400006, 600, IMG_path_400006, "南正村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:09", new SmartPathDevice("9B:B7:0A:80:39:09", "9B:B7:0A:80:39:09", 100, null, 400006, 400006, 600, IMG_path_400006, "南正村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:32", new SmartPathDevice("9B:B7:0A:80:39:32", "9B:B7:0A:80:39:32", 100, null, 410001, 410007, 700, IMG_path_410007, "郑庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:42", new SmartPathDevice("9B:B7:0A:80:39:42", "9B:B7:0A:80:39:42", 100, null, 410002, 410007, 700, IMG_path_410007, "郑庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:84", new SmartPathDevice("9B:B7:0A:80:39:84", "9B:B7:0A:80:39:84", 100, null, 410003, 410007, 700, IMG_path_410007, "郑庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:79", new SmartPathDevice("9B:B7:0A:80:38:79", "9B:B7:0A:80:38:79", 100, null, 410004, 410007, 700, IMG_path_410007, "郑庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:54", new SmartPathDevice("9B:B7:0A:80:38:54", "9B:B7:0A:80:38:54", 100, null, 410005, 410007, 700, IMG_path_410007, "郑庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:08", new SmartPathDevice("9B:B7:0A:80:39:08", "9B:B7:0A:80:39:08", 100, null, 410006, 410007, 700, IMG_path_410007, "郑庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:49", new SmartPathDevice("9B:B7:0A:80:39:49", "9B:B7:0A:80:39:49", 100, null, 410007, 410007, 700, IMG_path_410007, "郑庄村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:22", new SmartPathDevice("9B:B7:0A:80:39:22", "9B:B7:0A:80:39:22", 100, null, 420001, 420005, 500, IMG_path_420005, "石家营村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:81", new SmartPathDevice("9B:B7:0A:80:38:81", "9B:B7:0A:80:38:81", 100, null, 420002, 420005, 500, IMG_path_420005, "石家营村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:04", new SmartPathDevice("9B:B7:0A:80:40:04", "9B:B7:0A:80:40:04", 100, null, 420003, 420005, 500, IMG_path_420005, "石家营村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:10", new SmartPathDevice("9B:B7:0A:80:39:10", "9B:B7:0A:80:39:10", 100, null, 420004, 420005, 500, IMG_path_420005, "石家营村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:36", new SmartPathDevice("9B:B7:0A:80:39:36", "9B:B7:0A:80:39:36", 100, null, 420005, 420005, 500, IMG_path_420005, "石家营村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:10", new SmartPathDevice("9B:B7:0A:80:40:10", "9B:B7:0A:80:40:10", 100, null, 430001, 430004, 400, IMG_path_430004, "寺上村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:40:05", new SmartPathDevice("9B:B7:0A:80:40:05", "9B:B7:0A:80:40:05", 100, null, 430002, 430004, 400, IMG_path_430004, "寺上村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:83", new SmartPathDevice("9B:B7:0A:80:39:83", "9B:B7:0A:80:39:83", 100, null, 430003, 430004, 400, IMG_path_430004, "寺上村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:49", new SmartPathDevice("9B:B7:0A:80:38:49", "9B:B7:0A:80:38:49", 100, null, 430004, 430004, 400, IMG_path_430004, "寺上村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:89", new SmartPathDevice("9B:B7:0A:80:39:89", "9B:B7:0A:80:39:89", 100, null, 440001, 440004, 400, IMG_path_440004, "宏福公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:66", new SmartPathDevice("9B:B7:0A:80:38:66", "9B:B7:0A:80:38:66", 100, null, 440002, 440004, 400, IMG_path_440004, "宏福公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:65", new SmartPathDevice("9B:B7:0A:80:39:65", "9B:B7:0A:80:39:65", 100, null, 440003, 440004, 400, IMG_path_440004, "宏福公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:53", new SmartPathDevice("9B:B7:0A:80:39:53", "9B:B7:0A:80:39:53", 100, null, 440004, 440004, 400, IMG_path_440004, "宏福公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:93", new SmartPathDevice("9B:B7:0A:80:39:93", "9B:B7:0A:80:39:93", 100, null, 450001, 450003, 300, IMG_path_450003, "枣林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:14", new SmartPathDevice("9B:B7:0A:80:39:14", "9B:B7:0A:80:39:14", 100, null, 450002, 450003, 300, IMG_path_450003, "枣林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:13", new SmartPathDevice("9B:B7:0A:80:39:13", "9B:B7:0A:80:39:13", 100, null, 450003, 450003, 300, IMG_path_450003, "枣林公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:03", new SmartPathDevice("9B:B7:0A:80:39:03", "9B:B7:0A:80:39:03", 100, null, 460001, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:75", new SmartPathDevice("9B:B7:0A:80:39:75", "9B:B7:0A:80:39:75", 100, null, 460002, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:87", new SmartPathDevice("9B:B7:0A:80:38:87", "9B:B7:0A:80:38:87", 100, null, 460003, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:81", new SmartPathDevice("9B:B7:0A:80:39:81", "9B:B7:0A:80:39:81", 100, null, 460004, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:83", new SmartPathDevice("9B:B7:0A:80:38:83", "9B:B7:0A:80:38:83", 100, null, 460005, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:25", new SmartPathDevice("9B:B7:0A:80:39:25", "9B:B7:0A:80:39:25", 100, null, 460006, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:01", new SmartPathDevice("9B:B7:0A:80:39:01", "9B:B7:0A:80:39:01", 100, null, 460007, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:92", new SmartPathDevice("9B:B7:0A:80:39:92", "9B:B7:0A:80:39:92", 100, null, 460008, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:80", new SmartPathDevice("9B:B7:0A:80:39:80", "9B:B7:0A:80:39:80", 100, null, 460009, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:73", new SmartPathDevice("9B:B7:0A:80:38:73", "9B:B7:0A:80:38:73", 100, null, 460010, 460010, 1000, IMG_path_460010, "兴旺公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:99", new SmartPathDevice("9B:B7:0A:80:39:99", "9B:B7:0A:80:39:99", 100, null, 470001, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:77", new SmartPathDevice("9B:B7:0A:80:39:77", "9B:B7:0A:80:39:77", 100, null, 470002, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:60", new SmartPathDevice("9B:B7:0A:80:39:60", "9B:B7:0A:80:39:60", 100, null, 470003, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:91", new SmartPathDevice("9B:B7:0A:80:39:91", "9B:B7:0A:80:39:91", 100, null, 470004, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:98", new SmartPathDevice("9B:B7:0A:80:38:98", "9B:B7:0A:80:38:98", 100, null, 470005, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:28", new SmartPathDevice("9B:B7:0A:80:39:28", "9B:B7:0A:80:39:28", 100, null, 470006, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:54", new SmartPathDevice("9B:B7:0A:80:39:54", "9B:B7:0A:80:39:54", 100, null, 470007, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:80", new SmartPathDevice("9B:B7:0A:80:38:80", "9B:B7:0A:80:38:80", 100, null, 470008, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:31", new SmartPathDevice("9B:B7:0A:80:39:31", "9B:B7:0A:80:39:31", 100, null, 470009, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:69", new SmartPathDevice("9B:B7:0A:80:38:69", "9B:B7:0A:80:38:69", 100, null, 470010, 470010, 1000, IMG_path_470010, "莲花潭村"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:62", new SmartPathDevice("9B:B7:0A:80:38:62", "9B:B7:0A:80:38:62", 100, null, 480001, 480003, 300, IMG_path_480003, "克头村南公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:38:56", new SmartPathDevice("9B:B7:0A:80:38:56", "9B:B7:0A:80:38:56", 100, null, 480002, 480003, 300, IMG_path_480003, "克头村南公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:39:18", new SmartPathDevice("9B:B7:0A:80:39:18", "9B:B7:0A:80:39:18", 100, null, 480003, 480003, 300, IMG_path_480003, "克头村南公园"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:64", new SmartPathDevice("9B:B7:0A:80:16:64", "9B:B7:0A:80:16:64", 80, null, 500001, 500006, 660, IMG_path_210005, "芍药居北里2"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:16:97", new SmartPathDevice("9B:B7:0A:80:16:97", "9B:B7:0A:80:16:97", 100, null, 500002, 500006, 660, IMG_path_210005, "芍药居北里2"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:35", new SmartPathDevice("9B:B7:0A:80:23:35", "9B:B7:0A:80:23:35", 120, null, 500003, 500006, 660, IMG_path_210005, "芍药居北里2"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:43", new SmartPathDevice("9B:B7:0A:80:23:43", "9B:B7:0A:80:23:43", 140, null, 500004, 500006, 660, IMG_path_210005, "芍药居北里2"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:92", new SmartPathDevice("9B:B7:0A:80:23:92", "9B:B7:0A:80:23:92", 160, null, 500005, 500006, 660, IMG_path_210005, "芍药居北里2"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:24:26", new SmartPathDevice("9B:B7:0A:80:24:26", "9B:B7:0A:80:24:26", 180, null, 500006, 500006, 660, IMG_path_210005, "芍药居北里2"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:17:38", new SmartPathDevice("9B:B7:0A:80:17:38", "9B:B7:0A:80:17:38", 36, null, 510001, 510005, 145, IMG_path_210005, "舒华步道"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:20:84", new SmartPathDevice("9B:B7:0A:80:20:84", "9B:B7:0A:80:20:84", 36, null, 510002, 510005, 145, IMG_path_210005, "舒华步道"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:20:85", new SmartPathDevice("9B:B7:0A:80:20:85", "9B:B7:0A:80:20:85", 36, null, 510003, 510005, 145, IMG_path_210005, "舒华步道"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:23:90", new SmartPathDevice("9B:B7:0A:80:23:90", "9B:B7:0A:80:23:90", 37, null, 510004, 510005, 145, IMG_path_210005, "舒华步道"));
        this.mGloblePathDeviceMap.put("9B:B7:0A:80:24:38", new SmartPathDevice("9B:B7:0A:80:24:38", "9B:B7:0A:80:24:38", 37, null, 510005, 510005, 145, IMG_path_210005, "舒华步道"));
        LOG.i("FootPathFragment", "2!!!!!!!mPathDeviceQueue.size " + this.mGloblePathDeviceMap.size());
    }

    private void postResultData()
    {
        String str1 = Commons.getPreference(Configs.token);
        String str2 = String.valueOf(this.mAvrgSpeed);
        String str3 = String.valueOf(this.mCalories);
        String str4 = "";
        String str5 = "";
        if ((this.mPathDeviceQueue != null) && (!this.mPathDeviceQueue.isEmpty()))
        {
            SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日   HH:mm:ss", Locale.CHINA);
            str4 = localSimpleDateFormat.format(new Date(((SmartPathDeviceInstance)this.mPathDeviceQueue.getFirst()).getPathSensorTimeStamp()));
            str5 = localSimpleDateFormat.format(new Date(((SmartPathDeviceInstance)this.mPathDeviceQueue.getFirst()).getPathSensorTimeStamp() + this.mRoundDuration_ms));
        }
        String str6 = str4;
        String str7 = String.valueOf(this.mRoundDuration_ms + this.mOldDuration_ms);
        String str8 = str5;
        String str9 = String.valueOf(this.mStepCnt + this.mOldStepCnt);
        String str10 = String.valueOf(this.mDistance_m);
        String str11 = String.valueOf(this.mCircleCnt);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("token", str1);
        localRequestParams.addBodyParameter("itemId", "2100000");
        localRequestParams.addBodyParameter("averageSpeed", str2);
        localRequestParams.addBodyParameter("kcal", str3);
        localRequestParams.addBodyParameter("startTime", str6);
        localRequestParams.addBodyParameter("duration", str7);
        localRequestParams.addBodyParameter("endTime", str8);
        localRequestParams.addBodyParameter("steps", str9);
        localRequestParams.addBodyParameter("distance", str10);
        localRequestParams.addBodyParameter("laps", str11);
        this.bean.setItemId("2100000");
        this.bean.setAverageSpeed(str2);
        this.bean.setKcal(str3);
        this.bean.setStartTime(str6);
        this.bean.setDuration(str7);
        this.bean.setEndTime(str8);
        this.bean.setSteps(str9);
        this.bean.setDistance(str10);
        this.bean.setLaps(str11);
        if (!this.isFindNoUploadData)
        {
            showToastShort(getString(2131165309));
            return;
        }
        HttpUtils localHttpUtils = new HttpUtils();
        HttpRequest.HttpMethod localHttpMethod = HttpRequest.HttpMethod.POST;
        String str12 = UrlConfig.USAGEDATA;
        RequestCallBack local22 = new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("path onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                if (((JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class)).getCode().equals(Configs.isSuccess))
                {
                    Configs.isPathDataUpdated = true;
                    LOG.i("上传成功");
                    FootPathFragment.this.setFootData(String.valueOf(FootPathFragment.this.mCircleCnt), String.valueOf(FootPathFragment.this.mDistance_m));
                    if (FootPathFragment.this.isFindNoUploadData)
                    {
                        FootPathFragment.access$7002(FootPathFragment.this, false);
                        FootPathFragment.this.findNoUploadData();
                    }
                }
            }
        };
        localHttpUtils.send(localHttpMethod, str12, localRequestParams, local22);
    }

    private void restartScan()
    {
        LOG.i("FootPathFragment", "restart Scanning");
        this.mReScanCnt = (1 + this.mReScanCnt);
        stopScan();
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if ((FootPathFragment.this.mIsActive) && (!FootPathFragment.this.mIsFinished))
                                              FootPathFragment.this.startScan();
                                      }
                                  }
                , 1500L);
    }

    private void saveTodayDataToLocal()
    {
        long l = this.mRoundDuration_ms + this.mOldDuration_ms;
        int i = this.mStepCnt + this.mOldStepCnt;
        Commons.setPreference(Configs.TodaySteps, i);
        Commons.setPreference(Configs.TodayDistance, this.mDistance_m);
        Commons.setPreference(Configs.TodayDuration, l);
        Commons.setPreference(Configs.TodayCircle, this.mCircleCnt);
        Commons.setPreference(Configs.TodaySpeed, (float)this.mAvrgSpeed);
        Commons.setPreference(Configs.TodayCal, (float)this.mCalories);
        Commons.setPreference(Configs.PathDataSaveDate, getNowTimeDateStr());
    }

    private void setFootData(String paramString1, String paramString2)
    {
        TodayDataUtil localTodayDataUtil = new TodayDataUtil();
        TodayDataUtil.FootPath localFootPath = new TodayDataUtil.FootPath();
        localFootPath.setRotateCount(paramString1);
        localFootPath.setDistance(paramString2);
        localFootPath.setName("步道");
        localFootPath.setTime(TodayDataUtil.getDateKey());
        localTodayDataUtil.FootPathData(localFootPath);
    }

    private void setLocalNetData(List<SensorsBean> paramList)
    {
        int i = 0;
        int j = 0;
        int k = 0;
        for (int m = 0; m < paramList.size(); m++)
        {
            SensorsBean localSensorsBean2 = (SensorsBean)paramList.get(m);
            if (Commons.strIsNull(localSensorsBean2.getSpace()))
                i += Integer.valueOf(localSensorsBean2.getSpace()).intValue();
            int i4 = Integer.valueOf(localSensorsBean2.getSensorId()).intValue();
            if (i4 > j)
            {
                j = i4;
                k = Integer.valueOf(localSensorsBean2.getSortOrder()).intValue();
            }
        }
        int n = k + j * 10000;
        LOG.i(paramList.size() + "maxID = " + n);
        for (int i1 = 0; i1 < paramList.size(); i1++)
        {
            SensorsBean localSensorsBean1 = (SensorsBean)paramList.get(i1);
            if (!Commons.strIsNull(localSensorsBean1.getSpace()))
                localSensorsBean1.setSpace("0");
            String str = localSensorsBean1.getBtAddr();
            int i2 = Integer.valueOf(localSensorsBean1.getSpace()).intValue();
            int i3 = 10000 * Integer.valueOf(localSensorsBean1.getSensorId()).intValue() + Integer.valueOf(localSensorsBean1.getSortOrder()).intValue();
            this.mGloblePathDeviceMap.put(str, new SmartPathDevice(str, str, i2, localSensorsBean1.getSensorId(), i3, n, i, IMG_path_default, "北京市"));
        }
    }

    private void setOldData(FootPathFragmentBean paramFootPathFragmentBean)
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("token", str);
        localRequestParams.addBodyParameter("itemId", paramFootPathFragmentBean.getItemId());
        localRequestParams.addBodyParameter("averageSpeed", paramFootPathFragmentBean.getAverageSpeed());
        localRequestParams.addBodyParameter("kcal", paramFootPathFragmentBean.getKcal());
        localRequestParams.addBodyParameter("startTime", paramFootPathFragmentBean.getStartTime());
        localRequestParams.addBodyParameter("duration", paramFootPathFragmentBean.getDuration());
        localRequestParams.addBodyParameter("endTime", paramFootPathFragmentBean.getEndTime());
        localRequestParams.addBodyParameter("steps", paramFootPathFragmentBean.getSteps());
        localRequestParams.addBodyParameter("distance", paramFootPathFragmentBean.getDistance());
        localRequestParams.addBodyParameter("laps", paramFootPathFragmentBean.getLaps());
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.USAGEDATA, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("path onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                if (((JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class)).getCode().equals(Configs.isSuccess))
                {
                    LOG.i("上传成功");
                    if (FootPathFragment.this.oldDataIsUpload)
                    {
                        FootPathFragment.this.deleteDbData();
                        FootPathFragment.access$7408(FootPathFragment.this);
                        FootPathFragment.this.uploadOldData();
                    }
                }
            }
        });
    }

    private void setTextViewColor(int paramInt1, int paramInt2, int paramInt3)
    {
        this.mTv1_1.setTextColor(Color.rgb(paramInt1, paramInt2, paramInt3));
        this.mTv2_1.setTextColor(Color.rgb(paramInt1, paramInt2, paramInt3));
        this.mTv2_2.setTextColor(Color.rgb(paramInt1, paramInt2, paramInt3));
        this.mTv2_3.setTextColor(Color.rgb(paramInt1, paramInt2, paramInt3));
        this.mTv3_1.setTextColor(Color.rgb(paramInt1, paramInt2, paramInt3));
        this.mTv3_2.setTextColor(Color.rgb(paramInt1, paramInt2, paramInt3));
        this.mTv3_3.setTextColor(Color.rgb(paramInt1, paramInt2, paramInt3));
    }

    private void showSystemBlockScanDialog()
    {
        LOG.i("FootPathFragment", "showSystemBlockScanDialog");
        if ((this.mBLEBlockedDialog == null) && (this.mBLEBlockedPrompt != null))
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    FootPathFragment.this.mBLEBlockedDialog = FootPathFragment.this.mBLEBlockedPrompt.show();
                }
            });
        while ((this.mBLEBlockedDialog.isShowing()) || (this.mBLEBlockedPrompt == null))
            return;
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                FootPathFragment.this.mBLEBlockedDialog = FootPathFragment.this.mBLEBlockedPrompt.show();
            }
        });
    }

    private void showSystemTerminateDialog()
    {
        LOG.i("FootPathFragment", "showSystemTerminateDialog");
        if (this.mBLEBlockedPrompt != null)
        {
            this.mBLEBlockedPrompt.setTitle("允许程序在后台运行");
            this.mBLEBlockedPrompt.setMessage("您的手机系统阻止智能步道程序在后台长期运行！为了使程序能正常运行，请设置允许该程序后台运行!");
        }
        showSystemBlockScanDialog();
    }

    private void startLocation()
    {
        this.locationService = ((WukongApplication)getActivity().getApplicationContext()).locationService;
        this.locationService.registerListener(this.mListener);
        this.locationService.setLocationOption(this.locationService.getDefaultLocationClientOption());
        this.locationService.start();
    }

    private void startScan()
    {
        this.handler.sendEmptyMessage(2);
    }

    private void stopLocation()
    {
        this.locationService.unregisterListener(this.mListener);
        this.locationService.stop();
    }

    private void stopScan()
    {
        this.handler.sendEmptyMessage(3);
    }

    private void tryAddPathDeviceToPathQue(String paramString, int paramInt)
    {
        boolean bool = this.mPathDeviceQueue.isEmpty();
        SmartPathDeviceInstance localSmartPathDeviceInstance1 = null;
        if (!bool)
        {
            localSmartPathDeviceInstance1 = (SmartPathDeviceInstance)this.mPathDeviceQueue.peekLast();
            if (localSmartPathDeviceInstance1 != null)
                if (localSmartPathDeviceInstance1.getSmartPathDevice().getPathSensorAddress().equals(paramString))
                {
                    localSmartPathDeviceInstance1.setPathSensorRssi(paramInt);
                    localSmartPathDeviceInstance1.setPathSensorTimeStamp(System.currentTimeMillis());
                }
        }
        SmartPathDeviceInstance localSmartPathDeviceInstance2;
        do
        {
            do
            {
                return;
                if (System.currentTimeMillis() - localSmartPathDeviceInstance1.getPathSensorTimeStamp() < 5000L)
                    localSmartPathDeviceInstance1.setPathSensorRssi(-135);
            }
            while (!this.mLocalPathDeviceMap.containsKey(paramString));
            if (localSmartPathDeviceInstance1 != null)
                LOG.i("FootPathFragment", "rssi" + localSmartPathDeviceInstance1.getSmartPathDevice().getOrder() + " lastIns:" + localSmartPathDeviceInstance1.getPathSensorIssi() + " instance:" + paramInt);
            LOG.i("FootPathFragment", "mPathDeviceQueue.size: " + this.mPathDeviceQueue.size() + " " + paramString);
            localSmartPathDeviceInstance2 = new SmartPathDeviceInstance((SmartPathDevice)this.mLocalPathDeviceMap.get(paramString), System.currentTimeMillis(), paramInt);
            this.mPathDeviceQueue.add(localSmartPathDeviceInstance2);
        }
        while ((this.mPathDeviceQueue.size() <= 1) || (localSmartPathDeviceInstance1 == null));
        LOG.i("FootPathFragment", "<issi " + localSmartPathDeviceInstance1.getSmartPathDevice().getOrder() + " lastIns:" + localSmartPathDeviceInstance1.getSmartPathDevice().getPathSensorRssiInstantLP() + " instance:" + paramInt + " " + paramString);
        int i = localSmartPathDeviceInstance2.getSmartPathDevice().getPathType();
        int j = 0;
        if (i == 1001)
        {
            if (localSmartPathDeviceInstance1.getSmartPathDevice().getOrder() - localSmartPathDeviceInstance2.getSmartPathDevice().getOrder() != 1)
                break label688;
            j = localSmartPathDeviceInstance2.getSmartPathDevice().getNextSensorDistance_m();
            if (localSmartPathDeviceInstance1.getSmartPathDevice().getMaxOrder() != localSmartPathDeviceInstance2.getSmartPathDevice().getMaxOrder())
                break label836;
        }
        while (true)
        {
            this.mDistance_m = (j + this.mDistance_m);
            this.mAvrgSpeed = (3.6D * (this.mDistance_m / (this.mRoundDuration_ms / 1000.0D)));
            this.mCalories = (0.065D * this.mDistance_m);
            this.mCircleCnt = (this.mDistance_m / localSmartPathDeviceInstance2.getSmartPathDevice().getDistancePerCircle_m());
            float f1 = Commons.getPreferenceFloat(Configs.TotalCal) + (float)(0.065D * j);
            float f2 = Commons.getPreferenceFloat(Configs.TotalMeter) + j;
            float f3 = Commons.getPreferenceFloat(Configs.TotalCircle) + j / localSmartPathDeviceInstance2.getSmartPathDevice().getDistancePerCircle_m();
            Commons.setPreference(Configs.TotalCal, f1);
            Commons.setPreference(Configs.TotalMeter, f2);
            Commons.setPreference(Configs.TotalCircle, f3);
            saveTotalDays();
            if (Configs.isPath)
            {
                if (this.mCircleCnt - this.mLastmCircleCnt == 1.0F)
                {
                    this.mLastmCircleCnt = ((int)this.mCircleCnt);
                    this.mTTSService.ttsPlay("已行走：" + this.mCircleCnt + "圈。" + this.mDistance_m + "米");
                    showToastShort(" 第" + this.mCircleCnt + "圈");
                }
                showToastShort("行走距离: " + this.mDistance_m + "米");
            }
            updateUI();
            saveTodayDataToLocal();
            return;
            label688: if (localSmartPathDeviceInstance1.getSmartPathDevice().getOrder() - localSmartPathDeviceInstance2.getSmartPathDevice().getOrder() == -1)
            {
                j = localSmartPathDeviceInstance1.getSmartPathDevice().getNextSensorDistance_m();
                break;
            }
            if ((localSmartPathDeviceInstance1.getSmartPathDevice().getOrder() == localSmartPathDeviceInstance2.getSmartPathDevice().getMaxOrder()) && (localSmartPathDeviceInstance2.getSmartPathDevice().getOrder() % 10000 == 1))
            {
                j = localSmartPathDeviceInstance1.getSmartPathDevice().getNextSensorDistance_m();
                break;
            }
            int k = localSmartPathDeviceInstance1.getSmartPathDevice().getOrder() % 10000;
            j = 0;
            if (k != 1)
                break;
            int m = localSmartPathDeviceInstance2.getSmartPathDevice().getOrder();
            int n = localSmartPathDeviceInstance1.getSmartPathDevice().getMaxOrder();
            j = 0;
            if (m != n)
                break;
            j = localSmartPathDeviceInstance2.getSmartPathDevice().getNextSensorDistance_m();
            break;
            label836: this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    if (FootPathFragment.this.mTTSService != null)
                    {
                        FootPathFragment.this.mTTSService.ttsStop();
                        FootPathFragment.this.mTTSService.ttsPlay("探测到您已进入另一条智能步道！计时重新开始！");
                    }
                }
            });
            showToastLong("您已进入另一条智能步道");
            this.mPathDeviceQueue.clear();
            this.mPathDeviceQueue.add(localSmartPathDeviceInstance2);
            this.mDistance_m = 0;
            this.mRoundDuration_ms = 0L;
        }
    }

    private void updateResult(List<ScanResult> paramList)
    {
        for (int i = 0; i < paramList.size(); i++)
        {
            BluetoothDevice localBluetoothDevice = ((ScanResult)paramList.get(i)).getDevice();
            this.mTempDeviceName = localBluetoothDevice.getName();
            if ((this.mTempDeviceName != null) && ((this.mTempDeviceName.startsWith("YAXLpth")) || (this.mTempDeviceName.startsWith("YAXLfc"))))
            {
                if (this.mPathDeviceQueue.isEmpty())
                {
                    if ((Configs.isPath) && (!this.mTipsShown))
                    {
                        this.mHandler.postDelayed(new Runnable()
                                                  {
                                                      public void run()
                                                      {
                                                          if (FootPathFragment.this.mTTSService != null)
                                                          {
                                                              FootPathFragment.this.mTTSService.ttsStop();
                                                              FootPathFragment.this.mTTSService.ttsPlay("您已进入智能步道！沿步道行走将会自动记录您的行走距离和圈数！");
                                                              FootPathFragment.this.mTTSService.ttsPlay("计时开始！");
                                                          }
                                                          FootPathFragment.this.goneTopImg();
                                                      }
                                                  }
                                , 1000L);
                        showToastLong("您已进入智能步道");
                        showToastShort("沿步道行走将会自动记录");
                        showToastShort("您的行走距离和圈数");
                        this.mRoundStartTime = System.currentTimeMillis();
                        if (this.mFirstRunStartTime == 0L)
                            this.mFirstRunStartTime = this.mRoundStartTime;
                        this.mTipsShown = true;
                        LOG.i("FootPathFragment", "您已进入智能步道");
                        this.mTimer.schedule(new TimerTask()
                                             {
                                                 public void run()
                                                 {
                                                     if ((!FootPathFragment.this.mPathDeviceQueue.isEmpty()) && (FootPathFragment.this.mIsScanning))
                                                     {
                                                         FootPathFragment.access$802(FootPathFragment.this, System.currentTimeMillis() - FootPathFragment.this.mRoundStartTime);
                                                         FootPathFragment.this.updateUI();
                                                     }
                                                 }
                                             }
                                , 0L, 1000L);
                    }
                    if (this.mGloblePathDeviceMap.isEmpty())
                        loadPathDevice(localBluetoothDevice.getAddress());
                }
                String str = localBluetoothDevice.getAddress();
                if (this.mGloblePathDeviceMap.containsKey(str))
                {
                    SmartPathDevice localSmartPathDevice = (SmartPathDevice)this.mGloblePathDeviceMap.get(str);
                    localSmartPathDevice.setPathSensorRssiInstantLP(NativeSupport.calLP(localSmartPathDevice.getPathSensorRssiInstantLP(), ((ScanResult)paramList.get(i)).getRssi(), 14));
                    localSmartPathDevice.setUpdated(true);
                    localSmartPathDevice.setLatestTimeStamp(System.currentTimeMillis());
                }
            }
        }
        if (paramList.size() == 0)
        {
            this.mRound_InvalidUpdateCnt = (1 + this.mRound_InvalidUpdateCnt);
            LOG.i("FootPathFragment", "mRound_InvalidUpdateCnt:" + this.mRound_InvalidUpdateCnt + " mReScanCnt:" + this.mReScanCnt);
            if (this.mRound_InvalidUpdateCnt > 20)
            {
                if (this.mLatestUpdateTS != this.mScanStartTime)
                    break label408;
                this.mRestartScanCnt_InvalidUpdate = (1 + this.mRestartScanCnt_InvalidUpdate);
                LOG.i("FootPathFragment", "start scan fails");
                restartScan();
                if (this.mRestartScanCnt_InvalidUpdate >= 3)
                    showToastLong("未处于智能步道内或\n手机蓝牙设备问题，\n请尝试重启蓝牙！");
            }
        }
        while (true)
        {
            calNearestPathDeviceLP();
            return;
            label408: if (!isInPowerWhiteList())
            {
                if (!Commons.getPreferenceBoolean(Configs.NoBackgroundRunTips))
                    showSystemBlockScanDialog();
                ((BleProfileNonFuncActivity)getActivity()).acquireWakeLock();
                showToastShort("已经行走: " + this.mDistance_m + "米");
                showToastLong("智能步道程序可能无法正常接收蓝牙信号！请设置允许该程序在后台运行");
            }
            restartScan();
            continue;
            this.mLatestUpdateTS = System.currentTimeMillis();
            this.mRestartScanCnt_InvalidUpdate = 0;
            this.mRound_InvalidUpdateCnt = 0;
        }
    }

    private void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if ((Configs.isPath & FootPathFragment.this.mIsScanning))
                {
                    long l = FootPathFragment.this.mRoundDuration_ms + FootPathFragment.this.mOldDuration_ms;
                    LOG.i("FootPathFragment", "mRoundDuration_ms:" + FootPathFragment.this.mRoundDuration_ms + "+ mOldDuration_ms: " + FootPathFragment.this.mOldDuration_ms);
                    FootPathFragment.this.mTv1_1.setText(String.valueOf(FootPathFragment.this.mStepCnt + FootPathFragment.this.mOldStepCnt));
                    FootPathFragment.this.mTv2_1.setText(String.valueOf(FootPathFragment.this.mDistance_m));
                    int i = (int)l / 1000 % 60;
                    int j = (int)l / 1000 / 60 % 60;
                    int k = (int)l / 1000 / 3600;
                    FootPathFragment.this.mTv2_2.setText(k + ":" + j + ":" + i);
                    FootPathFragment.this.mTv2_3.setText(FootPathFragment.this.getFirstNChars(FootPathFragment.this.mCircleCnt, 4));
                    FootPathFragment.this.mTv3_1.setText(FootPathFragment.this.getFirstNChars(FootPathFragment.this.mAvrgSpeed, 4));
                    FootPathFragment.this.mTv3_3.setText(FootPathFragment.this.getFirstNChars(FootPathFragment.this.mCalories, 4));
                }
            }
        });
    }

    private void uploadOldData()
    {
        if (this.curnum < this.size)
            setOldData((FootPathFragmentBean)this.list.get(this.curnum));
    }

    public void onAccuracyChanged(Sensor paramSensor, int paramInt)
    {
    }

    public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    {
        LOG.i("FootPathFragment", "resultCode: " + paramInt2);
        this.mIsActive = true;
        if (this.mStoppedByHeartRate)
        {
            startScan();
            this.mStoppedByHeartRate = false;
        }
        if (paramInt1 == 1);
        switch (paramInt2)
        {
            case 0:
            default:
            case 1:
                final int i;
                final int j;
                final int k;
                do
                {
                    do
                        return;
                    while ((this.mTv3_2 == null) || (paramIntent == null));
                    i = paramIntent.getIntExtra("AvrgHeartRate", 0);
                    j = paramIntent.getIntExtra("MaxHeartRate", 0);
                    k = paramIntent.getIntExtra("MinHeartRate", 0);
                }
                while (i <= 30);
                this.mHandler.postDelayed(new Runnable()
                                          {
                                              public void run()
                                              {
                                                  if (FootPathFragment.this.mTTSService != null)
                                                  {
                                                      FootPathFragment.this.mTTSService.ttsStop();
                                                      FootPathFragment.this.mTTSService.ttsPlay("平均心率:" + i + ",最高心率:" + j + ",最低心率:" + k);
                                                  }
                                              }
                                          }
                        , 2000L);
                LOG.i("平均心率:" + i);
                this.mTv3_2.setText(String.valueOf(i));
                return;
            case -1:
                this.mHandler.postDelayed(new Runnable()
                                          {
                                              public void run()
                                              {
                                                  FootPathFragment.this.showToastShort("智能心率设备连接问题，请重试！");
                                                  if (FootPathFragment.this.mTTSService != null)
                                                  {
                                                      FootPathFragment.this.mTTSService.ttsStop();
                                                      FootPathFragment.this.mTTSService.ttsPlay("智能心率设备连接问题，请重试！");
                                                  }
                                              }
                                          }
                        , 1000L);
                return;
            case -2:
                this.mHandler.postDelayed(new Runnable()
                                          {
                                              public void run()
                                              {
                                                  if (FootPathFragment.this.mTTSService != null)
                                                  {
                                                      FootPathFragment.this.mTTSService.ttsStop();
                                                      FootPathFragment.this.mTTSService.ttsPlay("操作超时！");
                                                  }
                                              }
                                          }
                        , 1000L);
                showToastLong("操作超时！");
                return;
            case -3:
        }
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if (FootPathFragment.this.mTTSService != null)
                                          {
                                              FootPathFragment.this.mTTSService.ttsStop();
                                              FootPathFragment.this.mTTSService.ttsPlay("连接超时！");
                                          }
                                      }
                                  }
                , 1000L);
        showToastLong("连接超时！");
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
        Commons.VersionException();
        super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
        this.view = paramLayoutInflater.inflate(2130968639, paramViewGroup, false);
        initUtil();
        this.mSensorManager = ((SensorManager)getActivity().getSystemService("sensor"));
        isInPowerWhiteList();
        this.mIsActive = true;
        this.mIsFinished = false;
        this.mIsPathManDetect = Commons.getPreferenceBoolean(Configs.IsPathManDetect);
        registerStepCountSensor();
        initViews();
        if (!isInPowerWhiteList())
            showSystemTerminateDialog();
        if (getNowTimeDateStr().equals(Commons.getPreference(Configs.PathDataSaveDate, "")))
        {
            getTodayDataFromLocal();
            updateUI();
        }
        while (true)
        {
            return this.view;
            saveTodayDataToLocal();
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (!this.sendSuccess);
        try
        {
            this.DB.save(this.bean);
            return;
        }
        catch (DbException localDbException)
        {
            localDbException.printStackTrace();
        }
    }

    public void onFootPathFragment()
    {
    }

    public void onHiddenChanged(boolean paramBoolean)
    {
        super.onHiddenChanged(paramBoolean);
        if (isHidden())
        {
            showContinueTips();
            saveTodayDataToLocal();
        }
        while (this.mTTSService == null)
            return;
        showApproachingTips();
    }

    public void onPause()
    {
        super.onPause();
        LOG.i("FootPathFragment", "onPause~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        if ((this.mScreenBrightness > 0) && (this.mScreenOffTimeout > 0))
        {
            ((BleProfileNonFuncActivity)getActivity()).setBrightness(this.mScreenBrightness);
            ((BleProfileNonFuncActivity)getActivity()).setSystemScreenOffTimeout(this.mScreenOffTimeout);
        }
        saveTodayDataToLocal();
        Commons.setPreference(Configs.IsNormalFinish, false);
        if (getActivity().isFinishing())
        {
            LOG.i("FootPathFragment", "onPause is finishing~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            Commons.setPreference(Configs.IsNormalFinish, true);
            this.mIsFinished = true;
            this.mIsActive = false;
            stopScan();
            postResultData();
            if (this.mTimer != null)
                this.mTimer.cancel();
            return;
        }
        showContinueTips();
    }

    @TargetApi(23)
    public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
        super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    }

    public void onResume()
    {
        super.onResume();
        startLocation();
        if ((this.mScreenBrightness > 0) && (this.mScreenOffTimeout > 0))
        {
            ((BleProfileNonFuncActivity)getActivity()).setBrightness(this.mScreenBrightness);
            ((BleProfileNonFuncActivity)getActivity()).setSystemScreenOffTimeout(this.mScreenOffTimeout);
        }
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          FootPathFragment.this.showApproachingTips();
                                      }
                                  }
                , 1000L);
    }

    public void onSensorChanged(SensorEvent paramSensorEvent)
    {
        if (paramSensorEvent.sensor.getType() == 19)
        {
            if (this.mFisrtStepCnt < 0)
                this.mFisrtStepCnt = ((int)paramSensorEvent.values[0]);
            this.mStepCnt = ((int)(paramSensorEvent.values[0] - this.mFisrtStepCnt));
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    FootPathFragment.this.mTv1_1.setText(String.valueOf(FootPathFragment.this.mStepCnt + FootPathFragment.this.mOldStepCnt));
                }
            });
            if ((this.mStepCnt + this.mOldStepCnt) % 39 == 0)
                saveTodayDataToLocal();
        }
    }

    @TargetApi(19)
    public void registerStepCountSensor()
    {
        Sensor localSensor1 = this.mSensorManager.getDefaultSensor(19);
        Sensor localSensor2 = this.mSensorManager.getDefaultSensor(18);
        if ((localSensor1 == null) || (localSensor2 == null))
        {
            showToastLong("您的手机不支持步数检测！");
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    FootPathFragment.this.mTv1_1.setTextSize(12.0F);
                    FootPathFragment.this.mTv1_0.setVisibility(4);
                    FootPathFragment.this.mTv1_1.setText("该手机不\n支持计步");
                }
            });
            return;
        }
        this.mSensorManager.registerListener(this, localSensor1, 3);
        this.mSensorManager.registerListener(this, localSensor2, 3);
    }

    public void showApproachingTips()
    {
        if ((Configs.isPath) && (this.mPathDeviceQueue.isEmpty()) && (this.mTTSService != null))
        {
            this.mTTSService.ttsStop();
            if (this.mIsPathManDetect)
                this.mTTSService.ttsPlay("点击开始计时按钮");
            this.mTTSService.ttsPlay("靠近附近的智能步道柱，记录将自动开始！");
            showToastShort("靠近附近的智能步道柱");
            showToastShort("记录将自动开始！");
        }
        updateUI();
    }

    public void showContinueTips()
    {
        if ((!this.mPathDeviceQueue.isEmpty()) && (this.mShowContinueTips) && (this.mIsScanning))
        {
            this.mShowContinueTips = true;
            showToastShort("智能步道将继续记录您的行走距离");
        }
    }
}