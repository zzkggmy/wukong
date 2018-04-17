package com.wukong.main.test;

import android.bluetooth.BluetoothDevice;
import android.graphics.Color;
import android.os.Bundle;
import android.os.ParcelUuid;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileFuncActivity;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.BaseManager;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwayBiEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter.Builder;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;
import no.nordicsemi.android.support.v18.scanner.ScanSettings.Builder;

public class DeviceSignalUI extends BleProfileFuncActivity
{
    private static final int COLUMN_CNT = 50;
    private static final int LP_TYPE = 0;
    private static final long SCAN_DRTN = 900L;
    private static final String TAG = "DeviceSignalUI";
    private static final long UI_UPDATE_INTERVAL = 400L;
    private TextView leftbtn;
    private List<TextView> mAddListtv1;
    private List<TextView> mAddListtv2;
    private List<TextView> mAddListtv3;
    private TextView mAddListtvBtm;
    private LinearLayout mAddViewLayout1;
    private LinearLayout mAddViewLayout2;
    private LinearLayout mAddViewLayout3;
    private int mConnectCnt;
    private BluetoothDevice mDevice1;
    private BluetoothDevice mDevice2;
    private BluetoothDevice mDevice3;
    private boolean mIsScanning;
    private long mLastUpdateTS1;
    private long mLastUpdateTS2;
    private long mLastUpdateTS3;
    private double mMaxValue = 135.0D;
    private int mMinNo;
    private String mPathDeviceMinAddress = "";
    private int mSignalPower1;
    private int mSignalPower2;
    private int mSignalPower3;
    private double mSignalPowerLP1 = this.mMaxValue;
    private double mSignalPowerLP2 = this.mMaxValue;
    private double mSignalPowerLP3 = this.mMaxValue;
    private TextView mTVntt_right;
    private TextView mTvDevice1;
    private TextView mTvDevice2;
    private TextView mTvDevice3;
    private boolean mUpdatingUI = false;
    private ScanCallback scanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
            DeviceSignalUI.this.updateResult(paramAnonymousList);
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };
    private TextView title;

    private void initViews()
    {
        this.title = ((TextView)findViewById(2131558653));
        this.leftbtn = ((TextView)findViewById(2131558652));
        this.mAddViewLayout1 = ((LinearLayout)findViewById(2131558535));
        this.mAddViewLayout2 = ((LinearLayout)findViewById(2131558537));
        this.mAddViewLayout3 = ((LinearLayout)findViewById(2131558539));
        this.mTvDevice1 = ((TextView)findViewById(2131558536));
        this.mTvDevice2 = ((TextView)findViewById(2131558538));
        this.mTvDevice3 = ((TextView)findViewById(2131558540));
        this.mAddListtvBtm = ((TextView)findViewById(2131558541));
        this.leftbtn.setBackgroundResource(2130903043);
        this.title.setText("行者悟空智能健身");
        this.mAddListtv1 = new ArrayList();
        this.mAddListtv2 = new ArrayList();
        this.mAddListtv3 = new ArrayList();
        this.leftbtn.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                DeviceSignalUI.this.finish();
            }
        });
        this.mDataPath = "PopGym/";
        this.mLogSuffix = "PopTrng";
        this.mLogData = true;
        this.title.setOnClickListener(this.mSendTestDataListener);
        this.title.setOnLongClickListener(this.mSendBatchTestDataListener);
        this.mUpdatingUI = true;
        startScan();
        updateUICycle();
    }

    private void resetGym()
    {
        NativeSupport.resetGym();
    }

    private void startScan()
    {
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(2).setReportDelay(900L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        ParcelUuid localParcelUuid = ParcelUuid.fromString(BaseManager.XZWK_MTN_DEVICE_SERVICE_UUID.toString());
        localArrayList.add(new ScanFilter.Builder().setServiceUuid(localParcelUuid).build());
        localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.scanCallback);
        this.mIsScanning = true;
    }

    private void stopScan()
    {
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.scanCallback);
            this.mIsScanning = false;
        }
    }

    private void updateResult(List<ScanResult> paramList)
    {
        long l = System.currentTimeMillis();
        if (!paramList.contains(this.mDevice1))
            this.mLastUpdateTS1 = l;
        if (l - this.mLastUpdateTS1 > 3700)
            this.mSignalPower1 = ((int)this.mMaxValue);
        if (!paramList.contains(this.mDevice2))
            this.mLastUpdateTS2 = l;
        if (l - this.mLastUpdateTS2 > 3700)
            this.mSignalPower1 = ((int)this.mMaxValue);
        if (!paramList.contains(this.mDevice3))
            this.mLastUpdateTS3 = l;
        if (l - this.mLastUpdateTS3 > 3700)
            this.mSignalPower1 = ((int)this.mMaxValue);
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
            ScanResult localScanResult = (ScanResult)localIterator.next();
            if (localScanResult.getDevice().equals(this.mDevice1))
                this.mSignalPower1 = Math.abs(localScanResult.getRssi());
            if (localScanResult.getDevice().equals(this.mDevice2))
                this.mSignalPower2 = Math.abs(localScanResult.getRssi());
            if (localScanResult.getDevice().equals(this.mDevice3))
                this.mSignalPower3 = Math.abs(localScanResult.getRssi());
        }
        this.mSignalPowerLP1 = NativeSupport.calLP(this.mSignalPowerLP1, this.mSignalPower1, 0);
        this.mSignalPowerLP2 = NativeSupport.calLP(this.mSignalPowerLP2, this.mSignalPower2, 0);
        this.mSignalPowerLP3 = NativeSupport.calLP(this.mSignalPowerLP3, this.mSignalPower3, 0);
        double d = this.mSignalPowerLP1;
        this.mMinNo = 1;
        if (d > this.mSignalPowerLP2)
        {
            d = this.mSignalPowerLP2;
            this.mMinNo = 2;
        }
        if (d > this.mSignalPowerLP3)
            this.mMinNo = 3;
    }

    private void updateUICycle()
    {
        if (!this.mUpdatingUI)
            return;
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          int i = 1;
                                          DeviceSignalUI localDeviceSignalUI1 = DeviceSignalUI.this;
                                          LinearLayout localLinearLayout1 = DeviceSignalUI.this.mAddViewLayout1;
                                          List localList1 = DeviceSignalUI.this.mAddListtv1;
                                          int k = (int)DeviceSignalUI.this.mSignalPowerLP1;
                                          label186: DeviceSignalUI localDeviceSignalUI3;
                                          LinearLayout localLinearLayout3;
                                          List localList3;
                                          int i4;
                                          if (DeviceSignalUI.this.mMinNo == i)
                                          {
                                              int m = i;
                                              localDeviceSignalUI1.updateUI(localLinearLayout1, localList1, k, m);
                                              if (DeviceSignalUI.this.mDevice1 != null)
                                                  DeviceSignalUI.this.mTvDevice1.setText("Device " + DeviceSignalUI.this.mDevice1.getName() + " -" + DeviceSignalUI.this.mSignalPower1 + ", " + (int)DeviceSignalUI.this.mSignalPowerLP1);
                                              DeviceSignalUI localDeviceSignalUI2 = DeviceSignalUI.this;
                                              LinearLayout localLinearLayout2 = DeviceSignalUI.this.mAddViewLayout2;
                                              List localList2 = DeviceSignalUI.this.mAddListtv2;
                                              int i1 = (int)DeviceSignalUI.this.mSignalPowerLP2;
                                              if (DeviceSignalUI.this.mMinNo != 2)
                                                  break label450;
                                              int i2 = i;
                                              localDeviceSignalUI2.updateUI(localLinearLayout2, localList2, i1, i2);
                                              if (DeviceSignalUI.this.mDevice2 != null)
                                                  DeviceSignalUI.this.mTvDevice2.setText("Device " + DeviceSignalUI.this.mDevice2.getName() + " -" + DeviceSignalUI.this.mSignalPower2 + ", " + (int)DeviceSignalUI.this.mSignalPowerLP2);
                                              localDeviceSignalUI3 = DeviceSignalUI.this;
                                              localLinearLayout3 = DeviceSignalUI.this.mAddViewLayout3;
                                              localList3 = DeviceSignalUI.this.mAddListtv3;
                                              i4 = (int)DeviceSignalUI.this.mSignalPowerLP3;
                                              if (DeviceSignalUI.this.mMinNo != 3)
                                                  break label456;
                                          }
                                          while (true)
                                          {
                                              localDeviceSignalUI3.updateUI(localLinearLayout3, localList3, i4, i);
                                              if (DeviceSignalUI.this.mDevice3 != null)
                                                  DeviceSignalUI.this.mTvDevice3.setText("Device " + DeviceSignalUI.this.mDevice3.getName() + " -" + DeviceSignalUI.this.mSignalPower3 + ", " + (int)DeviceSignalUI.this.mSignalPowerLP3);
                                              DeviceSignalUI.this.mAddListtvBtm.setText("Nearest Device: ".concat(DeviceSignalUI.this.mPathDeviceMinAddress));
                                              DeviceSignalUI.this.updateUICycle();
                                              return;
                                              int n = 0;
                                              break;
                                              label450: int i3 = 0;
                                              break label186;
                                              label456: int j = 0;
                                          }
                                      }
                                  }
                , 400L);
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968618);
        this.mAutoScan = false;
        initViews();
        resetGym();
    }

    public void onDeviceSelected(BluetoothDevice paramBluetoothDevice, String paramString, int paramInt)
    {
        if ((paramBluetoothDevice.equals(this.mDevice1)) || (paramBluetoothDevice.equals(this.mDevice2)) || (paramBluetoothDevice.equals(this.mDevice3)))
        {
            showToastShort("The device had been added!");
            return;
        }
        switch (this.mConnectCnt % 3)
        {
            default:
                this.mDevice1 = paramBluetoothDevice;
            case 0:
            case 1:
            case 2:
        }
        while (true)
        {
            this.mConnectCnt = (1 + this.mConnectCnt);
            return;
            this.mDevice1 = paramBluetoothDevice;
            continue;
            this.mDevice2 = paramBluetoothDevice;
            continue;
            this.mDevice3 = paramBluetoothDevice;
        }
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
    }

    public void onGymSwayBiEvent(GymSwayBiEvent paramGymSwayBiEvent)
    {
        super.onGymSwayBiEvent(paramGymSwayBiEvent);
    }

    public void onGymSwaySingleEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        super.onGymSwaySingleEvent(paramGymSwaySingleEvent);
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
        Log.i(getClass().getSimpleName(), "onServiceBinded()");
    }

    protected void onStop()
    {
        super.onStop();
        if (isFinishing())
        {
            this.mUpdatingUI = false;
            stopScan();
        }
    }

    protected void onViewCreated(Bundle paramBundle)
    {
        super.onViewCreated(paramBundle);
        this.mRightConnectIcon.setVisibility(0);
    }

    protected void updateUI(LinearLayout paramLinearLayout, List<TextView> paramList, int paramInt, boolean paramBoolean)
    {
        TextView localTextView = new TextView(getApplicationContext());
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(paramLinearLayout.getWidth() / 51, -1);
        int i;
        if (paramInt < this.mMaxValue - 5.0D)
        {
            i = (int)((1.0D - paramInt / this.mMaxValue) * paramLinearLayout.getHeight());
            localTextView.setBackgroundColor(-16711936);
            if (paramBoolean)
                localTextView.setBackgroundColor(-65536);
        }
        while (true)
        {
            localLayoutParams.setMargins(0, i, 2, 0);
            localTextView.setLayoutParams(localLayoutParams);
            if (paramList.size() > 49)
            {
                paramLinearLayout.removeViewAt(0);
                paramList.remove(0);
            }
            paramList.add(localTextView);
            paramLinearLayout.addView((View)paramList.get(-1 + paramList.size()));
            return;
            localTextView.setBackgroundColor(Color.rgb(221, 221, 221));
            i = 0;
        }
    }
}