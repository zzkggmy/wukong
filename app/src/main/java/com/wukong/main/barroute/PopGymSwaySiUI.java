package com.wukong.main.barroute;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.beans.CommonDevicesBean;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import java.util.ArrayList;
import java.util.List;

public class PopGymSwaySiUI extends BleProfileIdFuncActivity
{
    private static final String TAG = "PopGymSwaySiUI";
    private TextView leftbtn;
    private List<TextView> mAddListtv;
    private LinearLayout mAddViewLayout;
    private int mAddWidth;
    private int mAddlayoutH;
    private int mCOLUMN_CNT = 20;
    private float mMaxValue = 8.0F * this.mWeight;
    private int mMin_MAX_AMP;
    private float mPower;
    private int mRTAmpPct;
    private LinearLayout mRTViewLayout;
    private int mRT_COLUMN_CNT = 20;
    private boolean mShowRTAngle = false;
    private float mSpeed;
    private TextView mTvRtAmp;
    private int mValidSize;
    private int mWarnCount;
    private float mWeight = 60.0F;
    private TextView title;

    private TextView getColumnChart(int paramInt)
    {
        TextView localTextView = new TextView(getApplicationContext());
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(1 + this.mAddWidth / this.mCOLUMN_CNT, -1);
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
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1 + this.mRTViewLayout.getWidth() / this.mRT_COLUMN_CNT, -1);
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
        this.mTv2_1 = ((TextView)findViewById(2131558564));
        this.mTv2_1.setText(String.valueOf(0));
        this.mTv2_3 = ((TextView)findViewById(2131558566));
        this.mTv2_2 = ((TextView)findViewById(2131558565));
        this.mAddViewLayout = ((LinearLayout)findViewById(2131558567));
        this.mRTViewLayout = ((LinearLayout)findViewById(2131558554));
        this.mTvRtAmp = ((TextView)findViewById(2131558556));
        switch (i)
        {
            default:
                this.mMaxValue = (25.0F * this.mWeight);
                setParams(0.25D, 35, 50, 15, 3, null);
            case 100100001:
            case 100100002:
            case 100100003:
            case 100100004:
            case 100100005:
            case 100100006:
            case 100100007:
            case 100100008:
            case 100100009:
            case 100100010:
            case 100101010:
            case 100100013:
            case 100100017:
            case 100100018:
            case 100101018:
            case 100100019:
            case 100100012:
            case 100101012:
            case 100100029:
            case 100101029:
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
                    PopGymSwaySiUI.this.finish();
                }
            });
            this.mTvRtAmp.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    PopGymSwaySiUI localPopGymSwaySiUI = PopGymSwaySiUI.this;
                    if (!PopGymSwaySiUI.this.mShowRTAngle);
                    for (boolean bool = true; ; bool = false)
                    {
                        PopGymSwaySiUI.access$002(localPopGymSwaySiUI, bool);
                        if (!PopGymSwaySiUI.this.mShowRTAngle)
                            break;
                        PopGymSwaySiUI.this.mTvRtAmp.setBackgroundColor(-7829368);
                        PopGymSwaySiUI.this.mTvRtAmp.setTextColor(-1);
                        return;
                    }
                    PopGymSwaySiUI.this.mTvRtAmp.setBackgroundColor(-1);
                    PopGymSwaySiUI.this.mTvRtAmp.setTextColor(-7829368);
                    PopGymSwaySiUI.this.mTvRtAmp.setText("实时动作幅度 ");
                }
            });
            this.mDataPath = "PopGym/";
            this.mLogSuffix = "PopTrng";
            this.mLogData = true;
            this.title.setOnClickListener(this.mSendTestDataListener);
            this.title.setOnLongClickListener(this.mSendBatchTestDataListener);
            return;
            setParams(0.18D, 21, 45, 15, 3, null);
            continue;
            setParams(0.1D, 9, 32, 15, 3, null);
            continue;
            setParams(0.12D, 8, 40, 15, 3, null);
            continue;
            setParams(0.17D, 21, 45, 15, 3, null);
            continue;
            setParams(0.07000000000000001D, 8, 16, 15, 3, null);
            continue;
            setParams(0.11D, 9, 18, 15, 3, null);
            continue;
            setParams(0.15D, 19, 38, 15, 3, null);
            continue;
            this.mMaxValue = (25.0F * this.mWeight);
            setParams(0.8D, 23, 45, 15, 3, null);
            continue;
            setParams(0.25D, 21, 45, 15, 3, null);
            continue;
            setParams(0.25D, 15, 42, 15, 3, null);
            continue;
            setParams(0.25D, 15, 42, 15, 3, null);
            continue;
            setParams(0.3D, 9, 25, 15, 3, null);
            continue;
            setParams(0.2D, 7, 12, 15, 3, null);
            continue;
            setParams(0.25D, 20, 40, 15, 3, null);
            continue;
            setParams(0.25D, 20, 40, 15, 3, null);
            continue;
            setParams(0.25D, 12, 45, 15, 3, null);
            continue;
            setParams(0.25D, 20, 40, 15, 3, null);
            continue;
            setParams(0.25D, 20, 40, 15, 3, null);
            continue;
            setParams(0.25D, 6, 30, 15, 3, null);
            continue;
            setParams(0.25D, 6, 30, 15, 3, null);
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
        float f = 0.5F + (float)Math.pow(this.mPower / this.mMaxValue, 2.0D);
        if (f > 1.0F)
            f = 1.0F;
        localTextView.setAlpha(f);
        if (i < -1 + this.mCOLUMN_CNT)
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
        int i = this.mRTAmpPct / (100 / this.mRT_COLUMN_CNT);
        this.mRTViewLayout.removeAllViews();
        int j = 0;
        TextView localTextView;
        if (j < 1 + this.mRT_COLUMN_CNT)
        {
            localTextView = getRTColumnChart();
            if (j < i)
            {
                float f = 0.25F + 1.6F * (float)Math.pow(j / this.mRT_COLUMN_CNT, 2.0D);
                if (f > 1.0F)
                    f = 1.0F;
                if (j == this.mValidSize)
                {
                    f = 1.0F;
                    localTextView.setBackgroundColor(-16711936);
                }
                localTextView.setAlpha(f);
            }
        }
        while (true)
        {
            this.mRTViewLayout.addView(localTextView);
            j++;
            break;
            if (j > this.mValidSize)
                return;
            localTextView.setBackgroundColor(ContextCompat.getColor(this, 2131427366));
            if (j == this.mValidSize)
                localTextView.setBackgroundColor(ContextCompat.getColor(this, 2131427371));
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
        setContentView(2130968627);
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        this.mTvWrongDevice = ((TextView)findViewById(2131558568));
        resetGym();
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        if (!this.mExeciseBegin)
            return;
        if (Math.abs(paramGymRealTimeEvent.getRealAngle()) <= 90.0D);
        for (double d = paramGymRealTimeEvent.getRealAngle(); ; d = paramGymRealTimeEvent.getRealAngle_())
        {
            final int i = (int)d;
            this.mRTAmpPct = ((int)(100.0D * (i / this.mMAX_AMP)));
            if (this.mRTAmpPct < this.mMin_MAX_AMP)
                this.mRTAmpPct = 0;
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    PopGymSwaySiUI.this.updateRTView();
                    if (PopGymSwaySiUI.this.mShowRTAngle)
                        PopGymSwaySiUI.this.mTvRtAmp.setText("实时动作幅度 ".concat(String.valueOf(i)));
                }
            });
            return;
        }
    }

    public void onGymReedRealEvent(double[] paramArrayOfDouble)
    {
        super.onGymReedRealEvent(paramArrayOfDouble);
        if (!this.mExeciseBegin)
            return;
        this.mRepCnt = (2 + (int)paramArrayOfDouble[3]);
        this.mRTDegree = (this.mRepCnt / this.mREP_PER_SET);
        this.mSpeed = ((float)(this.mMOVE_HEIGHT / (paramArrayOfDouble[5] / 3000.0D)));
        LOG.i("PopGymSwaySiUI", "mSpeed: " + this.mSpeed + " = (float)(mMOVE_HEIGHT /(e.get1stPhaseTime(): " + paramArrayOfDouble[5] + "/3000));");
        this.mCalories = ((float)(this.mCalories + 1.3D * (0.0002389D * (9.800000000000001D * this.mWeight * this.mMOVE_HEIGHT))));
        this.mLastingTime_ms = ((int)paramArrayOfDouble[8]);
        this.mLastingTime_S = (this.mLastingTime_ms / 1000);
        this.mPower = ((float)(9.800000000000001D * this.mWeight * this.mMOVE_HEIGHT / (paramArrayOfDouble[5] / 3000.0D)));
        this.mFreqency = (60.0F * (this.mRepCnt / this.mLastingTime_S));
        if (this.mRepCnt == 1)
            this.mTTSService.ttsPlay("锻炼开始！");
        if (this.mRepCnt % 5 == 0)
            this.mTTSService.ttsPlay("已锻炼：" + this.mRepCnt + "次。");
        if (this.mRepCnt % this.mREP_PER_SET == 0)
            this.mTTSService.ttsPlay("第：" + this.mRepCnt / this.mREP_PER_SET + "组结束！建议您休息一分钟！总共消耗：" + getFirstNChars(this.mCalories, 4) + "大卡能量");
        if (this.mRepCnt % this.mMAX_REP == 0)
            this.mTTSService.ttsPlay("该器械锻炼完毕，总共耗时" + this.mLastingTime_S / 60 % 60 + "分" + this.mLastingTime_S % 60 + "秒。");
        if ((this.mSpeed > 1.5D) && (this.mRepCnt - this.mWarnCount > 3))
        {
            this.mWarnCount = this.mRepCnt;
            this.mTTSService.ttsPlay("温馨提示：做动作不宜太快！");
        }
        updateUI();
    }

    public void onGymSwaySingleRealEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        super.onGymSwaySingleRealEvent(paramGymSwaySingleEvent);
        if (!this.mExeciseBegin);
        while ((this.mRepCnt == 1) && ((paramGymSwaySingleEvent.get1stPhaseTime() > 5500.0D) || (paramGymSwaySingleEvent.get1stPhaseTime() < 180.0D)))
            return;
        LOG.i("----- e.getInstanceNum():" + paramGymSwaySingleEvent.getInstanceNum());
        this.mRepCnt = (1 + this.mRepCnt);
        this.mRTDegree = (this.mRepCnt / this.mREP_PER_SET);
        this.mAmpPct = ((int)(100.0D * (paramGymSwaySingleEvent.getMaxTauAngle() / this.mMAX_AMP)));
        LOG.i("PopGymSwaySiUI", "mAmpPct: " + this.mAmpPct + " = (int)(e.getMaxTauAngle():" + paramGymSwaySingleEvent.getMaxTauAngle() + "/mMAX_AMP*100)");
        if (this.mAmpPct > 100)
            this.mAmpPct = 100;
        this.mSpeed = ((float)(this.mMOVE_HEIGHT / (paramGymSwaySingleEvent.get1stPhaseTime() / 1000.0D)));
        LOG.i("PopGymSwaySiUI", "mSpeed: " + this.mSpeed + " = (float)(mMOVE_HEIGHT /(e.get1stPhaseTime(): " + paramGymSwaySingleEvent.get1stPhaseTime() + "/1000));");
        this.mCalories = ((float)(this.mCalories + 1.3D * (0.0002389D * (9.800000000000001D * this.mWeight * this.mMOVE_HEIGHT))));
        this.mLastingTime_ms += (int)(paramGymSwaySingleEvent.get1stPhaseTime() + paramGymSwaySingleEvent.get2ndPhaseTime() + paramGymSwaySingleEvent.getHoldTime());
        this.mLastingTime_S = (this.mLastingTime_ms / 1000);
        this.mPower = ((float)(9.800000000000001D * this.mWeight * this.mMOVE_HEIGHT / (paramGymSwaySingleEvent.get1stPhaseTime() / 1000.0D)));
        this.mFreqency = (60.0F * (this.mRepCnt / this.mLastingTime_S));
        if (this.mRepCnt == 1)
            this.mTTSService.ttsPlay("锻炼开始！");
        if (this.mRepCnt % 5 == 0)
            this.mTTSService.ttsPlay("已锻炼：" + this.mRepCnt + "次。");
        if (this.mRepCnt % this.mREP_PER_SET == 0)
            this.mTTSService.ttsPlay("第：" + this.mRepCnt / this.mREP_PER_SET + "组结束！建议您休息一分钟！总共消耗：" + getFirstNChars(this.mCalories, 4) + "大卡能量");
        if (this.mRepCnt % this.mMAX_REP == 0)
            this.mTTSService.ttsPlay("该器械锻炼完毕，总共耗时" + this.mLastingTime_S / 60 % 60 + "分" + this.mLastingTime_S % 60 + "秒。");
        if ((this.mSpeed > 1.5D) && (this.mRepCnt - this.mWarnCount > 3))
        {
            this.mWarnCount = this.mRepCnt;
            this.mTTSService.ttsPlay("温馨提示：做动作不宜太快！");
        }
        updateUI();
    }

    protected void onViewCreated(Bundle paramBundle)
    {
        super.onViewCreated(paramBundle);
        initViews();
    }

    protected void setParams(double paramDouble, int paramInt1, int paramInt2, int paramInt3, int paramInt4, double[] paramArrayOfDouble)
    {
        super.setParams(paramDouble, paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfDouble);
        this.mMin_MAX_AMP = ((int)this.mMAX_AMP / 20);
        this.mValidSize = ((int)(100.0D * (paramInt1 / this.mMAX_AMP)) / (100 / this.mRT_COLUMN_CNT));
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = PopGymSwaySiUI.this.mRepCnt % PopGymSwaySiUI.this.mREP_PER_SET;
                if ((PopGymSwaySiUI.this.mRepCnt != 0) && (i == 0));
                PopGymSwaySiUI.this.mTv1_1.setText(String.valueOf(PopGymSwaySiUI.this.mRepCnt));
                int j = PopGymSwaySiUI.this.mRTDegree % PopGymSwaySiUI.this.mMAX_SET;
                if ((PopGymSwaySiUI.this.mRTDegree != 0) && (j == 0));
                PopGymSwaySiUI.this.mTv1_2.setText(String.valueOf(PopGymSwaySiUI.this.mRTDegree));
                PopGymSwaySiUI.this.mTv2_1.setText(PopGymSwaySiUI.this.getFirstNChars(PopGymSwaySiUI.this.mFreqency, 4));
                PopGymSwaySiUI.this.mTv2_3.setText(PopGymSwaySiUI.this.getFirstNChars(PopGymSwaySiUI.this.mCalories, 4));
                int k = PopGymSwaySiUI.this.mLastingTime_S % 60;
                int m = PopGymSwaySiUI.this.mLastingTime_S / 60 % 60;
                int n = PopGymSwaySiUI.this.mLastingTime_S / 3600;
                PopGymSwaySiUI.this.mTv2_2.setText(n + ":" + m + ":" + k);
                if (PopGymSwaySiUI.this.mAddlayoutH == 0)
                    PopGymSwaySiUI.access$2202(PopGymSwaySiUI.this, PopGymSwaySiUI.this.mAddViewLayout.getHeight());
                if (PopGymSwaySiUI.this.mAddWidth == 0)
                    PopGymSwaySiUI.access$2402(PopGymSwaySiUI.this, PopGymSwaySiUI.this.mAddViewLayout.getWidth());
                int i1 = (int)(PopGymSwaySiUI.this.mAddlayoutH - PopGymSwaySiUI.this.mAddlayoutH * PopGymSwaySiUI.this.mPower / PopGymSwaySiUI.this.mMaxValue);
                PopGymSwaySiUI.this.updateBottomView(i1);
            }
        });
    }
}
