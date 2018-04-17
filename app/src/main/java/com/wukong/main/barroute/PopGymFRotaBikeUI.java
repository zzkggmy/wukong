package com.wukong.main.barroute;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.beans.CommonDevicesBean;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.TTSService;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymFRotationEvent;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import java.util.ArrayList;
import java.util.List;

public class PopGymFRotaBikeUI extends BleProfileIdFuncActivity
{
    private static final int COLUMN_CNT = 180;
    private static final double MAX_PROGRESS = 100.0D;
    private static final int MAX_REP = 5000;
    private static final int MAX_SET = 500;
    private static final double MAX_VOLUME = 100.0D;
    private static final double MOVE_HEIGHT = 0.4D;
    private static final int REP_PER_SET = 10;
    private static final int RT_COLUMN_CNT = 50;
    private static final String TAG = "PopGymUI";
    private TextView leftbtn;
    private List<TextView> mAddListtv;
    private LinearLayout mAddViewLayout;
    private int mAddWidth;
    private int mAddlayoutH;
    private int mLastRevCnt;
    private int mRTEventCnt;
    private int mRTRev_DPS;
    private LinearLayout mRTViewLayout;
    private boolean mRepType;
    private int mSetCnt;
    private TextView mTvTitleAvrgSpd;
    private TextView mTvTitleReps;
    private TextView mTvTitleSets;
    private TextView title;

    private TextView getColumnChart(int paramInt)
    {
        TextView localTextView = new TextView(getApplicationContext());
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(1 + this.mAddWidth / 180, -1);
        localLayoutParams.setMargins(0, paramInt, 1, 0);
        localTextView.setBackgroundColor(-16711936);
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

    private void initViews()
    {
        int i = getIntent().getIntExtra(Configs.TypeCode, -1);
        connectDevice();
        this.title = ((TextView)findViewById(2131558653));
        this.leftbtn = ((TextView)findViewById(2131558652));
        this.mTv1_1 = ((TextView)findViewById(2131558550));
        this.mTv1_2 = ((TextView)findViewById(2131558551));
        this.mTv2_3 = ((TextView)findViewById(2131558566));
        this.mTv2_2 = ((TextView)findViewById(2131558565));
        this.mTv2_1 = ((TextView)findViewById(2131558564));
        this.mTvTitleReps = ((TextView)findViewById(2131558569));
        this.mTvTitleSets = ((TextView)findViewById(2131558570));
        this.mTvTitleAvrgSpd = ((TextView)findViewById(2131558571));
        this.mAddViewLayout = ((LinearLayout)findViewById(2131558567));
        this.mRTViewLayout = ((LinearLayout)findViewById(2131558554));
        switch (i)
        {
            default:
            case 100300001:
            case 100300002:
            case 100300003:
            case 100301001:
            case 100301002:
            case 100301003:
        }
        while (true)
        {
            this.mDeviceStr = CommonDevicesBean.GetBLEName(i);
            this.title.setText(this.mDeviceStr);
            this.mAddListtv = new ArrayList();
            this.leftbtn.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    PopGymFRotaBikeUI.this.finish();
                }
            });
            this.mDataPath = "PopGym/";
            this.mLogSuffix = "PopTrng";
            this.mLogData = true;
            this.title.setOnClickListener(this.mSendTestDataListener);
            this.title.setOnLongClickListener(this.mSendBatchTestDataListener);
            return;
            this.mTvTitleReps.setText(2131165264);
            this.mTvTitleSets.setText(2131165268);
            this.mTvTitleAvrgSpd.setText(2131165221);
            this.mREP_PER_SET = 30;
            this.mRepType = true;
            continue;
            setParams(0.067D, 8, 22, 30, 3, null);
            continue;
            setParams(0.067D, 8, 22, 30, 3, null);
            continue;
            this.mTvTitleReps.setText(2131165264);
            this.mTvTitleSets.setText(2131165268);
            this.mTvTitleAvrgSpd.setText(2131165221);
            this.mREP_PER_SET = 30;
            this.mRepType = true;
            continue;
            setParams(0.067D, 8, 22, 30, 3, new double[] { 4.5D, 0.0D, 0.0D, 0.0D, 0.0D });
            continue;
            setParams(0.067D, 8, 22, 30, 3, null);
        }
    }

    private void resetGym()
    {
        NativeSupport.resetGym();
    }

    private void updateBottomView(int paramInt)
    {
        int i = this.mAddListtv.size();
        TextView localTextView = getColumnChart(paramInt);
        float f = (float)(0.16D + this.mEvrgFwdV / 100.0D);
        if (f > 1.0F)
            f = 1.0F;
        localTextView.setAlpha(f);
        if (i < 144)
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
        int i = this.mRTRev_DPS / 2;
        this.mRTViewLayout.removeAllViews();
        for (int j = 0; j < i; j++)
        {
            float f = 0.18F + j / 50.0F;
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
        if (!this.mRepType)
        {
            localIntent.putExtra("TtlItem1", "模拟行驶距离(km)");
            localIntent.putExtra("TtlItem2", "平均时速(km/h)");
            localIntent.putExtra("TtlItem3", "旋转圈数");
            localIntent.putExtra("ValItem1", getFirstNChars(this.mDistance_km, 4));
            localIntent.putExtra("ValItem2", getFirstNChars(this.mAvrgSpd_KMPH, 4));
            localIntent.putExtra("ValItem3", String.valueOf(this.mRevCnt));
            if (this.mLastingTime_ms != 0)
                break label271;
        }
        label271: for (double d = 0.0D; ; d = 1 + this.mLastingTime_S / 60)
        {
            localIntent.putExtra("TimeElapse", getFirstNChars(d, 4));
            localIntent.putExtra("Cal", getFirstNChars(this.mCalories, 4));
            startActivity(localIntent);
            finish();
            return;
            localIntent.putExtra("TtlItem1", "圈数");
            localIntent.putExtra("TtlItem2", "组数");
            localIntent.putExtra("TtlItem3", "RPM");
            localIntent.putExtra("ValItem1", getFirstNChars(this.mRevCnt, 4));
            localIntent.putExtra("ValItem2", getFirstNChars(this.mSetCnt, 4));
            localIntent.putExtra("ValItem3", getFirstNChars(this.mRevCnt / (this.mLastingTime_S / 60.0D), 4));
            break;
        }
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968625);
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        initViews();
        resetGym();
    }

    public void onDeviceConnected()
    {
        super.onDeviceConnected();
    }

    public void onGymFRotationEvent(GymFRotationEvent paramGymFRotationEvent)
    {
        super.onGymFRotationEvent(paramGymFRotationEvent);
        if (!this.mExeciseBegin)
            return;
        if (paramGymFRotationEvent.getForwardV() > 0.05D)
        {
            this.mRevCnt = (1 + this.mRevCnt);
            this.mForwardV_KMPH = ((int)(100.0D * (3.6D * paramGymFRotationEvent.getForwardV())) / 100.0F);
            this.mLastingTime_ms += paramGymFRotationEvent.getLastingTime_ms();
            this.mLastingTime_S = (this.mLastingTime_ms / 1000);
            this.mDistance_m += paramGymFRotationEvent.getDistance_m();
            this.mRTDegree = (1 + this.mRTDegree);
            this.mDistance_km = ((int)(100.0D * (this.mDistance_m / 1000.0D)) / 100.0F);
            this.mCalories = (27.0F * this.mDistance_km);
            this.mSetCnt = (this.mRevCnt / this.mREP_PER_SET);
            if (this.mRevCnt == 2)
                this.mTTSService.ttsPlay("锻炼开始！");
            if (this.mLastingTime_S != 0)
                this.mAvrgSpd_KMPH = ((int)(100.0D * (3.6D * (this.mDistance_m / this.mLastingTime_S))) / 100.0F);
            if ((int)this.mDistance_m / 100 - (int)this.mLastDistance_m / 100 == 1)
            {
                if (!this.mRepType)
                {
                    this.mTTSService.ttsPlay("已行驶：" + this.mDistance_km + "公里");
                    this.mTTSService.ttsPlay("平均时速：" + this.mAvrgSpd_KMPH + "公里每小时");
                }
                this.mTTSService.ttsPlay("已消耗：" + this.mCalories + "大卡");
            }
            if ((this.mRevCnt % 30 == 0) && (!this.mRepType))
            {
                this.mTTSService.ttsPlay("时速：" + this.mForwardV_KMPH);
                if (this.mRevCnt % 300 == 0)
                {
                    this.mTTSService.ttsPlay("已骑行：" + this.mRevCnt + "圈");
                    this.mTTSService.ttsPlay("建议您休息一分钟！");
                }
            }
            Log.i("CyclingUI", "mDistance_m:" + this.mDistance_m);
        }
        while (true)
        {
            updateUI();
            this.mLastDistance_m = this.mDistance_m;
            return;
            this.mForwardV_KMPH = 0.0F;
            this.mForwardAcc = 0.0F;
        }
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        if (!this.mExeciseBegin);
        do
        {
            do
            {
                return;
                this.mRTEventCnt = (1 + this.mRTEventCnt);
                this.mRTRev_DPS = ((int)(100.0D * (this.mForwardV_KMPH / 100.0D)));
                if (this.mRTRev_DPS > 100)
                    this.mRTRev_DPS = 100;
                this.mHandler.post(new Runnable()
                {
                    public void run()
                    {
                        PopGymFRotaBikeUI.this.updateRTView();
                    }
                });
                if (this.mRTEventCnt % 24 != 0)
                    break;
                this.mEvrgFwdV = this.mForwardV_KMPH;
            }
            while (this.mEvrgFwdV == 0.0D);
            if (this.mEvrgFwdV > 100.0D)
                this.mEvrgFwdV = 100.0D;
            final int i = (int)(this.mAddlayoutH - this.mAddlayoutH * this.mEvrgFwdV / 100.0D);
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    PopGymFRotaBikeUI.this.updateBottomView(i);
                }
            });
        }
        while (this.mRTEventCnt % 60 != 0);
        if (this.mLastRevCnt == this.mRevCnt)
        {
            this.mForwardV_KMPH = 0.0F;
            updateUI();
        }
        this.mLastRevCnt = this.mRevCnt;
    }

    public void onGymReedRealEvent(double[] paramArrayOfDouble)
    {
        super.onGymReedRealEvent(paramArrayOfDouble);
        if (!this.mExeciseBegin)
            return;
        if (paramArrayOfDouble[10] > 0.05D)
        {
            this.mRevCnt = (1 + this.mRevCnt);
            this.mForwardV_KMPH = ((int)(100.0D * (3.6D * paramArrayOfDouble[10])) / 100.0F);
            this.mLastingTime_ms = ((int)paramArrayOfDouble[8]);
            this.mLastingTime_S = (this.mLastingTime_ms / 1000);
            this.mDistance_m = paramArrayOfDouble[14];
            this.mRTDegree = (1 + this.mRTDegree);
            this.mDistance_km = ((int)(100.0D * (this.mDistance_m / 1000.0D)) / 100.0F);
            this.mCalories = (27.0F * this.mDistance_km);
            this.mSetCnt = (this.mRevCnt / this.mREP_PER_SET);
            if (this.mRevCnt == 2)
                this.mTTSService.ttsPlay("锻炼开始！");
            if (this.mLastingTime_S != 0)
                this.mAvrgSpd_KMPH = ((int)(100.0D * (3.6D * (this.mDistance_m / this.mLastingTime_S))) / 100.0F);
            if ((int)this.mDistance_m / 100 - (int)this.mLastDistance_m / 100 == 1)
            {
                if (!this.mRepType)
                {
                    this.mTTSService.ttsPlay("已行驶：" + this.mDistance_km + "公里");
                    this.mTTSService.ttsPlay("平均时速：" + this.mAvrgSpd_KMPH + "公里每小时");
                }
                this.mTTSService.ttsPlay("已消耗：" + this.mCalories + "大卡");
            }
            if ((this.mRevCnt % 30 == 0) && (!this.mRepType))
            {
                this.mTTSService.ttsPlay("时速：" + this.mForwardV_KMPH);
                if (this.mRevCnt % 300 == 0)
                {
                    this.mTTSService.ttsPlay("已骑行：" + this.mRevCnt + "圈");
                    this.mTTSService.ttsPlay("建议您休息一分钟！");
                }
            }
            Log.i("CyclingUI", "mDistance_m:" + this.mDistance_m);
        }
        while (true)
        {
            updateUI();
            this.mLastDistance_m = this.mDistance_m;
            this.mRTEventCnt = (1 + this.mRTEventCnt);
            this.mRTRev_DPS = ((int)(100.0D * (this.mForwardV_KMPH / 100.0D)));
            if (this.mRTRev_DPS > 100)
                this.mRTRev_DPS = 100;
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    PopGymFRotaBikeUI.this.updateRTView();
                }
            });
            this.mEvrgFwdV = this.mForwardV_KMPH;
            if (this.mEvrgFwdV == 0.0D)
                break;
            if (this.mEvrgFwdV > 100.0D)
                this.mEvrgFwdV = 100.0D;
            final int i = (int)(this.mAddlayoutH - this.mAddlayoutH * this.mEvrgFwdV / 100.0D);
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    PopGymFRotaBikeUI.this.updateBottomView(i);
                }
            });
            return;
            this.mForwardV_KMPH = 0.0F;
            this.mForwardAcc = 0.0F;
        }
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if (!PopGymFRotaBikeUI.this.mRepType)
                {
                    PopGymFRotaBikeUI.this.mTv1_1.setText(PopGymFRotaBikeUI.this.getFirstNChars(PopGymFRotaBikeUI.this.mForwardV_KMPH, 3));
                    PopGymFRotaBikeUI.this.mTv1_2.setText(PopGymFRotaBikeUI.this.getFirstNChars(PopGymFRotaBikeUI.this.mDistance_km, 4));
                    PopGymFRotaBikeUI.this.mTv2_1.setText(PopGymFRotaBikeUI.this.getFirstNChars(PopGymFRotaBikeUI.this.mAvrgSpd_KMPH, 4));
                }
                while (true)
                {
                    PopGymFRotaBikeUI.this.mTv2_3.setText(PopGymFRotaBikeUI.this.getFirstNChars(PopGymFRotaBikeUI.this.mCalories, 4));
                    int i = PopGymFRotaBikeUI.this.mLastingTime_S % 60;
                    int j = PopGymFRotaBikeUI.this.mLastingTime_S / 60 % 60;
                    int k = PopGymFRotaBikeUI.this.mLastingTime_S / 3600;
                    PopGymFRotaBikeUI.this.mTv2_2.setText(k + ":" + j + ":" + i);
                    if (PopGymFRotaBikeUI.this.mAddlayoutH == 0)
                        PopGymFRotaBikeUI.access$2302(PopGymFRotaBikeUI.this, PopGymFRotaBikeUI.this.mAddViewLayout.getHeight());
                    if (PopGymFRotaBikeUI.this.mAddWidth == 0)
                        PopGymFRotaBikeUI.access$2502(PopGymFRotaBikeUI.this, PopGymFRotaBikeUI.this.mAddViewLayout.getWidth());
                    return;
                    PopGymFRotaBikeUI.this.mTv1_1.setText(String.valueOf(PopGymFRotaBikeUI.this.mRevCnt));
                    PopGymFRotaBikeUI.this.mTv1_2.setText(String.valueOf(PopGymFRotaBikeUI.this.mSetCnt));
                    if (PopGymFRotaBikeUI.this.mLastingTime_S != 0)
                        PopGymFRotaBikeUI.this.mTv2_1.setText(PopGymFRotaBikeUI.this.getFirstNChars(PopGymFRotaBikeUI.this.mRevCnt / (PopGymFRotaBikeUI.this.mLastingTime_S / 60.0D), 3));
                }
            }
        });
    }
}