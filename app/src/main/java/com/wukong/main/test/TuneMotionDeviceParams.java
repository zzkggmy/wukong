package com.wukong.main.test;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.utils.TTSService;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.LogService;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import java.util.ArrayList;
import java.util.List;

public class TuneMotionDeviceParams extends BleProfileIdFuncActivity
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
    private LinearLayout mAddViewLayout;
    private int mAddWidth;
    private int mAddlayoutH;
    private Button mBtnSubmit;
    private String mDeviceName;
    private String mDeviceTypeCode;
    private EditText mEtDefaultReps;
    private EditText mEtDefaultSets;
    private EditText mEtMaxAmp;
    private EditText mEtMoveHeight;
    private EditText mEtValidAmp;
    private float mMaxValue = 20.0F * this.mWeight;
    private double[] mParams = new double[20];
    private String mParamsStr = "";
    private float mPower;
    private int mRTAmpPct;
    private LinearLayout mRTViewLayoutLft;
    private LinearLayout mRTViewLayoutRt;
    private float mSpeed;
    private TextView mTvDeviceType;
    private TextView mTvParams;
    private float mWeight = 20.0F;
    private TextView title;

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
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1 + this.mRTViewLayoutRt.getWidth() / 30, -1);
        localLayoutParams.setMargins(0, 0, 1, 0);
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
    }

    private void initViews()
    {
        this.mRightConnectIcon.setVisibility(0);
        this.title = ((TextView)findViewById(2131558653));
        this.leftbtn = ((TextView)findViewById(2131558652));
        this.mTvDeviceType = ((TextView)findViewById(2131558549));
        this.mTv1_1 = ((TextView)findViewById(2131558550));
        this.mTv1_2 = ((TextView)findViewById(2131558551));
        this.mTvParams = ((TextView)findViewById(2131558560));
        this.mEtValidAmp = ((EditText)findViewById(2131558582));
        this.mEtMaxAmp = ((EditText)findViewById(2131558583));
        this.mEtMoveHeight = ((EditText)findViewById(2131558584));
        this.mEtDefaultReps = ((EditText)findViewById(2131558585));
        this.mEtDefaultSets = ((EditText)findViewById(2131558586));
        this.mAddViewLayout = ((LinearLayout)findViewById(2131558567));
        this.mRTViewLayoutRt = ((LinearLayout)findViewById(2131558555));
        this.mRTViewLayoutLft = ((LinearLayout)findViewById(2131558554));
        this.mBtnSubmit = ((Button)findViewById(2131558561));
        this.mBtnSubmit.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                if (TuneMotionDeviceParams.this.mRepCnt < 1)
                {
                    TuneMotionDeviceParams.this.showToastLong("请链接传感器并摆动器械！");
                    return;
                }
                if ((TuneMotionDeviceParams.this.mEtMoveHeight.getText().toString().equals("")) || (TuneMotionDeviceParams.this.mEtValidAmp.getText().toString().equals("")) || (TuneMotionDeviceParams.this.mEtMaxAmp.getText().toString().equals("")) || (TuneMotionDeviceParams.this.mEtDefaultReps.getText().toString().equals("")) || (TuneMotionDeviceParams.this.mEtDefaultSets.getText().toString().equals("")))
                {
                    TuneMotionDeviceParams.this.showToastLong("所有数据不能为空！");
                    return;
                }
                TuneMotionDeviceParams.this.submitParams();
            }
        });
        this.mDeviceStr = "传感器";
        this.title.setText("调试运动传感器参数");
        Intent localIntent = getIntent();
        this.mDeviceName = localIntent.getStringExtra("equipTypesBean_name");
        this.mDeviceTypeCode = localIntent.getStringExtra("equipTypesBean_code");
        this.mTvDeviceType.setText(this.mDeviceName);
        this.mTvDeviceType.setOnLongClickListener(new View.OnLongClickListener()
        {
            public boolean onLongClick(View paramAnonymousView)
            {
                if (TuneMotionDeviceParams.this.mTvDeviceType.getText().toString().contains(TuneMotionDeviceParams.this.mDeviceName))
                    TuneMotionDeviceParams.this.mTvDeviceType.setText(TuneMotionDeviceParams.this.mDeviceTypeCode);
                while (true)
                {
                    return false;
                    TuneMotionDeviceParams.this.mTvDeviceType.setText(TuneMotionDeviceParams.this.mDeviceName);
                }
            }
        });
        this.mAddListtv = new ArrayList();
        this.leftbtn.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                TuneMotionDeviceParams.this.finish();
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
        double[] arrayOfDouble1 = this.mParams;
        int i = 9 + 1;
        arrayOfDouble1[9] = Double.valueOf(this.mEtMoveHeight.getText().toString()).doubleValue();
        double[] arrayOfDouble2 = this.mParams;
        int j = i + 1;
        arrayOfDouble2[i] = Double.valueOf(this.mEtValidAmp.getText().toString()).doubleValue();
        double[] arrayOfDouble3 = this.mParams;
        int k = j + 1;
        arrayOfDouble3[j] = Double.valueOf(this.mEtMaxAmp.getText().toString()).doubleValue();
        double[] arrayOfDouble4 = this.mParams;
        int m = k + 1;
        arrayOfDouble4[k] = Double.valueOf(this.mEtDefaultReps.getText().toString()).doubleValue();
        double[] arrayOfDouble5 = this.mParams;
        int n = m + 1;
        arrayOfDouble5[m] = Double.valueOf(this.mEtDefaultSets.getText().toString()).doubleValue();
        double[] arrayOfDouble6 = this.mParams;
        (n + 1);
        arrayOfDouble6[n] = System.currentTimeMillis();
        StringBuilder localStringBuilder = new StringBuilder("");
        localStringBuilder.append(getNowTimeString()).append(",\"" + this.mDeviceName + "\"".concat(",").concat(this.mDeviceTypeCode).concat(","));
        for (int i1 = 0; i1 < this.mParams.length; i1++)
            localStringBuilder.append(this.mParams[i1]).append(",");
        localStringBuilder.append("\n");
        LogService.newOrAppendTestLogCSV("CollectTime,Name,TypeCode,Fx,Fy,Fz,Fa,Ready,Tx,Ty,Tz,Ta,MoveHeight,ValidAmp,MaxAmp,DefaultReps,DefaultSets,TimeStamp,undef,undef,undef,undef,undef", localStringBuilder.toString(), "DeviceParams");
        showToastLong("收集完成！");
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

    protected void goToReportActivity()
    {
        finish();
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968631);
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
        StringBuilder localStringBuilder2 = localStringBuilder1.append(paramArrayOfDouble[0]).append(", ");
        int k = j + 1;
        StringBuilder localStringBuilder3 = localStringBuilder2.append(paramArrayOfDouble[j]).append(", ");
        (k + 1);
        this.mParamsStr = paramArrayOfDouble[k];
        updateUI();
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        this.mRTDegree = Math.abs((int)paramGymRealTimeEvent.getSignedAmp());
        this.mRTAmpPct = ((int)(30.0D * (paramGymRealTimeEvent.getSignedAmp() / 30.0D)));
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                TuneMotionDeviceParams.this.updateRTView();
            }
        });
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

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
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
                int i = TuneMotionDeviceParams.this.mRepCnt % 10;
                if ((TuneMotionDeviceParams.this.mRepCnt != 0) && (i == 0))
                    i = 10;
                TuneMotionDeviceParams.this.mTv1_1.setText(String.valueOf(i) + "/" + 10);
                if (TuneMotionDeviceParams.this.mAddlayoutH == 0)
                    TuneMotionDeviceParams.access$1302(TuneMotionDeviceParams.this, TuneMotionDeviceParams.this.mAddViewLayout.getHeight());
                if (TuneMotionDeviceParams.this.mAddWidth == 0)
                    TuneMotionDeviceParams.access$1502(TuneMotionDeviceParams.this, TuneMotionDeviceParams.this.mAddViewLayout.getWidth());
                TuneMotionDeviceParams.this.mTvParams.setText(TuneMotionDeviceParams.this.mParamsStr);
                int j = (int)(TuneMotionDeviceParams.this.mAddlayoutH - TuneMotionDeviceParams.this.mAddlayoutH * TuneMotionDeviceParams.this.mPower / TuneMotionDeviceParams.this.mMaxValue);
                TuneMotionDeviceParams.this.updateBottomView(j);
            }
        });
    }
}