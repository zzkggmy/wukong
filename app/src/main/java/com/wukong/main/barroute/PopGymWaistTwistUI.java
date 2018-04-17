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
import java.util.ArrayList;
import java.util.List;

public class PopGymWaistTwistUI extends BleProfileIdFuncActivity
{
    private static final int COLUMN_CNT = 20;
    private static final int MAX_REP = 90;
    private static final int MAX_SET = 3;
    private static final double MOVE_HEIGHT = 0.1D;
    private static final int REP_PER_SET = 30;
    private static final int RT_COLUMN_CNT = 36;
    private static final String TAG = "PopGymWaistTwistUI";
    private TextView leftbtn;
    private List<TextView> mAddListtv;
    private LinearLayout mAddViewLayout;
    private int mAddWidth;
    private int mAddlayoutH;
    private double mCalRate = 0.06900000000000001D;
    private double mMaxAngle = 100.0D * (this.mRTMaxAngle * this.mRTMaxAngle) / 36.0D / 36.0D;
    private float mMaxValue = 3.0F * this.mWeight;
    private float mPower;
    private int mRTAmpPct;
    private double mRTMaxAngle = 20.0D;
    private LinearLayout mRTViewLayoutLft;
    private LinearLayout mRTViewLayoutRt;
    private float mSpeed;
    private float mWeight = 20.0F;
    private TextView title;

    private TextView getColumnChart(int paramInt)
    {
        TextView localTextView = new TextView(getApplicationContext());
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(1 + this.mAddWidth / 20, -1);
        localLayoutParams.setMargins(0, paramInt, 2, 0);
        localTextView.setBackgroundColor(-16711936);
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
    }

    private TextView getRTColumnChart()
    {
        TextView localTextView = new TextView(getApplicationContext());
        localTextView.setBackgroundColor(-65536);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1 + this.mRTViewLayoutRt.getWidth() / 36, -1);
        localLayoutParams.setMargins(0, 0, 1, 0);
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
    }

    private void initViews()
    {
        int i = getIntent().getIntExtra("Type", -1);
        connectToGymDevice(getIntent().getStringExtra("DeviceName"), getIntent().getStringExtra("DeviceAddress"), 0);
        this.title = ((TextView)findViewById(2131558653));
        this.leftbtn = ((TextView)findViewById(2131558652));
        this.mTv1_1 = ((TextView)findViewById(2131558550));
        this.mTv1_2 = ((TextView)findViewById(2131558551));
        this.mTv2_3 = ((TextView)findViewById(2131558566));
        this.mTv2_2 = ((TextView)findViewById(2131558565));
        this.mTv2_1 = ((TextView)findViewById(2131558564));
        this.mAddViewLayout = ((LinearLayout)findViewById(2131558567));
        this.mRTViewLayoutRt = ((LinearLayout)findViewById(2131558555));
        this.mRTViewLayoutLft = ((LinearLayout)findViewById(2131558554));
        this.mTvWrongDevice = ((TextView)findViewById(2131558568));
        switch (i)
        {
            default:
                this.mDeviceStr = "太空漫步机";
            case 1010:
            case 1005:
        }
        while (true)
        {
            this.mDeviceStr = "转腰器";
            this.title.setText(this.mDeviceStr);
            this.mMaxAngle = (100.0D * (this.mRTMaxAngle * this.mRTMaxAngle) / 36.0D / 36.0D);
            this.mAddListtv = new ArrayList();
            this.leftbtn.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    PopGymWaistTwistUI.this.finish();
                }
            });
            this.mDataPath = "PopGym/";
            this.mLogSuffix = "PopTrng";
            this.mLogData = true;
            this.title.setOnClickListener(this.mSendTestDataListener);
            this.title.setOnLongClickListener(this.mSendBatchTestDataListener);
            return;
            this.mDeviceStr = "上肢牵引器";
            this.mRTMaxAngle = 22.0D;
            this.mCalRate = 0.031D;
            continue;
            this.mDeviceStr = "太空漫步机";
        }
    }

    private void resetGym()
    {
        NativeSupport.resetGym();
        Log.i("PopGymWaistTwistUI", "setMotionUParams");
    }

    private void updateBottomView(int paramInt)
    {
        int i = this.mAddListtv.size();
        TextView localTextView = getColumnChart(paramInt);
        float f = (float)(0.16D + this.mPower / this.mMaxValue);
        if (f > 1.0F)
            f = 1.0F;
        localTextView.setAlpha(f);
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
        this.mRTViewLayoutRt.removeAllViews();
        this.mRTViewLayoutLft.removeAllViews();
        int j = Math.abs(i);
        int k = 0;
        if (k < j)
        {
            float f = 0.1F + k / 36.0F;
            if (f > 1.0F)
                f = 1.0F;
            TextView localTextView = getRTColumnChart();
            localTextView.setAlpha(f);
            if (i > 0)
                this.mRTViewLayoutRt.addView(localTextView);
            while (true)
            {
                k++;
                break;
                this.mRTViewLayoutLft.addView(localTextView);
            }
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
        setContentView(2130968628);
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        initViews();
        resetGym();
    }

    public void onDeviceConnected()
    {
        super.onDeviceConnected();
        showToastLong("设备自检！请让设备静置5秒");
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        if (!this.mExeciseBegin)
            return;
        this.mRTAmpPct = ((int)(36.0D * (paramGymRealTimeEvent.getTDistLP() / this.mRTMaxAngle)));
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                PopGymWaistTwistUI.this.updateRTView();
            }
        });
    }

    public void onGymWaistEvent(double[] paramArrayOfDouble)
    {
        super.onGymWaistEvent(paramArrayOfDouble);
        if (!this.mExeciseBegin);
        do
        {
            return;
            this.mRepCnt = (1 + this.mRepCnt);
            this.mRTDegree = (this.mRepCnt / 30);
            double d = Math.max(Math.abs(paramArrayOfDouble[5]), Math.abs(paramArrayOfDouble[6]));
            this.mAmpPct = ((int)(100.0D * (d / this.mMaxAngle)));
            Log.i("PopGymWaistTwistUI", "maxT:" + d + " mAmpPct:" + this.mAmpPct);
            if (this.mAmpPct > 100)
                this.mAmpPct = 100;
            this.mCalories = ((float)(this.mRepCnt * this.mAmpPct * this.mCalRate / 100.0D));
            this.mLastingTime_ms += (int)paramArrayOfDouble[4];
            this.mLastingTime_S = (this.mLastingTime_ms / 1000);
            this.mFreqency = (60.0F * (this.mRepCnt / this.mLastingTime_S));
            this.mPower = ((float)(0.1D * (9.800000000000001D * this.mWeight) / (paramArrayOfDouble[4] / 1000.0D)));
            updateUI();
            if (this.mRepCnt == 1)
                this.mTTSService.ttsPlay("锻炼开始！");
            if (this.mRepCnt % 10 == 0)
            {
                int i = this.mRepCnt % 30;
                if ((this.mRepCnt != 0) && (i == 0))
                    i = 30;
                this.mTTSService.ttsPlay("已锻炼：" + i + "次。");
            }
            if (this.mRepCnt % 30 == 0)
                this.mTTSService.ttsPlay("第：" + this.mRTDegree + "组结束！建议您休息一分钟！总共消耗：" + getFirstNChars(this.mCalories, 4) + "大卡能量");
        }
        while (this.mRepCnt % 90 != 0);
        this.mTTSService.ttsPlay("该器械锻炼完毕，总共耗时" + this.mLastingTime_S / 60 % 60 + "分" + this.mLastingTime_S % 60 + "秒。");
        this.mRepCnt = 0;
        this.mRTDegree = 0;
        this.mLastingTime_ms = 0;
        this.mCalories = 0.0F;
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        super.onServiceBinded(paramLocalBinder);
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = PopGymWaistTwistUI.this.mRepCnt % 30;
                if ((PopGymWaistTwistUI.this.mRepCnt != 0) && (i == 0))
                    i = 30;
                PopGymWaistTwistUI.this.mTv1_1.setText(String.valueOf(i) + "/" + 30);
                int j = PopGymWaistTwistUI.this.mRTDegree % 3;
                if ((PopGymWaistTwistUI.this.mRTDegree != 0) && (j == 0))
                    j = 3;
                PopGymWaistTwistUI.this.mTv1_2.setText(String.valueOf(j) + "/" + 3);
                PopGymWaistTwistUI.this.mTv2_1.setText(PopGymWaistTwistUI.this.getFirstNChars(PopGymWaistTwistUI.this.mFreqency, 4));
                PopGymWaistTwistUI.this.mTv2_3.setText(PopGymWaistTwistUI.this.getFirstNChars(PopGymWaistTwistUI.this.mCalories, 4));
                int k = PopGymWaistTwistUI.this.mLastingTime_S % 60;
                int m = PopGymWaistTwistUI.this.mLastingTime_S / 60 % 60;
                int n = PopGymWaistTwistUI.this.mLastingTime_S / 3600;
                PopGymWaistTwistUI.this.mTv2_2.setText(n + ":" + m + ":" + k);
                if (PopGymWaistTwistUI.this.mAddlayoutH == 0)
                    PopGymWaistTwistUI.access$1402(PopGymWaistTwistUI.this, PopGymWaistTwistUI.this.mAddViewLayout.getHeight());
                if (PopGymWaistTwistUI.this.mAddWidth == 0)
                    PopGymWaistTwistUI.access$1602(PopGymWaistTwistUI.this, PopGymWaistTwistUI.this.mAddViewLayout.getWidth());
                int i1 = (int)(PopGymWaistTwistUI.this.mAddlayoutH - PopGymWaistTwistUI.this.mAddlayoutH * PopGymWaistTwistUI.this.mPower / PopGymWaistTwistUI.this.mMaxValue);
                PopGymWaistTwistUI.this.updateBottomView(i1);
            }
        });
    }
}