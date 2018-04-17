package com.wukong.main.test;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.beans.OutdoorHeartRateP;
import com.wukong.main.utils.TTSService;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import java.util.HashMap;
import java.util.Timer;

public class HeartRateTest extends BleProfileIdFuncActivity
{
    private static final String AUTO_CONNECT = "自动连接智能心率设备";
    private static final String BLANK = "  ";
    private static final String COMMA = ",";
    private static final String CONNECTED = "智能心率设备已连接！";
    private static final String CONNECTING = "正在连接智能心率设备";
    private static final String CONN_ISSUE_RETRY = "连接出现问题，请重试！";
    private static final int COUNT_DOWN_MAX = 30;
    private static final String DEVICE_DISCONN = "智能心率设备已断开！";
    private static final String FINISH_IN_5_SEC = "本次测量将在5秒钟后结束";
    private static final String HANDS_ON_CONTACT = "双手已触碰采集点";
    private static final int HEART_RATE_MAX = 130;
    private static final int HEART_RATE_MIN = 40;
    private static final String IDENTIFIED_CONNECT = "正在识别并建立连接！";
    private static final String NEED_30_SEC = "采集时间需要大约30秒";
    private static final String PLACE_PHONE_ON_PLATFORM = "请将手机置于云台";
    private static final String PLS_HANDS_ON_CONTACT = "请将双手触碰采集点";
    private static final String SECOND = "秒";
    private static final String START_TESTING = "测量开始！";
    private static final String TAG = "HeartRateUI";
    private static final String TIME_OUT = "操作超时！";
    private static final String TOUCH_AFTER_CONNECT = "请在设备连接后再触碰采集点";
    private long init_ms;
    private TextView leftbtn;
    private boolean mActive = false;
    private int mHeartRate;
    private HashMap<String, OutdoorHeartRateP> mIdSensorMap = new HashMap();
    private boolean mIsConnected;
    private boolean mIsConnecting = true;
    private boolean mIsScanning;
    private long mLastUpdateTimeStamp;
    private LinearLayout mLoHeartRateBg;
    private String mNearestIdAddress;
    private int mPAType;
    private double mPMRevXYZAvedevLP = 10000.0D;
    private int mRandomRep;
    private int mRandomStartReq;
    private int mSeq;
    private Timer mTimer;
    private int mTotalHeartRate;
    private TextView mTvHeartRate;
    private TextView mTvHeartRateTips;
    private int mValidHRCnt;
    private int mValidHRMax = -1;
    private int mValidHRMin = 500;
    private RelativeLayout nbllayout;
    private TextView nblleft;
    private TextView nbltitle;
    private TextView title;

    private void balanceHR(int paramInt)
    {
        int i = this.mRandomRep;
        this.mRandomRep = (i - 1);
        if ((i == 0) && ((paramInt < 40) || (paramInt > 130)))
            if (this.mHeartRate != 0)
                break label70;
        label70: for (this.mHeartRate = (75 + (int)(30.0D * Math.random() - 15.0D)); ; this.mHeartRate += (int)(8.0D * Math.random() - 4.0D))
        {
            this.mRandomRep = ((int)(1.0D + 3.0D * Math.random()));
            return;
        }
    }

    private void initViews()
    {
        this.nblleft = ((TextView)findViewById(2131558659));
        this.nbltitle = ((TextView)findViewById(2131558661));
        this.nbllayout = ((RelativeLayout)findViewById(2131558502));
        this.mLoHeartRateBg = ((LinearLayout)findViewById(2131558503));
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903089));
        this.mTvHeartRateTips = ((TextView)findViewById(2131558506));
        this.nbllayout.setBackgroundColor(getResources().getColor(2131427417));
        this.nbltitle.setText(getString(2131165283));
        this.nbltitle.setTextColor(getResources().getColor(2131427362));
        this.nbltitle.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                HeartRateTest.this.showDeviceScanningDialog(null, "YAXLhlthbt", 20001);
            }
        });
        Drawable localDrawable = getResources().getDrawable(2130903043);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        this.nblleft.setCompoundDrawables(localDrawable, null, null, null);
        this.nblleft.setText(getString(2131165223));
        this.nblleft.setTextColor(getResources().getColor(2131427361));
        this.nblleft.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                HeartRateTest.this.finishThisActivity(1);
            }
        });
        this.mTvHeartRate = ((TextView)findViewById(2131558504));
        this.mIsConnecting = true;
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          HeartRateTest.access$102(HeartRateTest.this, false);
                                      }
                                  }
                , 800L);
        showToastShort("请将手机置于云台");
        showToastShort("自动连接智能心率设备");
        showToastShort("请在设备连接后再触碰采集点");
        this.mTvHeartRateTips.setText("请将手机置于云台");
        if (this.mTTSService != null)
        {
            this.mTTSService.ttsStop();
            this.mTTSService.ttsPlay("请将手机置于云台".concat("自动连接智能心率设备").concat("请在设备连接后再触碰采集点"));
        }
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        this.init_ms = System.currentTimeMillis();
        this.mTimer = new Timer();
    }

    private void updateUI(int paramInt1, int paramInt2)
    {
        this.mSeq = paramInt2;
        if (paramInt2 == 1)
            this.mRandomStartReq = (10 + (int)(12.0D * Math.random()));
        if (paramInt2 > this.mRandomStartReq)
            if ((paramInt1 < 40) || (paramInt1 > 130))
                balanceHR(paramInt1);
        while (true)
        {
            Log.i("HeartRateUI", "------mHeartRate:" + this.mHeartRate + " seq:" + paramInt2 + " RandRep:" + this.mRandomRep + " StartReq:" + this.mRandomStartReq);
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    if (HeartRateTest.this.mHeartRate < 40)
                    {
                        HeartRateTest.this.mTvHeartRate.setText("--");
                        return;
                    }
                    HeartRateTest.this.mTvHeartRate.setText(String.valueOf(HeartRateTest.this.mHeartRate));
                }
            });
            if ((this.mHeartRate > 40) && (this.mHeartRate <= 130))
            {
                this.mTotalHeartRate += this.mHeartRate;
                this.mValidHRCnt = (1 + this.mValidHRCnt);
                if (this.mHeartRate > this.mValidHRMax)
                    this.mValidHRMax = this.mHeartRate;
                if (this.mHeartRate < this.mValidHRMin)
                    this.mValidHRMin = this.mHeartRate;
            }
            return;
            this.mHeartRate = paramInt1;
            this.mRandomRep = 0;
            continue;
            if (paramInt1 > 130)
            {
                balanceHR(paramInt1);
            }
            else
            {
                this.mHeartRate = paramInt1;
                this.mRandomRep = 0;
            }
        }
    }

    protected void finishThisActivity(final int paramInt)
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                Intent localIntent = new Intent();
                if (HeartRateTest.this.mValidHRCnt != 0)
                {
                    localIntent.putExtra("AvrgHeartRate", HeartRateTest.this.mTotalHeartRate / HeartRateTest.this.mValidHRCnt);
                    localIntent.putExtra("MaxHeartRate", HeartRateTest.this.mValidHRMax);
                    localIntent.putExtra("MinHeartRate", HeartRateTest.this.mValidHRMin);
                }
                HeartRateTest.this.setResult(paramInt, localIntent);
                HeartRateTest.access$102(HeartRateTest.this, false);
                HeartRateTest.this.finish();
            }
        });
    }

    protected void goToReportActivity()
    {
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968606);
        this.mDetectPause = false;
        this.mShowFinishDialog = false;
        this.mAutoConnect = false;
        this.mAutoBind = false;
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        initViews();
    }

    public void onDeviceConnected()
    {
        this.mIsConnected = true;
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903088));
    }

    public void onDeviceDisconnected()
    {
        super.onDeviceDisconnected();
        showToastShort("智能心率设备已断开！");
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903089));
    }

    public void onDeviceSelected(BluetoothDevice paramBluetoothDevice, String paramString, int paramInt)
    {
        connectToGymDevice(paramBluetoothDevice.getName(), paramBluetoothDevice.getAddress(), 0);
    }

    public void onHeartRate(int[] paramArrayOfInt)
    {
        Log.i("HeartRateUI", "hr[0]" + paramArrayOfInt[0] + " hr[1]" + paramArrayOfInt[1]);
        if (paramArrayOfInt[1] == 2)
        {
            this.mTTSService.ttsPlay("欢迎使用智能心率测试仪！本次测量大概需要30秒。请您保持双手触碰采集点。");
            this.mValidHRCnt = 0;
            this.mTotalHeartRate = 0;
            this.mValidHRMax = -1;
            this.mValidHRMin = 500;
        }
        if (this.mValidHRCnt == 2)
            this.mTTSService.ttsPlay("正在测量！");
        if ((this.mValidHRCnt == 10) && (paramArrayOfInt[1] > 10))
            this.mTTSService.ttsPlay("平均心率:" + this.mTotalHeartRate / this.mValidHRCnt + ",最高心率:" + this.mValidHRMax + ",最低心率:" + this.mValidHRMin + "。测量完毕！");
        updateUI(paramArrayOfInt[0], paramArrayOfInt[1]);
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
    }

    public void onStart()
    {
        super.onStart();
        if (this.mIsConnected)
            this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903088));
    }

    protected void onStop()
    {
        super.onStop();
    }

    public void unbindService(ServiceConnection paramServiceConnection)
    {
        super.unbindService(paramServiceConnection);
        this.mLoHeartRateBg.setBackground(getResources().getDrawable(2130903089));
    }
}