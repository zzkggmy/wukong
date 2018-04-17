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
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwayBiEvent;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.achartengine.GraphicalView;
import org.achartengine.model.TimeSeries;
import org.achartengine.model.XYMultipleSeriesDataset;

public class PopGymSwayBiUI extends BleProfileIdFuncActivity
{
    private static final int COLUMN_CNT = 20;
    private static final int MIN_RT_COLUMN_CNT = 2;
    private static final double MOVE_HEIGHT_CALO_RATE = 0.46D;
    private static final int RT_COLUMN_CNT = 36;
    private static final String TAG = "PopGymSwayBiUI";
    private long addX;
    private int addY = -1;
    private GraphicalView chart;
    int constNum = 100;
    private XYMultipleSeriesDataset dataset;
    private TextView leftbtn;
    private List<TextView> mAddListtv;
    private LinearLayout mAddViewLayout;
    private int mAddWidth;
    private int mAddlayoutH;
    private double mCaloRate = 0.46D * this.mMOVE_HEIGHT;
    private double mMaxAmp = 35.0D;
    private double mMaxAngle = 100.0D * (this.mMaxAmp * this.mMaxAmp) / 36.0D / 36.0D;
    private float mMaxValue = 3.0F * this.mWeight;
    private float mPower;
    private int mRTAmpPct;
    private LinearLayout mRTViewLayoutLft;
    private LinearLayout mRTViewLayoutRt;
    private float mSpeed;
    private int mWaistRate = 1;
    private float mWeight = 20.0F;
    private TimeSeries series;
    private TextView title;
    Date[] xcache = new Date[this.constNum];
    int[] ycache = new int[this.constNum];

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
        int i = getIntent().getIntExtra(Configs.TypeCode, -1);
        connectDevice();
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
                setParams(0.15D, 4, 35, 30, 3, null);
            case 100200001:
            case 100200002:
            case 100200003:
            case 100200004:
            case 100201001:
            case 100201002:
            case 100201003:
            case 100201004:
            case 100201005:
            case 100201006:
        }
        while (true)
        {
            this.mDeviceStr = CommonDevicesBean.GetBLEName(i);
            this.title.setText(this.mDeviceStr);
            this.mMaxAngle = (100.0D * (this.mMaxAmp * this.mMaxAmp) / 36.0D / 36.0D);
            this.mAddListtv = new ArrayList();
            this.leftbtn.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    PopGymSwayBiUI.this.finish();
                }
            });
            this.mDataPath = "PopGym/";
            this.mLogSuffix = "PopTrng";
            this.mLogData = true;
            this.title.setOnClickListener(this.mSendTestDataListener);
            this.title.setOnLongClickListener(this.mSendBatchTestDataListener);
            return;
            setParams(0.06D, 4, 8, 30, 3, null);
            this.mWaistRate = 4;
            continue;
            setParams(0.03D, 3, 22, 30, 3, null);
            continue;
            setParams(0.15D, 4, 35, 30, 3, null);
            continue;
            setParams(0.15D, 4, 35, 30, 3, null);
            continue;
            setParams(0.06D, 4, 8, 30, 3, null);
            this.mWaistRate = 4;
            continue;
            setParams(0.03D, 3, 22, 30, 3, null);
            continue;
            setParams(0.15D, 4, 35, 30, 3, null);
            continue;
            setParams(0.15D, 4, 35, 30, 3, null);
            continue;
            setParams(0.15D, 4, 35, 30, 3, null);
            continue;
            setParams(0.15D, 8, 35, 30, 3, null);
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

    private void updateChart(int paramInt)
    {
        int i = this.series.getItemCount();
        if (i >= this.constNum)
            i = this.constNum;
        this.addY = paramInt;
        this.addX = new Date().getTime();
        for (int j = 0; j < i; j++)
        {
            this.xcache[j] = new Date(()this.series.getX(j));
            this.ycache[j] = ((int)this.series.getY(j));
        }
        this.series.clear();
        this.series.add(new Date(this.addX), this.addY);
        for (int k = 0; k < i; k++)
            this.series.add(this.xcache[k], this.ycache[k]);
        this.dataset.removeSeries(this.series);
        this.dataset.addSeries(this.series);
        this.chart.invalidate();
    }

    private void updateRTView()
    {
        int i = this.mRTAmpPct * this.mWaistRate / 2;
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
        setContentView(2130968626);
        this.mCaloRate = (0.46D * this.mMOVE_HEIGHT);
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

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        if (!this.mExeciseBegin)
            return;
        if (Math.abs(paramGymRealTimeEvent.getRealAngle()) <= 90.0D);
        for (double d = paramGymRealTimeEvent.getRealAngle(); ; d = paramGymRealTimeEvent.getRealAngle_())
        {
            this.mRTAmpPct = ((int)(36.0D * ((int)d / this.mMaxAmp)));
            if (Math.abs(this.mRTAmpPct) < 2)
                this.mRTAmpPct = 0;
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    PopGymSwayBiUI.this.updateRTView();
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
        this.mAmpPct = 1;
        this.mCalories = ((float)(this.mRepCnt * this.mAmpPct * this.mCaloRate / 100.0D));
        this.mLastingTime_ms = ((int)paramArrayOfDouble[8]);
        this.mLastingTime_S = (this.mLastingTime_ms / 1000);
        this.mFreqency = (60.0F * (this.mRepCnt / this.mLastingTime_S));
        this.mPower = ((float)(9.800000000000001D * this.mWeight * this.mMOVE_HEIGHT / (paramArrayOfDouble[5] / 3000.0D)));
        updateUI();
        if (this.mRepCnt == 1)
            this.mTTSService.ttsPlay("锻炼开始！");
        if (this.mRepCnt % 10 == 0)
        {
            int i = this.mRepCnt % this.mREP_PER_SET;
            if ((this.mRepCnt != 0) && (i == 0))
                i = this.mREP_PER_SET;
            this.mTTSService.ttsPlay("已锻炼：" + i + "次。");
        }
        if (this.mRepCnt % this.mREP_PER_SET == 0)
            this.mTTSService.ttsPlay("第：" + this.mRTDegree + "组结束！建议您休息一分钟！总共消耗：" + getFirstNChars(this.mCalories, 4) + "大卡能量");
        if (this.mRepCnt % this.mMAX_REP == 0)
        {
            this.mTTSService.ttsPlay("该器械锻炼完毕，总共耗时" + this.mLastingTime_S / 60 % 60 + "分" + this.mLastingTime_S % 60 + "秒。");
            this.mRepCnt = 0;
            this.mRTDegree = 0;
            this.mLastingTime_ms = 0;
            this.mCalories = 0.0F;
        }
        Log.i("PopGymSwayBiUI", "mAmpPct:" + this.mAmpPct);
    }

    public void onGymSwayBiRealEvent(GymSwayBiEvent paramGymSwayBiEvent)
    {
        super.onGymSwayBiEvent(paramGymSwayBiEvent);
        if (!this.mExeciseBegin)
            return;
        LOG.i("-----------e.getInstanceNum():" + paramGymSwayBiEvent.getInstanceNum());
        this.mRepCnt = (1 + this.mRepCnt);
        this.mRTDegree = (this.mRepCnt / this.mREP_PER_SET);
        this.mAmpPct = ((int)(100.0D * (paramGymSwayBiEvent.getMaxTauAngle() / this.mMaxAngle)));
        Log.i("PopGymSwayBiUI", "e.getMaxTauAngle():" + paramGymSwayBiEvent.getMaxTauAngle() + " mAmpPct:" + this.mAmpPct);
        if (this.mAmpPct > 100)
            this.mAmpPct = 100;
        this.mCalories = ((float)(this.mRepCnt * this.mAmpPct * this.mCaloRate / 100.0D));
        this.mLastingTime_ms += (int)paramGymSwayBiEvent.getWholeTime();
        this.mLastingTime_S = (this.mLastingTime_ms / 1000);
        this.mFreqency = (60.0F * (this.mRepCnt / this.mLastingTime_S));
        this.mPower = ((float)(9.800000000000001D * this.mWeight * this.mMOVE_HEIGHT / (paramGymSwayBiEvent.getWholeTime() / 1000.0D)));
        updateUI();
        if (this.mRepCnt == 1)
            this.mTTSService.ttsPlay("锻炼开始！");
        if (this.mRepCnt % 10 == 0)
        {
            int i = this.mRepCnt % this.mREP_PER_SET;
            if ((this.mRepCnt != 0) && (i == 0))
                i = this.mREP_PER_SET;
            this.mTTSService.ttsPlay("已锻炼：" + i + "次。");
        }
        if (this.mRepCnt % this.mREP_PER_SET == 0)
            this.mTTSService.ttsPlay("第：" + this.mRTDegree + "组结束！建议您休息一分钟！总共消耗：" + getFirstNChars(this.mCalories, 4) + "大卡能量");
        if (this.mRepCnt % this.mMAX_REP == 0)
        {
            this.mTTSService.ttsPlay("该器械锻炼完毕，总共耗时" + this.mLastingTime_S / 60 % 60 + "分" + this.mLastingTime_S % 60 + "秒。");
            this.mRepCnt = 0;
            this.mRTDegree = 0;
            this.mLastingTime_ms = 0;
            this.mCalories = 0.0F;
        }
        Log.i("PopGymSwayBiUI", "mAmpPct:" + this.mAmpPct);
    }

    protected void setParams(double paramDouble, int paramInt1, int paramInt2, int paramInt3, int paramInt4, double[] paramArrayOfDouble)
    {
        super.setParams(paramDouble, paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfDouble);
        this.mMaxAngle = (100.0D * (this.mMaxAmp * this.mMaxAmp) / 36.0D / 36.0D);
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = PopGymSwayBiUI.this.mRepCnt % PopGymSwayBiUI.this.mREP_PER_SET;
                if ((PopGymSwayBiUI.this.mRepCnt != 0) && (i == 0));
                PopGymSwayBiUI.this.mTv1_1.setText(String.valueOf(PopGymSwayBiUI.this.mRepCnt));
                int j = PopGymSwayBiUI.this.mRTDegree % PopGymSwayBiUI.this.mMAX_SET;
                if ((PopGymSwayBiUI.this.mRTDegree != 0) && (j == 0));
                PopGymSwayBiUI.this.mTv1_2.setText(String.valueOf(PopGymSwayBiUI.this.mRTDegree));
                PopGymSwayBiUI.this.mTv2_1.setText(PopGymSwayBiUI.this.getFirstNChars(PopGymSwayBiUI.this.mFreqency, 4));
                PopGymSwayBiUI.this.mTv2_3.setText(PopGymSwayBiUI.this.getFirstNChars(PopGymSwayBiUI.this.mCalories, 4));
                int k = PopGymSwayBiUI.this.mLastingTime_S % 60;
                int m = PopGymSwayBiUI.this.mLastingTime_S / 60 % 60;
                int n = PopGymSwayBiUI.this.mLastingTime_S / 3600;
                PopGymSwayBiUI.this.mTv2_2.setText(n + ":" + m + ":" + k);
                if (PopGymSwayBiUI.this.mAddlayoutH == 0)
                    PopGymSwayBiUI.access$2002(PopGymSwayBiUI.this, PopGymSwayBiUI.this.mAddViewLayout.getHeight());
                if (PopGymSwayBiUI.this.mAddWidth == 0)
                    PopGymSwayBiUI.access$2202(PopGymSwayBiUI.this, PopGymSwayBiUI.this.mAddViewLayout.getWidth());
                int i1 = (int)(PopGymSwayBiUI.this.mAddlayoutH - PopGymSwayBiUI.this.mAddlayoutH * PopGymSwayBiUI.this.mPower * PopGymSwayBiUI.this.mWaistRate / PopGymSwayBiUI.this.mMaxValue);
                Log.i("PopGymSwayBiUI", "martop:" + i1 + " = (int) (mAddlayoutH:" + PopGymSwayBiUI.this.mAddlayoutH + " - mAddlayoutH:" + PopGymSwayBiUI.this.mAddlayoutH + " * mPower:" + PopGymSwayBiUI.this.mPower + "/ mMaxValue:" + PopGymSwayBiUI.this.mMaxValue + ");");
                PopGymSwayBiUI.this.updateBottomView(i1);
            }
        });
    }
}