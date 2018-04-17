package com.wukong.main.fragments;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.ParcelUuid;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.wukong.main.barroute.ManualSelectActivity;
import com.wukong.main.barroute.PopGymFRotaBikeUI;
import com.wukong.main.barroute.PopGymSwayBiUI;
import com.wukong.main.barroute.PopGymSwaySiUI;
import com.wukong.main.beans.OutdoorDeviceP1;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.services.gym.BaseManager;
import com.wukong.services.gym.NativeSupport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter.Builder;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;
import no.nordicsemi.android.support.v18.scanner.ScanSettings.Builder;

public class RouteFragment extends RouteBaseFragment
{
    private static final int LP_TYPE = 14;
    private static final int MANUAL_CONN_COUNT_DOWN_MAX = 16;
    private static final int PMLP_BAR = 33;
    private static final long SCAN_DRTN = 900L;
    private static final int STABLE_UPDATE_CNT_BAR = 2;
    private static final String STR_MANUAL_SELECT = "手动选择器械 ";
    private static final String TAG = "RouteFragment";
    public static String bleAddrCommon;
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
                    RouteFragment.this.StartScanBle();
                    return;
                case 1:
            }
            RouteFragment.this.StopScan();
        }
    };
    private HashMap<String, String[]> initDeviceMap = new HashMap();
    private long init_ms;
    private Button mBtnManual;
    private HashMap<String, OutdoorDeviceP1> mIdSensorMap = new HashMap();
    private boolean mIsConnecting = true;
    private boolean mIsScanning = false;
    private String mLastNearestIdAddress = "";
    private ArrayList<String> mLiveMtnSensorAddrList = new ArrayList();
    private int mManualConnCountDown = 16;
    private String mNearestIdAddress = "";
    private int mNewValidNum;
    private long mPlaceTS = -1L;
    private ScanCallback mScanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
            RouteFragment.this.updateResult(paramAnonymousList);
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };
    private int mStatbleUpdateCnt = -1;
    private String mStrDiff = "";
    private String mTempDeviceName = "";
    private boolean mTestOn = true;
    private long mTimeDiff = -1L;
    private TextView mTvNearId;
    private int mUpdateCnt = 0;
    private int mValidCnt;
    private int mValidInterval = 5000;

    private void StartScanBle()
    {
        if (this.mIsScanning)
            return;
        resetBtnManualText();
        this.mNearestIdAddress = null;
        resetTestParams();
        this.mIdSensorMap.clear();
        this.mUpdateCnt = 0;
        checkBLE();
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(2).setReportDelay(900L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        ParcelUuid localParcelUuid = ParcelUuid.fromString(BaseManager.XZWK_MTN_DEVICE_SERVICE_UUID.toString());
        localArrayList.add(new ScanFilter.Builder().setServiceUuid(localParcelUuid).build());
        new Thread()
        {
            public void run()
            {
                super.run();
            }
        }
                .start();
        localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.mScanCallback);
        this.mIsScanning = true;
        this.mIsConnecting = false;
    }

    private void StopScan()
    {
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.mScanCallback);
            LOG.i("RouteFragment", "            stop Scaning --------: " + this.mNearestIdAddress);
            this.mIsScanning = false;
            this.mHandler.postDelayed(new Runnable()
                                      {
                                          public void run()
                                          {
                                              RouteFragment.this.mBtnManual.setText("手动选择器械 ".concat(String.valueOf(16)));
                                              RouteFragment.this.mBtnManual.setTextColor(-7829368);
                                          }
                                      }
                    , 800L);
        }
    }

    private void avedevLPtest(double paramDouble, int paramInt)
    {
        if (!this.mTestOn);
        do
        {
            return;
            if ((paramDouble < 33.0D) && (this.mStatbleUpdateCnt >= 2))
                this.mHandler.post(new Runnable()
                {
                    public void run()
                    {
                        if ((RouteFragment.this.mTimeDiff < 0L) && (RouteFragment.this.mPlaceTS > 0L))
                        {
                            RouteFragment.access$1402(RouteFragment.this, System.currentTimeMillis() - RouteFragment.this.mPlaceTS);
                            RouteFragment.access$1602(RouteFragment.this, " time: ".concat(String.valueOf(RouteFragment.this.mTimeDiff)));
                        }
                        if (RouteFragment.this.mNearestIdAddress != null)
                        {
                            RouteFragment.access$1808(RouteFragment.this);
                            RouteFragment.this.mTvNearId.setText(((OutdoorDeviceP1)RouteFragment.this.mIdSensorMap.get(RouteFragment.this.mNearestIdAddress)).getPackageId());
                        }
                        if ((RouteFragment.this.mLastNearestIdAddress != null) && (!RouteFragment.this.mLastNearestIdAddress.equals("")) && (!RouteFragment.this.mLastNearestIdAddress.equals(RouteFragment.this.mNearestIdAddress)))
                        {
                            RouteFragment.access$2102(RouteFragment.this, RouteFragment.this.mValidCnt);
                            RouteFragment.access$1402(RouteFragment.this, System.currentTimeMillis() - RouteFragment.this.mPlaceTS);
                            RouteFragment.access$1602(RouteFragment.this, " time: ".concat(String.valueOf(RouteFragment.this.mTimeDiff)));
                            if (RouteFragment.this.mNearestIdAddress != null)
                                RouteFragment.this.mTvNearId.setText(RouteFragment.this.mNearestIdAddress.concat(RouteFragment.this.mStrDiff));
                        }
                        RouteFragment.access$2002(RouteFragment.this, RouteFragment.this.mNearestIdAddress);
                    }
                });
            if (paramDouble > 55.0D)
            {
                this.mHandler.post(new Runnable()
                {
                    public void run()
                    {
                        RouteFragment.this.mTvNearId.setText("");
                    }
                });
                resetTestParams();
            }
        }
        while ((this.mPlaceTS >= 0L) || (paramInt >= 106));
        this.mPlaceTS = System.currentTimeMillis();
    }

    private void getDeviceInfo(String paramString, int paramInt)
    {
    }

    private void gotoManualSelectActivity()
    {
        if (this.mTTSService != null)
            this.mTTSService.ttsStop();
        if (getActivity() != null)
            startActivity(new Intent(getActivity(), ManualSelectActivity.class));
        stopScan();
    }

    private void loadDeviceInfo()
    {
        this.initDeviceMap.put("9B:B7:0A:80:20:63", new String[] { "9B:B7:0A:80:16:60", "100100001", "下拉训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:24:36", new String[] { "9B:B7:0A:80:25:01", "100100002", "前推训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:20:75", new String[] { "9B:B7:0A:80:25:56", "100100003", "深蹲训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:17:41", new String[] { "9B:B7:0A:80:25:06", "100100004", "引体向上训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:21:16", new String[] { "9B:B7:0A:80:25:27", "100100005", "腹背肌训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:16:52", new String[] { "9B:B7:0A:80:25:70", "100100006", "胸肌训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:20:49", new String[] { "9B:B7:0A:80:25:19", "100100007", "蹬力训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:19:34", new String[] { "9B:B7:0A:80:24:71", "100100008", "划船器" });
        this.initDeviceMap.put("9B:B7:0A:80:20:45", new String[] { "9B:B7:0A:80:25:63", "100200001", "扭腰训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:19:67", new String[] { "9B:B7:0A:80:26:71", "100100001", "下拉训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:16:56", new String[] { "9B:B7:0A:80:26:37", "100100002", "前推训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:23:54", new String[] { "9B:B7:0A:80:26:09", "100100003", "深蹲训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:23:44", new String[] { "9B:B7:0A:80:24:90", "100100004", "引体向上训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:24:23", new String[] { "9B:B7:0A:80:26:31", "100100005", "腹背肌训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:23:77", new String[] { "9B:B7:0A:80:16:72", "100100006", "胸肌训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:16:94", new String[] { "9B:B7:0A:80:26:77", "100100007", "蹬力训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:23:39", new String[] { "9B:B7:0A:80:25:49", "100100008", "划船器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:20:37", new String[] { "9B:B7:0A:80:26:26", "100200001", "扭腰训练器-2" });
        this.initDeviceMap.put("9B:B7:0A:80:20:69", new String[] { "9B:B7:0A:80:16:75", "100100008", "划船器-3" });
        this.initDeviceMap.put("9B:B7:0A:80:23:27", new String[] { "9B:B7:0A:80:26:17", "100200001", "扭腰训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:19:69", new String[] { "9B:B7:0A:80:25:67", "100100008", "划船器" });
        this.initDeviceMap.put("9B:B7:0A:80:24:02", new String[] { "9B:B7:0A:80:26:44", "100200002", "上肢牵引器" });
        this.initDeviceMap.put("9B:B7:0A:80:19:07", new String[] { "9B:B7:0A:80:26:57", "100200003", "太空漫步机" });
        this.initDeviceMap.put("9B:B7:0A:80:20:34", new String[] { "9B:B7:0A:80:25:17", "100300001", "太极揉推器" });
        this.initDeviceMap.put("9B:B7:0A:80:21:24", new String[] { "9B:B7:0A:80:25:39", "100300002", "直立健身车" });
        this.initDeviceMap.put("9B:B7:0A:80:17:35", new String[] { "9B:B7:0A:80:23:88", "100200004", "钟摆器" });
        this.initDeviceMap.put("9B:B7:0A:80:20:78", new String[] { "9B:B7:0A:80:26:12", "100100009", "坐拉器" });
        this.initDeviceMap.put("9B:B7:0A:80:20:17", new String[] { "9B:B7:0A:80:24:25", "100100010", "坐推器" });
        this.initDeviceMap.put("9B:B7:0A:80:20:60", new String[] { "9B:B7:0A:80:25:61", "100300003", "椭圆机" });
        this.initDeviceMap.put("9B:B7:0A:80:18:89", new String[] { "9B:B7:0A:80:24:53", "100200001", "扭腰训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:16:87", new String[] { "9B:B7:0A:80:25:38", "100100012", "健骑机" });
        this.initDeviceMap.put("9B:B7:0A:80:16:95", new String[] { "9B:B7:0A:80:26:62", "100200002", "上肢牵引器" });
        this.initDeviceMap.put("9B:B7:0A:80:19:62", new String[] { "9B:B7:0A:80:25:62", "100200003", "太空漫步机" });
        this.initDeviceMap.put("9B:B7:0A:80:23:56", new String[] { "9B:B7:0A:80:23:67", "100300001", "太极揉推器" });
        this.initDeviceMap.put("9B:B7:0A:80:17:07", new String[] { "9B:B7:0A:80:26:40", "100300002", "直立健身车" });
        this.initDeviceMap.put("9B:B7:0A:80:23:38", new String[] { "9B:B7:0A:80:26:13", "100200004", "钟摆器" });
        this.initDeviceMap.put("9B:B7:0A:80:17:34", new String[] { "9B:B7:0A:80:25:97", "100100019", "坐拉器" });
        this.initDeviceMap.put("9B:B7:0A:80:17:36", new String[] { "9B:B7:0A:80:26:20", "100100013", "深蹲训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:24:22", new String[] { "9B:B7:0A:80:25:81", "100300003", "椭圆机" });
        this.initDeviceMap.put("9B:B7:0A:80:24:18", new String[] { "9B:B7:0A:80:26:58", "100100008", "划船器" });
        this.initDeviceMap.put("9B:B7:0A:80:16:91", new String[] { "9B:B7:0A:80:23:76", "100100017", "蹬力训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:19:79", new String[] { "9B:B7:0A:80:23:69", "100200003", "太空漫步机" });
        this.initDeviceMap.put("9B:B7:0A:80:23:25", new String[] { "9B:B7:0A:80:26:52", "100100029", "坐蹬器" });
        this.initDeviceMap.put("9B:B7:0A:80:16:67", new String[] { "9B:B7:0A:80:23:55", "100300001", "太极揉推器" });
        this.initDeviceMap.put("9B:B7:0A:80:19:19", new String[] { "9B:B7:0A:80:16:71", "100200004", "钟摆器" });
        this.initDeviceMap.put("9B:B7:0A:80:16:65", new String[] { "9B:B7:0A:80:16:69", "100200001", "扭腰训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:24:30", new String[] { "9B:B7:0A:80:26:41", "100100008", "划船器" });
        this.initDeviceMap.put("9B:B7:0A:80:17:30", new String[] { "9B:B7:0A:80:25:40", "100100006", "胸肌训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:17:27", new String[] { "9B:B7:0A:80:24:84", "100100005", "腹背肌训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:23:18", new String[] { "9B:B7:0A:80:26:66", "100100006", "胸肌训练器" });
        this.initDeviceMap.put("9B:B7:0A:80:20:39", new String[] { "9B:B7:0A:80:24:01", "100300002", "直立健身车" });
        this.initDeviceMap.put("9B:B7:0A:80:19:97", new String[] { "9B:B7:0A:80:24:78", "100200003", "太空漫步机" });
        this.initDeviceMap.put("9B:B7:0A:80:20:21", new String[] { "9B:B7:0A:80:26:23", "100300002", "直立健身车" });
        this.initDeviceMap.put("9B:B7:0A:80:23:12", new String[] { "9B:B7:0A:80:26:21", "100200003", "太空漫步机-A" });
        this.initDeviceMap.put("9B:B7:0A:80:23:19", new String[] { "9B:B7:0A:80:23:53", "100300002", "直立健身车-A" });
        this.initDeviceMap.put("9B:B7:0A:80:17:31", new String[] { "9B:B7:0A:80:26:75", "100200004", "钟摆器-A" });
        this.initDeviceMap.put("9B:B7:0A:80:41:20", new String[] { "9B:B7:0A:80:36:93", "100200003", "太空漫步机-A" });
    }

    private void resetBtnManualText()
    {
        this.mManualConnCountDown = 16;
        updateBtnManualText();
    }

    private void resetTestParams()
    {
        this.mLastNearestIdAddress = "";
        this.mPlaceTS = -1L;
        this.mTimeDiff = -1L;
        this.mStrDiff = "";
        this.mValidCnt = 0;
        this.mNewValidNum = 0;
    }

    private void setBtnManualEnabledDelay(int paramInt)
    {
        this.mBtnManual.setEnabled(false);
        this.mBtnManual.setTextColor(-7829368);
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          RouteFragment.this.mBtnManual.setEnabled(true);
                                          RouteFragment.this.mBtnManual.setTextColor(-16777216);
                                      }
                                  }
                , paramInt);
    }

    private void startScan()
    {
        this.handler.sendEmptyMessage(0);
    }

    private void stopScan()
    {
        this.handler.sendEmptyMessage(1);
    }

    private void updateBtnManualText()
    {
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if ((RouteFragment.this.mIsScanning) && (!RouteFragment.this.mIsConnecting))
                                          {
                                              if (RouteFragment.this.mManualConnCountDown >= 0)
                                              {
                                                  String str1 = String.valueOf(RouteFragment.access$2410(RouteFragment.this));
                                                  if (RouteFragment.this.mManualConnCountDown < 9)
                                                      str1 = "0".concat(str1);
                                                  String str2 = "手动选择器械 ".concat(str1);
                                                  RouteFragment.this.mBtnManual.setText(str2);
                                                  RouteFragment.this.updateBtnManualText();
                                              }
                                          }
                                          else
                                              return;
                                          RouteFragment.this.gotoManualSelectActivity();
                                          RouteFragment.this.showToastLong("无法自动连接? 请尝试手动连接！");
                                      }
                                  }
                , 1000L);
    }

    private void updateResult(List<ScanResult> paramList)
    {
        if (!this.mIsScanning)
            return;
        this.mUpdateCnt = (1 + this.mUpdateCnt);
        if (this.mStatbleUpdateCnt >= 0)
            this.mStatbleUpdateCnt = (1 + this.mStatbleUpdateCnt);
        int i = 0;
        if (i < paramList.size())
        {
            BluetoothDevice localBluetoothDevice = ((ScanResult)paramList.get(i)).getDevice();
            this.mTempDeviceName = localBluetoothDevice.getName();
            int j;
            if (this.mTempDeviceName != null)
                if (this.mTempDeviceName.startsWith("YAXLfc"))
                {
                    j = ((ScanResult)paramList.get(i)).getRssi();
                    if (this.mIdSensorMap.containsKey(localBluetoothDevice.getAddress()))
                        break label329;
                    if (this.initDeviceMap.containsKey(localBluetoothDevice.getAddress()))
                    {
                        String[] arrayOfString = (String[])this.initDeviceMap.get(localBluetoothDevice.getAddress());
                        LOG.i("RouteFragment", localBluetoothDevice.getAddress() + " value[0]:" + arrayOfString[0] + " value[1]:" + arrayOfString[1] + " value[2]:" + arrayOfString[2]);
                        this.mIdSensorMap.put(localBluetoothDevice.getAddress(), new OutdoorDeviceP1(localBluetoothDevice.getAddress(), localBluetoothDevice.getAddress(), j, System.currentTimeMillis(), arrayOfString[0], arrayOfString[0], Integer.parseInt(arrayOfString[1]), arrayOfString[2]));
                    }
                }
            while (true)
            {
                if (((this.mTempDeviceName.startsWith("YAXLdzfY")) || (this.mTempDeviceName.startsWith("YAXLdzfy"))) && (!this.mLiveMtnSensorAddrList.contains(localBluetoothDevice.getAddress())))
                    this.mLiveMtnSensorAddrList.add(localBluetoothDevice.getAddress());
                i++;
                break;
                label329: OutdoorDeviceP1 localOutdoorDeviceP12 = (OutdoorDeviceP1)this.mIdSensorMap.get(localBluetoothDevice.getAddress());
                localOutdoorDeviceP12.setIdSensorRssi(j);
                localOutdoorDeviceP12.setRssiInstantLP(NativeSupport.calLP(localOutdoorDeviceP12.getRssiInstantLP(), j, 14));
                localOutdoorDeviceP12.setIdSensorLatestTimeStamp(System.currentTimeMillis());
                localOutdoorDeviceP12.setUpdated(true);
            }
        }
        double d = -200.0D;
        long l1 = System.currentTimeMillis();
        Iterator localIterator = this.mIdSensorMap.keySet().iterator();
        if (localIterator.hasNext())
        {
            String str = (String)localIterator.next();
            OutdoorDeviceP1 localOutdoorDeviceP11 = (OutdoorDeviceP1)this.mIdSensorMap.get(str);
            localOutdoorDeviceP11.setUpdated(false);
            if ((l1 - localOutdoorDeviceP11.getIdSensorLatestTimeStamp() < this.mValidInterval) && (localOutdoorDeviceP11.getRssiInstantLP() > d))
            {
                d = localOutdoorDeviceP11.getRssiInstantLP();
                if (this.mUpdateCnt <= 2)
                    break label578;
            }
            label578: for (this.mNearestIdAddress = str; ; this.mNearestIdAddress = null)
            {
                long l2 = l1 - localOutdoorDeviceP11.getIdSensorLatestTimeStamp();
                LOG.i("RouteFragment", "     Que Result: " + str + " " + localOutdoorDeviceP11.getIdSensorRssi() + " l " + localOutdoorDeviceP11.getRssiInstantLP() + " d " + l2);
                break;
            }
        }
        LOG.i("RouteFragment", "            mNearestIdAddress: " + this.mNearestIdAddress);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
        this.mValidInterval = 3700;
        initUtil();
        loadDeviceInfo();
        startScan();
        View localView = paramLayoutInflater.inflate(2130968643, paramViewGroup, false);
        this.mTvNearId = ((TextView)localView.findViewById(2131558643));
        this.mTvNearId.setVisibility(0);
        this.mBtnManual = ((Button)localView.findViewById(2131558644));
        this.mBtnManual.setEnabled(false);
        this.mBtnManual.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                RouteFragment.this.gotoManualSelectActivity();
            }
        });
        return localView;
    }

    public void onHiddenChanged(boolean paramBoolean)
    {
        super.onHiddenChanged(paramBoolean);
        if (isHidden())
        {
            stopScan();
            return;
        }
        startScan();
        setBtnManualEnabledDelay(3000);
    }

    public void onPause()
    {
        super.onPause();
        stopScan();
        if (this.mTTSService != null)
            this.mTTSService.ttsStop();
        this.mNearestIdAddress = null;
        this.mIdSensorMap.clear();
    }

    public void onResume()
    {
        super.onResume();
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                RouteFragment.this.mTvNearId.setText("");
            }
        });
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if ((RouteFragment.this.mTTSService != null) && (Configs.isRoute))
                                          {
                                              RouteFragment.this.mTTSService.ttsStop();
                                              RouteFragment.this.mTTSService.ttsPlay("请将手机置于支架上自动连接智能器械！");
                                              RouteFragment.this.startScan();
                                          }
                                      }
                                  }
                , 1200L);
        this.init_ms = System.currentTimeMillis();
        setBtnManualEnabledDelay(3000);
    }

    public void onRouteFragment()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if ((RouteFragment.this.mTTSService != null) && (Configs.isRoute))
                {
                    RouteFragment.this.mTTSService.ttsStop();
                    RouteFragment.this.mTTSService.ttsPlay("请将手机置于支架上自动连接智能器械！");
                    RouteFragment.access$402(RouteFragment.this, System.currentTimeMillis());
                }
            }
        });
    }

    public void tryConnectingRouteDevice(double paramDouble, int paramInt)
    {
        super.tryConnectingRouteDevice(paramDouble, paramInt);
        if (!Configs.isRoute);
        label12:
        do
        {
            OutdoorDeviceP1 localOutdoorDeviceP11;
            Intent localIntent;
            do
            {
                do
                {
                    do
                    {
                        do
                        {
                            break label12;
                            break label12;
                            break label12;
                            do
                                return;
                            while (!this.mIsScanning);
                            LOG.i("RouteFragment", "2~~~~~~~~~~~~~~~~~~~~~identify time: " + (System.currentTimeMillis() - this.init_ms) + "  ad:" + paramDouble + " pAType：" + paramInt);
                        }
                        while (this.mIsConnecting);
                        localOutdoorDeviceP11 = (OutdoorDeviceP1)this.mIdSensorMap.get(this.mNearestIdAddress);
                        avedevLPtest(paramDouble, paramInt);
                        if (((paramDouble >= 31.0D) || (paramInt <= 158) || (paramInt >= 168)) && ((paramDouble >= 32.0D) || (paramInt <= 167) || (paramInt >= 199)) && ((paramDouble >= 33.0D) || (paramInt <= 182) || (paramInt >= 199)))
                            break;
                        LOG.i("RouteFragment", "3.1~~~~~~~~~~~~~~~~~~~~~mStatbleUpdateCnt: " + this.mStatbleUpdateCnt);
                        if (this.mStatbleUpdateCnt < 0)
                            this.mStatbleUpdateCnt = 0;
                    }
                    while (this.mStatbleUpdateCnt < 2);
                    if ((this.mNearestIdAddress == null) || (this.mNearestIdAddress.equals("")))
                    {
                        this.mIsConnecting = false;
                        return;
                    }
                }
                while (this.mValidCnt - this.mNewValidNum < 20);
                OutdoorDeviceP1 localOutdoorDeviceP12 = (OutdoorDeviceP1)this.mIdSensorMap.get(this.mNearestIdAddress);
                if (!this.mLiveMtnSensorAddrList.contains(localOutdoorDeviceP12.getMotionSensorAddress()))
                {
                    LOG.i("RouteFragment", "3.6~~~~~~~~~~~~~~~~~~~~~mIdSensorMap.size(): " + this.mIdSensorMap.size());
                    return;
                }
                System.currentTimeMillis();
                if (localOutdoorDeviceP12.getInstrumentType() / 100000 == 1001)
                    localIntent = new Intent(getActivity(), PopGymSwaySiUI.class);
                while (true)
                {
                    LOG.i("RouteFragment", "     5 ~~identify time: " + (System.currentTimeMillis() - this.init_ms) + " pTA: " + paramInt + " Issi: " + localOutdoorDeviceP11.getIdSensorRssi());
                    if (localIntent != null)
                        break;
                    showToastShort("未发现配对器械或配对器械已被占用！");
                    this.mIsConnecting = false;
                    return;
                    if (localOutdoorDeviceP12.getInstrumentType() / 100000 == 1002)
                    {
                        localIntent = new Intent(getActivity(), PopGymSwayBiUI.class);
                    }
                    else
                    {
                        int i = localOutdoorDeviceP12.getInstrumentType() / 100000;
                        localIntent = null;
                        if (i == 1003)
                            localIntent = new Intent(getActivity(), PopGymFRotaBikeUI.class);
                    }
                }
                stopScan();
                localIntent.putExtra("Type", localOutdoorDeviceP12.getInstrumentType());
                localIntent.putExtra("DeviceAddress", localOutdoorDeviceP12.getMotionSensorAddress());
                localIntent.putExtra("DeviceName", "YAXLdzfn");
                com.wukong.main.base.BleProfileBaseActivity.START_INTENT_TS = System.currentTimeMillis();
            }
            while ((!Configs.isRoute) || (isHidden()) || (this.mIsConnecting));
            NativeSupport.releaseAllMotionServiceInstances();
            startActivity(localIntent);
            LOG.i("RouteFragment", "     6 ~~identify time: " + (System.currentTimeMillis() - this.init_ms) + " pTA: " + paramInt + " Issi: " + localOutdoorDeviceP11.getIdSensorRssi());
            this.mIsConnecting = true;
            showToastShort("正在识别并建立连接！");
        }
        while (paramDouble <= 80.0D);
        this.mStatbleUpdateCnt = -1;
    }
}