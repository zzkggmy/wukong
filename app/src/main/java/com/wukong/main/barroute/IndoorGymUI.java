package com.wukong.main.barroute;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.utils.TTSService;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class IndoorGymUI extends BleProfileIdFuncActivity
{
    private static final int COLUMN_CNT = 20;
    private static final double MAX_AMP = 45.0D;
    private static final int MAX_REP = 30;
    private static final int MAX_SET = 3;
    private static final double MOVE_HEIGHT = 0.4D;
    private static final int REP_PER_SET = 10;
    private static final int RT_COLUMN_CNT = 50;
    private static final String TAG = "IndoorGymUI";
    private TextView leftbtn;
    private List<TextView> mAddListtv;
    private LinearLayout mAddViewLayout;
    private int mAddWidth;
    private int mAddlayoutH;
    private boolean mConnected = false;
    private boolean mDeterminingWeight;
    private float mMaxValue = 20.0F * this.mWeight;
    private float mPower;
    private int mRTAmpPct;
    private LinearLayout mRTViewLayout;
    private double mSignedCAMPAvrg16;
    private double mSignedCAMPSum16;
    private float mSpeed;
    private TextView mTVPower;
    private TextView mTv1_1;
    private TextView mTv1_2;
    private TextView mTvAmpPct;
    private TextView mTvCalories;
    private TextView mTvLastingTime;
    private TextView mTvSpeed;
    private TextView mTvWeight;
    private int mWarnCount;
    private float mWeight = 20.0F;
    private HashMap<Double, Double> mWeightMap;
    private double mWeightRate;
    private int mWtEvntCnt;
    private TextView title;

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
                IndoorGymUI.this.mTvAmpPct.setText(String.valueOf(d2));
            }
        });
    }

    private TextView getColumnChart(int paramInt)
    {
        TextView localTextView = new TextView(getApplicationContext());
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(1 + this.mAddWidth / 20, -1);
        localLayoutParams.setMargins(0, paramInt, 2, 0);
        localTextView.setBackgroundColor(-16711936);
        localTextView.setTextSize(9.0F);
        localTextView.setTextAlignment(4);
        localTextView.setTextColor(-7829368);
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
    }

    private TextView getRTColumnChart()
    {
        TextView localTextView = new TextView(getApplicationContext());
        localTextView.setBackgroundColor(-65536);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1 + this.mRTViewLayout.getWidth() / 50, -1);
        localLayoutParams.setMargins(0, 0, 1, 0);
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
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
        getIntent().getIntExtra("Type", -1);
        String str1 = getIntent().getStringExtra("WeightName");
        String str2 = getIntent().getStringExtra("WeightAddress");
        int i = 0;
        if (str1 != null)
        {
            i = 0;
            if (str2 != null)
            {
                connectToGymDevice(str1, str2, 0);
                i = 800;
            }
        }
        final String str3 = getIntent().getStringExtra("DeviceName");
        final String str4 = getIntent().getStringExtra("DeviceAddress");
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if ((str3 != null) && (str4 != null))
                                              IndoorGymUI.this.connectToGymDevice(str3, str4, 0);
                                      }
                                  }
                , i);
        this.title = ((TextView)findViewById(2131558653));
        this.leftbtn = ((TextView)findViewById(2131558652));
        this.mTv1_1 = ((TextView)findViewById(2131558550));
        this.mTv1_2 = ((TextView)findViewById(2131558551));
        this.mTvAmpPct = ((TextView)findViewById(2131558564));
        this.mTvAmpPct.setText("-");
        this.mTvCalories = ((TextView)findViewById(2131558566));
        this.mTvLastingTime = ((TextView)findViewById(2131558565));
        this.mAddViewLayout = ((LinearLayout)findViewById(2131558567));
        this.mRTViewLayout = ((LinearLayout)findViewById(2131558554));
        this.mDeviceStr = "固定力量器械";
        this.title.setText("室内固定力量");
        this.mAddListtv = new ArrayList();
        this.leftbtn.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                IndoorGymUI.this.finish();
            }
        });
        this.mDataPath = "PopGym/";
        this.mLogSuffix = "PopTrng";
        this.mLogData = true;
        this.title.setOnClickListener(this.mSendTestDataListener);
        this.title.setOnLongClickListener(this.mSendBatchTestDataListener);
        initMap();
    }

    private void resetGym()
    {
        NativeSupport.resetGym();
    }

    private void updateBottomView(int paramInt)
    {
        int i = this.mAddListtv.size();
        TextView localTextView = getColumnChart(paramInt);
        float f = 0.5F + (float)Math.pow(this.mPower / this.mMaxValue, 2.0D);
        if (f > 1.0F)
            f = 1.0F;
        localTextView.setAlpha(f);
        localTextView.setText(getFirstNChars(this.mPower, 3));
        if (i < 19)
        {
            this.mAddListtv.add(localTextView);
            this.mAddViewLayout.addView((View)this.mAddListtv.get(-1 + this.mAddListtv.size()));
            return;
        }
        this.mAddViewLayout.removeViewAt(0);
        this.mAddListtv.remove(0);
        this.mAddListtv.add(localTextView);
        this.mAddViewLayout.addView((View)this.mAddListtv.get(i - 1));
    }

    private void updateRTView()
    {
        int i = this.mRTAmpPct / 2;
        this.mRTViewLayout.removeAllViews();
        for (int j = 0; j < i; j++)
        {
            float f = 0.25F + 1.6F * (float)Math.pow(j / 50.0F, 2.0D);
            if (f > 1.0F)
                f = 1.0F;
            TextView localTextView = getRTColumnChart();
            localTextView.setAlpha(f);
            this.mRTViewLayout.addView(localTextView);
        }
    }

    protected void goToReportActivity()
    {
        Intent localIntent = new Intent(getApplicationContext(), ShowResultAct.class);
        localIntent.putExtra("DeviceName", this.mDeviceStr);
        localIntent.putExtra("TtlItem1", "次数");
        localIntent.putExtra("TtlItem2", "组数");
        localIntent.putExtra("TtlItem3", "频率（次／分钟）");
        localIntent.putExtra("ValItem1", String.valueOf(this.mRepCnt));
        localIntent.putExtra("ValItem2", String.valueOf(this.mRTDegree));
        localIntent.putExtra("ValItem3", getFirstNChars(this.mFreqency, 4));
        if (this.mLastingTime_ms == 0);
        for (int i = 0; ; i = 1 + this.mLastingTime_S / 60)
        {
            localIntent.putExtra("TimeElapse", String.valueOf(i));
            localIntent.putExtra("Cal", getFirstNChars(this.mCalories, 4));
            startActivity(localIntent);
            finish();
            return;
        }
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968623);
        this.mDetectPause = false;
        this.mAutoScan = false;
        this.mDeterminingWeight = true;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        this.mConnDeviceNum = 2;
        initViews();
        resetGym();
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        if (!this.mExeciseBegin)
            return;
        this.mRTAmpPct = ((int)(100.0D * (paramGymRealTimeEvent.getAmp() / 45.0D)));
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                IndoorGymUI.this.updateRTView();
            }
        });
    }

    public void onGymSwaySingleEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        super.onGymSwaySingleEvent(paramGymSwaySingleEvent);
        if (!this.mExeciseBegin)
            return;
        this.mRepCnt = (1 + this.mRepCnt);
        this.mRTDegree = (this.mRepCnt / 10);
        this.mAmpPct = ((int)(100.0D * (paramGymSwaySingleEvent.getMaxTauAngle() / 45.0D)));
        Log.i("IndoorGymUI", "mAmpPct: " + this.mAmpPct + " = (int)(e.getMaxTauAngle():" + paramGymSwaySingleEvent.getMaxTauAngle() + "/MAX_AMP*100)");
        if (this.mAmpPct > 100)
            this.mAmpPct = 100;
        this.mSpeed = ((float)(0.4D / (paramGymSwaySingleEvent.get1stPhaseTime() / 1000.0D)));
        this.mCalories = ((float)(this.mCalories + 1.3D * (0.0002389D * (0.4D * (9.800000000000001D * this.mWeight)))));
        this.mLastingTime_ms += (int)(paramGymSwaySingleEvent.get1stPhaseTime() + paramGymSwaySingleEvent.get2ndPhaseTime() + paramGymSwaySingleEvent.getHoldTime());
        this.mLastingTime_S = (this.mLastingTime_ms / 1000);
        this.mPower = ((float)(0.4D * (9.800000000000001D * this.mWeight) / (paramGymSwaySingleEvent.get1stPhaseTime() / 1000.0D)));
        if (this.mRepCnt == 1)
            this.mTTSService.ttsPlay("锻炼开始！");
        if (this.mRepCnt % 5 == 0)
            this.mTTSService.ttsPlay("已锻炼：" + this.mRepCnt + "次。");
        if (this.mRepCnt % 10 == 0)
            this.mTTSService.ttsPlay("第：" + this.mRepCnt / 10 + "组结束！建议您休息一分钟！总共消耗：" + getFirstNChars(this.mCalories, 4) + "大卡能量");
        if (this.mRepCnt % 30 == 0)
            this.mTTSService.ttsPlay("该器械锻炼完毕，总共耗时" + this.mLastingTime_S / 60 % 60 + "分" + this.mLastingTime_S % 60 + "秒。");
        if ((this.mSpeed > 1.5D) && (this.mRepCnt - this.mWarnCount > 3))
        {
            this.mWarnCount = this.mRepCnt;
            this.mTTSService.ttsPlay("温馨提示：做动作不宜太快！");
        }
        updateUI();
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
        Log.i(getClass().getSimpleName(), "onServiceBinded() " + this);
    }

    public void onWeightEvent(double[] paramArrayOfDouble)
    {
        super.onWeightEvent(paramArrayOfDouble);
        this.mWtEvntCnt = (1 + this.mWtEvntCnt);
        this.mWeightRate = paramArrayOfDouble[2];
        Log.i("IndoorGymUI", "mWeightRate:" + this.mWeightRate + " " + paramArrayOfDouble[4]);
        if ((this.mDeterminingWeight) && (paramArrayOfDouble[3] == 1.0D) && (paramArrayOfDouble[4] == 1.0D))
            determineWeight();
        if ((this.mDeterminingWeight) && (paramArrayOfDouble[4] == 1.0D))
        {
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    IndoorGymUI.this.mTvAmpPct.setTextColor(-16777216);
                }
            });
            return;
        }
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                IndoorGymUI.this.mTvAmpPct.setTextColor(-3355444);
            }
        });
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = IndoorGymUI.this.mRepCnt % 10;
                if ((IndoorGymUI.this.mRepCnt != 0) && (i == 0))
                    i = 10;
                IndoorGymUI.this.mTv1_1.setText(String.valueOf(i) + "/" + 10);
                int j = IndoorGymUI.this.mRTDegree % 3;
                if ((IndoorGymUI.this.mRTDegree != 0) && (j == 0))
                    j = 3;
                IndoorGymUI.this.mTv1_2.setText(String.valueOf(j) + "/" + 3);
                IndoorGymUI.this.mTvCalories.setText(IndoorGymUI.this.getFirstNChars(IndoorGymUI.this.mCalories, 4));
                int k = IndoorGymUI.this.mLastingTime_S % 60;
                int m = IndoorGymUI.this.mLastingTime_S / 60 % 60;
                int n = IndoorGymUI.this.mLastingTime_S / 3600;
                IndoorGymUI.this.mTvLastingTime.setText(n + ":" + m + ":" + k);
                if (IndoorGymUI.this.mAddlayoutH == 0)
                    IndoorGymUI.access$1302(IndoorGymUI.this, IndoorGymUI.this.mAddViewLayout.getHeight());
                if (IndoorGymUI.this.mAddWidth == 0)
                    IndoorGymUI.access$1502(IndoorGymUI.this, IndoorGymUI.this.mAddViewLayout.getWidth());
                int i1 = (int)(IndoorGymUI.this.mAddlayoutH - IndoorGymUI.this.mAddlayoutH * IndoorGymUI.this.mPower / IndoorGymUI.this.mMaxValue);
                IndoorGymUI.this.updateBottomView(i1);
            }
        });
    }
}