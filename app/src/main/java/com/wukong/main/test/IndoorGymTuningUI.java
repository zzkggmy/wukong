package com.wukong.main.test;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.NativeSupport;
import java.util.HashMap;
import java.util.Iterator;

public class IndoorGymTuningUI extends BleProfileIdFuncActivity
{
    private static final String TAG = "IndoorGymTuningUI";
    private Button mBtnOK1;
    private Button mBtnTst1;
    private boolean mDeterminingWeight;
    private int mDotCnt;
    private EditText mEt1;
    private double mSignedCAMPAvrg16;
    private double mSignedCAMPSum16;
    private TextView mTvInfo1;
    private TextView mTvInfo2;
    private TextView mTvLeftBtn;
    private TextView mTvTitle;
    private TextView mTvTst1;
    private HashMap<Double, Double> mWeightMap;
    private double mWeightRate;
    private int mWtEvntCnt;

    private void appendDotInfoPerSec()
    {
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          IndoorGymTuningUI.this.mTvInfo1.append(" .");
                                          IndoorGymTuningUI.access$908(IndoorGymTuningUI.this);
                                          if (IndoorGymTuningUI.this.mDotCnt % 3 == 0)
                                              return;
                                          IndoorGymTuningUI.this.appendDotInfoPerSec();
                                      }
                                  }
                , 1000L);
    }

    private void determineWeight()
    {
        Iterator localIterator = this.mWeightMap.entrySet().iterator();
        Object localObject = null;
        double d1 = 10000.0D;
        while (localIterator.hasNext())
        {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            double d3 = Math.abs(((Double)localEntry.getValue()).doubleValue() - this.mWeightRate);
            if (d1 > d3)
            {
                d1 = d3;
                localObject = localEntry;
            }
        }
        final double d2 = ((Double)localObject.getKey()).doubleValue();
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                IndoorGymTuningUI.this.mTvTst1.setText(String.valueOf(d2));
            }
        });
    }

    private void initMap()
    {
        this.mWeightMap = new HashMap();
        for (int i = 0; i < 20; i++)
            this.mWeightMap.put(Double.valueOf(5.0D * (i + 1)), Double.valueOf(50.0D * i));
        this.mWeightMap.put(Double.valueOf(5.0D), Double.valueOf(1000.0D));
    }

    private void initViews()
    {
        this.mTvTitle = ((TextView)findViewById(2131558653));
        this.mTvLeftBtn = ((TextView)findViewById(2131558652));
        this.mTvInfo1 = ((TextView)findViewById(2131558530));
        this.mEt1 = ((EditText)findViewById(2131558562));
        this.mTvTst1 = ((TextView)findViewById(2131558563));
        this.mTvTitle.setText(2131165263);
        this.mDataPath = "PopGym/";
        this.mLogSuffix = "PopTrng";
        this.mLogData = true;
        this.mTvTitle.setOnClickListener(this.mSendTestDataListener);
        this.mTvTitle.setOnLongClickListener(this.mSendBatchTestDataListener);
        this.mBtnOK1 = ((Button)findViewById(2131558529));
        this.mBtnOK1.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                if (IndoorGymTuningUI.this.mEt1.getText().toString().equals(""))
                {
                    IndoorGymTuningUI.this.showToastShort("输入数据不能为空！");
                    return;
                }
                final double d = Double.parseDouble(IndoorGymTuningUI.this.mEt1.getText().toString());
                IndoorGymTuningUI.this.mEt1.setEnabled(false);
                IndoorGymTuningUI.this.mBtnOK1.setEnabled(false);
                IndoorGymTuningUI.this.showToastLong("请保持智能设备稳定！");
                IndoorGymTuningUI.this.mTvInfo1.append("Determining Weight: " + d + "Kg .");
                IndoorGymTuningUI.this.appendDotInfoPerSec();
                IndoorGymTuningUI.this.mHandler.postDelayed(new Runnable()
                                                            {
                                                                public void run()
                                                                {
                                                                    IndoorGymTuningUI.this.mWeightMap.put(Double.valueOf(d), Double.valueOf(IndoorGymTuningUI.this.mWeightRate));
                                                                    IndoorGymTuningUI.this.mTvInfo1.append(" . Weight is determined!\n");
                                                                    IndoorGymTuningUI.this.showToastShort("Weight is determined!");
                                                                    IndoorGymTuningUI.this.mEt1.setEnabled(true);
                                                                    IndoorGymTuningUI.this.mEt1.setText("");
                                                                    IndoorGymTuningUI.this.mBtnOK1.setEnabled(true);
                                                                }
                                                            }
                        , 5000L);
            }
        });
        this.mBtnTst1 = ((Button)findViewById(2131558531));
        this.mBtnTst1.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                if (IndoorGymTuningUI.this.mDeterminingWeight)
                {
                    IndoorGymTuningUI.this.mBtnTst1.setTextColor(-16777216);
                    IndoorGymTuningUI.this.mBtnTst1.setText("测试");
                    IndoorGymTuningUI.access$702(IndoorGymTuningUI.this, false);
                    return;
                }
                IndoorGymTuningUI.this.mBtnTst1.setTextColor(-65536);
                IndoorGymTuningUI.this.mBtnTst1.setText("停止");
                IndoorGymTuningUI.access$702(IndoorGymTuningUI.this, true);
            }
        });
    }

    private void resetGym()
    {
        NativeSupport.resetGym();
    }

    protected void goToReportActivity()
    {
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968622);
        this.mDetectPause = false;
        this.mShowFinishDialog = false;
        this.mAutoConnect = false;
        this.mAutoBind = false;
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        NativeSupport.OLD_SENSOR_TYPE = 1;
        initMap();
        initViews();
        resetGym();
        connectToGymDevice("eROCK_cp", "D1:68:CF:60:7A:79", 0);
    }

    public void onMegEvent(double[] paramArrayOfDouble)
    {
        super.onMegEvent(paramArrayOfDouble);
        this.mWtEvntCnt = (1 + this.mWtEvntCnt);
        int i = 2 + 1;
        final int j = (int)paramArrayOfDouble[2];
        int k = i + 1;
        final int m = (int)paramArrayOfDouble[i];
        int n = k + 1;
        final int i1 = (int)paramArrayOfDouble[k];
        int i2 = n + 1;
        final int i3 = (int)paramArrayOfDouble[n];
        int i4 = i2 + 1;
        final int i5 = (int)paramArrayOfDouble[i2];
        int i6 = i4 + 1;
        final int i7 = (int)paramArrayOfDouble[i4];
        (i6 + 1);
        final int i8 = (int)paramArrayOfDouble[i6];
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                IndoorGymTuningUI.this.mTvInfo1.setText("x: ".concat(String.valueOf(j)).concat(" y: ").concat(String.valueOf(m)).concat(" z: ").concat(String.valueOf(i1)).concat("\n root_xy: ").concat(String.valueOf(i3).concat(" root_xyz: ").concat(String.valueOf(i5))).concat("\n angle_x: ").concat(String.valueOf(i7)).concat(" angle_z: ").concat(String.valueOf(i8)));
            }
        });
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
        Log.i(getClass().getSimpleName(), "onServiceBinded()");
    }

    public void onWeightEvent(double[] paramArrayOfDouble)
    {
        super.onWeightEvent(paramArrayOfDouble);
        this.mWtEvntCnt = (1 + this.mWtEvntCnt);
        this.mWeightRate = paramArrayOfDouble[2];
        Log.i("IndoorGymTuningUI", "mWeightRate:" + this.mWeightRate + " " + paramArrayOfDouble[4]);
        final double d = paramArrayOfDouble[5];
        if ((this.mDeterminingWeight) && (paramArrayOfDouble[3] == 1.0D) && (paramArrayOfDouble[4] == 1.0D))
        {
            determineWeight();
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    IndoorGymTuningUI.this.mTvInfo1.setText("角度:".concat(String.valueOf(d)));
                }
            });
        }
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
            }
        });
    }
}