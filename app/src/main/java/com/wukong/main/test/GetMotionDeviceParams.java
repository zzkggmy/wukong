package com.wukong.main.test;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.utils.TTSService;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.DeviceService.GymBinder;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import java.util.ArrayList;
import java.util.List;

public class GetMotionDeviceParams extends BleProfileIdFuncActivity
{
    private static final int COLUMN_CNT = 20;
    private static final double MAX_AMP = 30.0D;
    private static final int MAX_REP = 30;
    private static final int MAX_SET = 3;
    private static final double MOVE_HEIGHT = 0.4D;
    private static final int REP_PER_SET = 10;
    private static final int RT_COLUMN_CNT = 30;
    private static final String TAG = "TuneMotionDeviceParams";
    private TextView leftbtn;
    private List<TextView> mAddListtv;
    private int mAddWidth;
    private int mAddlayoutH;
    private Button mBtnSubmit;
    private String mDeviceName;
    private String mDeviceTypeCode;
    private DeviceService.GymBinder mGymBinder;
    private float mMaxValue = 20.0F * this.mWeight;
    private double[] mParams = new double[20];
    private String mParamsStr = "";
    private float mPower;
    private int mRTAmpPct;
    private int mRTAmpPct1;
    private LinearLayout mRTViewLayoutLft;
    private LinearLayout mRTViewLayoutLft1;
    private LinearLayout mRTViewLayoutRt;
    private LinearLayout mRTViewLayoutRt1;
    private int mRealAngle;
    private int mRepCntReal;
    private boolean mShowRTAngle = false;
    private float mSpeed;
    private TextView mTvParams;
    private TextView mTvRtAmp;
    private TextView mTvRtAmp1;
    private float mWeight = 20.0F;
    private TextView title;

    private TextView getRTColumnChart()
    {
        TextView localTextView = new TextView(getApplicationContext());
        localTextView.setBackgroundColor(-65536);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1 + this.mRTViewLayoutRt.getWidth() / 30, -1);
        localLayoutParams.setMargins(0, 0, 1, 0);
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
    }

    private TextView getRTColumnChart1()
    {
        TextView localTextView = new TextView(getApplicationContext());
        localTextView.setBackgroundColor(-65536);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1 + this.mRTViewLayoutRt1.getWidth() / 30, -1);
        localLayoutParams.setMargins(0, 0, 1, 0);
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
    }

    private void initViews()
    {
        this.mRightConnectIcon.setVisibility(0);
        this.title = ((TextView)findViewById(2131558653));
        this.leftbtn = ((TextView)findViewById(2131558652));
        this.mTv1_1 = ((TextView)findViewById(2131558550));
        this.mTv1_2 = ((TextView)findViewById(2131558551));
        this.mTv2_1 = ((TextView)findViewById(2131558552));
        this.mTv2_2 = ((TextView)findViewById(2131558553));
        this.mTvParams = ((TextView)findViewById(2131558560));
        this.mTvRtAmp = ((TextView)findViewById(2131558556));
        this.mTvRtAmp1 = ((TextView)findViewById(2131558559));
        this.mRTViewLayoutRt = ((LinearLayout)findViewById(2131558555));
        this.mRTViewLayoutLft = ((LinearLayout)findViewById(2131558554));
        this.mRTViewLayoutRt1 = ((LinearLayout)findViewById(2131558558));
        this.mRTViewLayoutLft1 = ((LinearLayout)findViewById(2131558557));
        this.mBtnSubmit = ((Button)findViewById(2131558561));
        this.mBtnSubmit.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                GetMotionDeviceParams.this.showDeviceScanningDialog(null, null, 10000);
            }
        });
        this.mTvRtAmp.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                GetMotionDeviceParams localGetMotionDeviceParams = GetMotionDeviceParams.this;
                if (!GetMotionDeviceParams.this.mShowRTAngle);
                for (boolean bool = true; ; bool = false)
                {
                    GetMotionDeviceParams.access$102(localGetMotionDeviceParams, bool);
                    if (!GetMotionDeviceParams.this.mShowRTAngle)
                        break;
                    GetMotionDeviceParams.this.mTvRtAmp.setBackgroundColor(-7829368);
                    GetMotionDeviceParams.this.mTvRtAmp.setTextColor(-1);
                    GetMotionDeviceParams.this.mTvRtAmp1.setBackgroundColor(-7829368);
                    GetMotionDeviceParams.this.mTvRtAmp1.setTextColor(-1);
                    return;
                }
                GetMotionDeviceParams.this.mTvRtAmp.setBackgroundColor(-1);
                GetMotionDeviceParams.this.mTvRtAmp.setTextColor(-7829368);
                GetMotionDeviceParams.this.mTvRtAmp.setText("实时动作幅度 ");
                GetMotionDeviceParams.this.mTvRtAmp1.setBackgroundColor(-1);
                GetMotionDeviceParams.this.mTvRtAmp1.setTextColor(-7829368);
                GetMotionDeviceParams.this.mTvRtAmp1.setText("实时动作幅度 ");
            }
        });
        this.mDeviceStr = "传感器";
        this.title.setText("获取运动传感器参数");
        this.mAddListtv = new ArrayList();
        this.leftbtn.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                GetMotionDeviceParams.this.finish();
            }
        });
        this.mDataPath = "PopGym/";
        this.mLogSuffix = "PopTrng";
    }

    private void resetGym()
    {
        NativeSupport.resetGym();
    }

    private void submitParams()
    {
        showToastLong("收集完成！");
    }

    private void updateRTView()
    {
        int i = this.mRTAmpPct / 3;
        this.mRTViewLayoutRt.removeAllViews();
        this.mRTViewLayoutLft.removeAllViews();
        int j = Math.abs(i);
        int k = 0;
        if (k < j)
        {
            float f = 0.1F + k / 30.0F;
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
        this.mTv1_2.setText(String.valueOf(this.mRTDegree).concat("˚"));
    }

    private void updateRTView1()
    {
        int i = this.mRTAmpPct1 / 3;
        this.mRTViewLayoutRt1.removeAllViews();
        this.mRTViewLayoutLft1.removeAllViews();
        int j = Math.abs(i);
        int k = 0;
        if (k < j)
        {
            float f = 0.1F + k / 30.0F;
            if (f > 1.0F)
                f = 1.0F;
            TextView localTextView = getRTColumnChart1();
            localTextView.setAlpha(f);
            if (i > 0)
                this.mRTViewLayoutRt1.addView(localTextView);
            while (true)
            {
                k++;
                break;
                this.mRTViewLayoutLft1.addView(localTextView);
            }
        }
        this.mTv2_2.setText(String.valueOf(Math.abs(this.mRealAngle)).concat("˚"));
    }

    protected void goToReportActivity()
    {
        finish();
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968621);
        this.mDetectPause = false;
        this.mAutoScan = false;
        this.mAutoBind = true;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        resetGym();
    }

    public void onGymDeviceParams(double[] paramArrayOfDouble)
    {
        super.onGymDeviceParams(paramArrayOfDouble);
        for (int i = 0; i < 9; i++)
            this.mParams[i] = paramArrayOfDouble[i];
        StringBuilder localStringBuilder1 = new StringBuilder();
        int j = 0 + 1;
        StringBuilder localStringBuilder2 = localStringBuilder1.append((int)paramArrayOfDouble[0]).append(", ");
        int k = j + 1;
        StringBuilder localStringBuilder3 = localStringBuilder2.append((int)paramArrayOfDouble[j]).append(", ");
        (k + 1);
        this.mParamsStr = ((int)paramArrayOfDouble[k]);
        updateUI();
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        this.mRTDegree = Math.abs((int)paramGymRealTimeEvent.getSignedAmp());
        this.mRTAmpPct = ((int)(30.0D * (paramGymRealTimeEvent.getSignedAmp() / 30.0D)));
        if (Math.abs(paramGymRealTimeEvent.getRealAngle()) <= 90.0D);
        for (double d = paramGymRealTimeEvent.getRealAngle(); ; d = paramGymRealTimeEvent.getRealAngle_())
        {
            this.mRealAngle = ((int)d);
            this.mRTAmpPct1 = ((int)(30.0D * (this.mRealAngle / 30.0D)));
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    GetMotionDeviceParams.this.updateRTView();
                    GetMotionDeviceParams.this.updateRTView1();
                    if (GetMotionDeviceParams.this.mShowRTAngle)
                    {
                        GetMotionDeviceParams.this.mTvRtAmp.setText("实时动作幅度 ".concat(String.valueOf(GetMotionDeviceParams.this.mRTDegree)));
                        GetMotionDeviceParams.this.mTvRtAmp1.setText("实时动作幅度 ".concat(String.valueOf(GetMotionDeviceParams.this.mRealAngle)));
                    }
                }
            });
            return;
        }
    }

    public void onGymSwaySingleEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        if (this.mRTAmpPct < 0)
            return;
        super.onGymSwaySingleEvent(paramGymSwaySingleEvent);
        this.mRepCnt = (1 + this.mRepCnt);
        this.mAmpPct = ((int)(100.0D * (paramGymSwaySingleEvent.getMaxTauAngle() / 30.0D)));
        this.mPower = ((float)(0.4D * (9.800000000000001D * this.mWeight) / (paramGymSwaySingleEvent.get1stPhaseTime() / 1000.0D)));
        Log.i("TuneMotionDeviceParams", "mAmpPct: " + this.mAmpPct + " = (int)(e.getMaxTauAngle():" + paramGymSwaySingleEvent.getMaxTauAngle() + "/MAX_AMP*100)");
        if (this.mAmpPct > 100)
            this.mAmpPct = 100;
        if (this.mRepCnt == 1)
            this.mTTSService.ttsPlay("锻炼开始！");
        updateUI();
    }

    public void onGymSwaySingleRealEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        super.onGymSwaySingleEvent(paramGymSwaySingleEvent);
        this.mRepCntReal = (1 + this.mRepCntReal);
        updateUI1();
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
        this.mGymBinder = ((DeviceService.GymBinder)paramLocalBinder);
        Log.i(getClass().getSimpleName(), "onServiceBinded() " + this);
    }

    protected void onViewCreated(Bundle paramBundle)
    {
        super.onViewCreated(paramBundle);
        initViews();
    }

    protected void updateUI()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = GetMotionDeviceParams.this.mRepCnt % 10;
                if ((GetMotionDeviceParams.this.mRepCnt != 0) && (i == 0))
                    i = 10;
                GetMotionDeviceParams.this.mTv1_1.setText(String.valueOf(i) + "/" + 10);
                GetMotionDeviceParams.this.mTvParams.setText(GetMotionDeviceParams.this.mParamsStr);
                GetMotionDeviceParams.this.mTvParams.setBackgroundColor(-7829368);
            }
        });
    }

    protected void updateUI1()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = GetMotionDeviceParams.this.mRepCntReal % 10;
                if ((GetMotionDeviceParams.this.mRepCntReal != 0) && (i == 0))
                    i = 10;
                GetMotionDeviceParams.this.mTv2_1.setText(String.valueOf(i) + "/" + 10);
            }
        });
    }
}