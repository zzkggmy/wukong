package com.wukong.main.barroute;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import java.util.ArrayList;
import java.util.List;

public class PopGymAllUI extends BleProfileIdFuncActivity
{
    private static final String TAG = "PopGymSwaySiUI";
    private TextView leftbtn;
    private List<TextView> mAddListtv;
    private LinearLayout mAddViewLayout;
    private int mAddWidth;
    private int mAddlayoutH;
    private int mCOLUMN_CNT = 20;
    private float mMaxValue = 20.0F * this.mWeight;
    private int mMin_MAX_AMP;
    private float mPower;
    private int mRTAmpPct;
    private LinearLayout mRTViewLayout;
    private int mRT_COLUMN_CNT = 16;
    private boolean mShowRTAngle = false;
    private float mSpeed;
    private TextView mTvRtAmp;
    private int mWarnCount;
    private float mWeight = 20.0F;
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
        int i = getIntent().getIntExtra("Type", -1);
        String str1 = getIntent().getStringExtra("DeviceName");
        String str2 = getIntent().getStringExtra("DeviceAddress");
        if (str2 != null)
        {
            connectToGymDevice(str1, str2, 0);
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
                case 100100011:
                case 100100014:
                case 100100015:
                case 100100016:
                case 100100020:
                case 100100021:
                case 100100022:
                case 100100023:
                case 100100024:
                case 100100025:
                case 100100026:
                case 100100027:
                case 100100028:
                default:
                    this.mDeviceStr = "划船器";
                    double[] arrayOfDouble = new double[4];
                    arrayOfDouble[0] = 255.0D;
                    arrayOfDouble[1] = 2289.0D;
                    arrayOfDouble[2] = 3626.0D;
                    arrayOfDouble[3] = calTBar(35);
                    setParams(0.4D, 35, 50, 10, 3, arrayOfDouble);
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
                case 100100013:
                case 100100017:
                case 100100018:
                case 100100019:
                case 100100012:
                case 100100029:
            }
        }
        while (true)
        {
            this.title.setText(this.mDeviceStr);
            this.mAddListtv = new ArrayList();
            this.leftbtn.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    PopGymAllUI.this.finish();
                }
            });
            this.mTvRtAmp.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    PopGymAllUI localPopGymAllUI = PopGymAllUI.this;
                    if (!PopGymAllUI.this.mShowRTAngle);
                    for (boolean bool = true; ; bool = false)
                    {
                        PopGymAllUI.access$002(localPopGymAllUI, bool);
                        if (!PopGymAllUI.this.mShowRTAngle)
                            break;
                        PopGymAllUI.this.mTvRtAmp.setBackgroundColor(-7829368);
                        PopGymAllUI.this.mTvRtAmp.setTextColor(-1);
                        return;
                    }
                    PopGymAllUI.this.mTvRtAmp.setBackgroundColor(-1);
                    PopGymAllUI.this.mTvRtAmp.setTextColor(-7829368);
                    PopGymAllUI.this.mTvRtAmp.setText("实时动作幅度 ");
                }
            });
            this.mDataPath = "PopGym/";
            this.mLogSuffix = "PopTrng";
            this.mLogData = true;
            this.title.setOnClickListener(this.mSendTestDataListener);
            this.title.setOnLongClickListener(this.mSendBatchTestDataListener);
            return;
            this.mRightConnectIcon.setVisibility(0);
            break;
            this.mDeviceStr = "下拉训练器";
            setParams(0.4D, 8, 45, 10, 3, null);
            continue;
            this.mDeviceStr = "前推训练器";
            setParams(0.4D, 15, 42, 10, 3, null);
            continue;
            this.mDeviceStr = "深蹲训练器";
            setParams(0.4D, 10, 40, 10, 3, null);
            continue;
            this.mDeviceStr = "引体向上训练器";
            setParams(0.4D, 12, 45, 10, 3, null);
            continue;
            this.mDeviceStr = "腹背肌训练器";
            setParams(0.4D, 8, 20, 10, 3, null);
            continue;
            this.mDeviceStr = "胸肌训练器";
            setParams(0.4D, 8, 20, 10, 3, null);
            continue;
            this.mDeviceStr = "蹬力训练器";
            setParams(0.4D, 15, 38, 10, 3, null);
            continue;
            this.mDeviceStr = "划船器";
            setParams(0.4D, 35, 50, 10, 3, null);
            continue;
            this.mDeviceStr = "坐拉器";
            setParams(0.4D, 8, 45, 10, 3, null);
            continue;
            this.mDeviceStr = "坐推器";
            setParams(0.4D, 15, 42, 10, 3, null);
            continue;
            this.mDeviceStr = "深蹲训练器";
            setParams(0.3D, 9, 25, 10, 3, null);
            continue;
            this.mDeviceStr = "蹬力训练器";
            setParams(0.2D, 5, 12, 10, 3, null);
            continue;
            this.mDeviceStr = "划船器";
            setParams(0.4D, 20, 40, 10, 3, null);
            continue;
            this.mDeviceStr = "坐拉器";
            setParams(0.4D, 12, 45, 10, 3, null);
            continue;
            this.mDeviceStr = "健骑机";
            setParams(0.4D, 20, 40, 10, 3, null);
            continue;
            this.mDeviceStr = "坐蹬器";
            setParams(0.4D, 6, 30, 10, 3, null);
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
        for (int j = 0; j < i; j++)
        {
            float f = 0.25F + 1.6F * (float)Math.pow(j / this.mRT_COLUMN_CNT, 2.0D);
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
                    PopGymAllUI.this.updateRTView();
                    if (PopGymAllUI.this.mShowRTAngle)
                        PopGymAllUI.this.mTvRtAmp.setText("实时动作幅度 ".concat(String.valueOf(i)));
                }
            });
            return;
        }
    }

    public void onGymSwaySingleRealEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        super.onGymSwaySingleEvent(paramGymSwaySingleEvent);
        if (!this.mExeciseBegin)
            return;
        LOG.i("----- e.getInstanceNum():" + paramGymSwaySingleEvent.getInstanceNum());
        this.mRepCnt = (1 + this.mRepCnt);
        this.mRTDegree = (this.mRepCnt / this.mREP_PER_SET);
        this.mAmpPct = ((int)(100.0D * (paramGymSwaySingleEvent.getMaxTauAngle() / this.mMAX_AMP)));
        LOG.i("PopGymSwaySiUI", "mAmpPct: " + this.mAmpPct + " = (int)(e.getMaxTauAngle():" + paramGymSwaySingleEvent.getMaxTauAngle() + "/mMAX_AMP*100)");
        if (this.mAmpPct > 100)
            this.mAmpPct = 100;
        this.mSpeed = ((float)(this.mMOVE_HEIGHT / (paramGymSwaySingleEvent.get1stPhaseTime() / 1000.0D)));
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
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = PopGymAllUI.this.mRepCnt % PopGymAllUI.this.mREP_PER_SET;
                if ((PopGymAllUI.this.mRepCnt != 0) && (i == 0))
                    i = PopGymAllUI.this.mREP_PER_SET;
                PopGymAllUI.this.mTv1_1.setText(String.valueOf(i) + "/" + PopGymAllUI.this.mREP_PER_SET);
                int j = PopGymAllUI.this.mRTDegree % PopGymAllUI.this.mMAX_SET;
                if ((PopGymAllUI.this.mRTDegree != 0) && (j == 0))
                    j = PopGymAllUI.this.mMAX_SET;
                PopGymAllUI.this.mTv1_2.setText(String.valueOf(j) + "/" + PopGymAllUI.this.mMAX_SET);
                PopGymAllUI.this.mTv2_1.setText(PopGymAllUI.this.getFirstNChars(PopGymAllUI.this.mFreqency, 4));
                PopGymAllUI.this.mTv2_3.setText(PopGymAllUI.this.getFirstNChars(PopGymAllUI.this.mCalories, 4));
                int k = PopGymAllUI.this.mLastingTime_S % 60;
                int m = PopGymAllUI.this.mLastingTime_S / 60 % 60;
                int n = PopGymAllUI.this.mLastingTime_S / 3600;
                PopGymAllUI.this.mTv2_2.setText(n + ":" + m + ":" + k);
                if (PopGymAllUI.this.mAddlayoutH == 0)
                    PopGymAllUI.access$2202(PopGymAllUI.this, PopGymAllUI.this.mAddViewLayout.getHeight());
                if (PopGymAllUI.this.mAddWidth == 0)
                    PopGymAllUI.access$2402(PopGymAllUI.this, PopGymAllUI.this.mAddViewLayout.getWidth());
                int i1 = (int)(PopGymAllUI.this.mAddlayoutH - PopGymAllUI.this.mAddlayoutH * PopGymAllUI.this.mPower / PopGymAllUI.this.mMaxValue);
                PopGymAllUI.this.updateBottomView(i1);
            }
        });
    }
}