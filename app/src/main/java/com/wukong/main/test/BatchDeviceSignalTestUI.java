package com.wukong.main.test;

import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.os.ParcelUuid;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.wukong.main.base.BleProfileFuncActivity;
import com.wukong.main.beans.BLEDeviceTest;
import com.wukong.services.gym.BaseManager;
import com.wukong.services.gym.LogService;
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

public class BatchDeviceSignalTestUI extends BleProfileFuncActivity
{
    protected static final String TAG = "BatDvcSgnlTstUI";
    protected Button mBtnFnshTst;
    protected Button mBtnStrtTst;
    private int mCollectResultCnt = 0;
    protected int mCount;
    protected boolean mIsDoingTest;
    protected boolean mIsScanning;
    protected ScanCallback mScanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
            BatchDeviceSignalTestUI.this.updateResult(paramAnonymousList);
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };
    private String mStartTimeNowStr = "";
    protected long mStartTimeStamp = -1L;
    private String mTempDeviceName = "";
    protected HashMap<String, BLEDeviceTest> mTestPathDeviceMap = new HashMap();
    protected TextView mTvInfo1;
    protected TextView mTvLeftBtn;
    protected TextView mTvTitle;
    protected int mUpdateInterval_ms = 2000;

    protected void appendInfoPerNSecs()
    {
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if (!BatchDeviceSignalTestUI.this.mIsDoingTest);
                                          do
                                          {
                                              do
                                              {
                                                  return;
                                                  BatchDeviceSignalTestUI.this.mTvInfo1.append(BatchDeviceSignalTestUI.this.getTimeDHMS(System.currentTimeMillis() - BatchDeviceSignalTestUI.this.mStartTimeStamp).concat(":   已搜索到：").concat(String.valueOf(BatchDeviceSignalTestUI.this.mTestPathDeviceMap.size())).concat("个设备\n"));
                                                  BatchDeviceSignalTestUI.this.appendInfoPerNSecs();
                                              }
                                              while (BatchDeviceSignalTestUI.this.mUpdateInterval_ms >= 600000);
                                              BatchDeviceSignalTestUI localBatchDeviceSignalTestUI = BatchDeviceSignalTestUI.this;
                                              localBatchDeviceSignalTestUI.mUpdateInterval_ms = (2 * localBatchDeviceSignalTestUI.mUpdateInterval_ms);
                                          }
                                          while (BatchDeviceSignalTestUI.this.mUpdateInterval_ms <= 600000);
                                          BatchDeviceSignalTestUI.this.mUpdateInterval_ms = 600000;
                                      }
                                  }
                , this.mUpdateInterval_ms);
    }

    protected void calBLETestDeviceParams()
    {
        long l = System.currentTimeMillis();
        this.mCount = (1 + this.mCount);
        Iterator localIterator = this.mTestPathDeviceMap.entrySet().iterator();
        if (localIterator.hasNext())
        {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            if (!((BLEDeviceTest)localEntry.getValue()).isUpdated())
                ((BLEDeviceTest)localEntry.getValue()).setDeviceRssiInstantLP(NativeSupport.calLP(((BLEDeviceTest)localEntry.getValue()).getDeviceRssiInstantLP(), -135.0D, 16));
            while (true)
            {
                ((BLEDeviceTest)localEntry.getValue()).setSignalUpdateInterval(l - ((BLEDeviceTest)localEntry.getValue()).getDeviceTimeStamp());
                ((BLEDeviceTest)localEntry.getValue()).mCount = this.mCount;
                break;
                ((BLEDeviceTest)localEntry.getValue()).setUpdated(false);
            }
        }
        if (this.mCount % 1200 == 0)
        {
            Log.i("BatDvcSgnlTstUI", this.mCount + " ------Colllllllecting Result:");
            Log.i("BatDvcSgnlTstUI", "Name,<1s,1s,2s,5s,10s,30s,5m,20m,n60,n80,n100,n120,Valid,Count,RssiAvrg,Steadiness,Score");
            this.mTvInfo1.append(getTimeDHMS(System.currentTimeMillis() - this.mStartTimeStamp).concat(":   已搜索到：").concat(String.valueOf(this.mTestPathDeviceMap.size())).concat("个设备\n"));
            collectResult();
            stopScan();
            this.mHandler.postDelayed(new Runnable()
                                      {
                                          public void run()
                                          {
                                              if (BatchDeviceSignalTestUI.this.mCount < 30000)
                                              {
                                                  BatchDeviceSignalTestUI.this.startScan();
                                                  Iterator localIterator = BatchDeviceSignalTestUI.this.mTestPathDeviceMap.entrySet().iterator();
                                                  while (localIterator.hasNext())
                                                      ((BLEDeviceTest)((Map.Entry)localIterator.next()).getValue()).setDeviceTimeStamp(System.currentTimeMillis());
                                              }
                                              BatchDeviceSignalTestUI.this.switchStartFinishBtn();
                                              BatchDeviceSignalTestUI.this.showToastLong("测试自动完成！");
                                              BatchDeviceSignalTestUI.this.mTvInfo1.append(BatchDeviceSignalTestUI.this.getNowTimeString() + "-- 测试自动完成!\n");
                                              BatchDeviceSignalTestUI.this.collectResult();
                                          }
                                      }
                    , 30000L);
        }
    }

    protected void collectResult()
    {
        this.mCollectResultCnt = (1 + this.mCollectResultCnt);
        String str = "Name,<1s,1s,2s,5s,10s,30s,5m,20m,n60,n80,n100,n120,Valid,Count,sgnlscore,name,<1s,1s,2s,3s,5s,7s,10s,<0.2s,0.2s,1s,connAvrg,disAvrg,ConnRep,connScore,disconnScore, connAllscore\n";
        Iterator localIterator = this.mTestPathDeviceMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            ((BLEDeviceTest)localEntry.getValue()).getSignalScore();
            ((BLEDeviceTest)localEntry.getValue()).getConnScore();
            str = str.concat(((BLEDeviceTest)localEntry.getValue()).getSinalResultString()).concat(",").concat(((BLEDeviceTest)localEntry.getValue()).getConnResultString()).concat("\n");
        }
        this.mTvInfo1.append(getTimeDHMS(System.currentTimeMillis() - this.mStartTimeStamp).concat(": Collect result! Round ").concat(String.valueOf(this.mCollectResultCnt)).concat("\n"));
        LogService.saveTestLogCSV(str, "SignalConnTst".concat(this.mStartTimeNowStr), true);
    }

    protected void initViews()
    {
        this.mTvTitle = ((TextView)findViewById(2131558653));
        this.mTvLeftBtn = ((TextView)findViewById(2131558652));
        this.mTvInfo1 = ((TextView)findViewById(2131558530));
        this.mTvInfo1.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.mTvTitle.setText(2131165348);
        this.mDataPath = "PopGym/";
        this.mLogSuffix = "PopTrng";
        this.mTvTitle.setOnClickListener(this.mSendTestDataListener);
        this.mTvTitle.setOnLongClickListener(this.mSendBatchTestDataListener);
        this.mBtnStrtTst = ((Button)findViewById(2131558529));
        this.mBtnStrtTst.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                BatchDeviceSignalTestUI.this.mCount = 0;
                BatchDeviceSignalTestUI.access$002(BatchDeviceSignalTestUI.this, 0);
                BatchDeviceSignalTestUI.this.mUpdateInterval_ms = 2000;
                BatchDeviceSignalTestUI.this.mStartTimeStamp = System.currentTimeMillis();
                BatchDeviceSignalTestUI.this.mTestPathDeviceMap.clear();
                BatchDeviceSignalTestUI.access$102(BatchDeviceSignalTestUI.this, BatchDeviceSignalTestUI.this.getNowTimeString());
                BatchDeviceSignalTestUI.this.switchStartFinishBtn();
                BatchDeviceSignalTestUI.this.showToastLong("测试开始!");
                BatchDeviceSignalTestUI.this.mTvInfo1.append("测试开始! --" + BatchDeviceSignalTestUI.this.getNowTimeString() + "\n");
                BatchDeviceSignalTestUI.this.appendInfoPerNSecs();
                BatchDeviceSignalTestUI.this.updateBtnTxt();
            }
        });
        this.mBtnFnshTst = ((Button)findViewById(2131558531));
        this.mBtnFnshTst.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                BatchDeviceSignalTestUI.this.switchStartFinishBtn();
                BatchDeviceSignalTestUI.this.showToastLong("测试结束！");
                BatchDeviceSignalTestUI.this.mTvInfo1.append(BatchDeviceSignalTestUI.this.getNowTimeString() + "-- 测试结束!\n");
                BatchDeviceSignalTestUI.this.collectResult();
            }
        });
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968614);
        this.mAutoScan = false;
        this.mAutoBind = false;
        this.mShowToast = false;
        this.mLogData = false;
        initViews();
        resetGym();
    }

    public void onStop()
    {
        super.onStop();
        if (isFinishing())
            stopScan();
    }

    protected void resetGym()
    {
        NativeSupport.resetGym();
    }

    protected void startScan()
    {
        if (this.mIsScanning)
            return;
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(2).setReportDelay(1200L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        ParcelUuid localParcelUuid = ParcelUuid.fromString(BaseManager.XZWK_SMART_PATH_UUID.toString());
        localArrayList.add(new ScanFilter.Builder().setServiceUuid(localParcelUuid).build());
        localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.mScanCallback);
        this.mIsScanning = true;
    }

    protected void stopScan()
    {
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.mScanCallback);
            this.mIsScanning = false;
        }
    }

    protected void switchStartFinishBtn()
    {
        Button localButton1 = this.mBtnStrtTst;
        boolean bool1;
        Button localButton2;
        if (!this.mBtnStrtTst.isEnabled())
        {
            bool1 = true;
            localButton1.setEnabled(bool1);
            localButton2 = this.mBtnFnshTst;
            if (this.mBtnFnshTst.isEnabled())
                break label81;
        }
        label81: for (boolean bool2 = true; ; bool2 = false)
        {
            localButton2.setEnabled(bool2);
            if (!this.mBtnStrtTst.isEnabled())
                break label87;
            stopScan();
            this.mBtnStrtTst.setText("开始测试");
            this.mIsDoingTest = false;
            return;
            bool1 = false;
            break;
        }
        label87: startScan();
        this.mIsDoingTest = true;
        this.mBtnStrtTst.setText("测试已开始");
    }

    protected void updateBtnTxt()
    {
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if (!BatchDeviceSignalTestUI.this.mIsDoingTest)
                                              return;
                                          BatchDeviceSignalTestUI.this.mBtnStrtTst.setText("已耗时：".concat(BatchDeviceSignalTestUI.this.getTimeDHMS(System.currentTimeMillis() - BatchDeviceSignalTestUI.this.mStartTimeStamp)));
                                          BatchDeviceSignalTestUI.this.updateBtnTxt();
                                      }
                                  }
                , 5000L);
    }

    protected void updateResult(List<ScanResult> paramList)
    {
        if (!this.mIsScanning)
            return;
        long l = System.currentTimeMillis();
        int i = 0;
        if (i < paramList.size())
        {
            BluetoothDevice localBluetoothDevice = ((ScanResult)paramList.get(i)).getDevice();
            this.mTempDeviceName = localBluetoothDevice.getName();
            int j;
            if ((this.mTempDeviceName != null) && (this.mTempDeviceName.startsWith("YAXLfc")))
            {
                j = ((ScanResult)paramList.get(i)).getRssi();
                if (!this.mTestPathDeviceMap.containsKey(localBluetoothDevice.getAddress()))
                    break label167;
                BLEDeviceTest localBLEDeviceTest = (BLEDeviceTest)this.mTestPathDeviceMap.get(localBluetoothDevice.getAddress());
                localBLEDeviceTest.setDeviceRssiInstantLP(NativeSupport.calLP(localBLEDeviceTest.getDeviceRssiInstantLP(), j, 16));
                localBLEDeviceTest.setDeviceTimeStamp(l);
                localBLEDeviceTest.mCntValid = (1 + localBLEDeviceTest.mCntValid);
                localBLEDeviceTest.setUpdated(true);
            }
            while (true)
            {
                i++;
                break;
                label167: this.mTestPathDeviceMap.put(localBluetoothDevice.getAddress(), new BLEDeviceTest(this.mTempDeviceName, localBluetoothDevice.getAddress(), j, l));
            }
        }
        calBLETestDeviceParams();
    }
}