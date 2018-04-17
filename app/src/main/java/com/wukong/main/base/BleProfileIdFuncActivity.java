package com.wukong.main.base;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.wukong.main.base.scanner.PauseFragment;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.TTSService;
import com.wukong.services.ble.BleProfileService;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.DeviceService;
import com.wukong.services.gym.DeviceService.GymBinder;
import com.wukong.services.gym.GymServiceCallbacks;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.XZWKDeviceProfile;
import com.wukong.services.gym.gymevent.GymFRotationEvent;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymSwayBiEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import com.wukong.services.gym.gymevent.StretchEvent;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

public abstract class BleProfileIdFuncActivity extends BleProfileFuncActivity
        implements GymServiceCallbacks
{
    private static final long INIT_PAUSE_TIME_MS = 19500L;
    protected static boolean NO_BUZZER = false;
    protected static boolean NO_FINISH_PROMPT = false;
    private static final long PAUSE_TIME_MS = 4500L;
    private static final String TAG = "XZWK_IdFUNC";
    protected int mAmpPct;
    protected float mAvrgRevSpeed;
    protected float mAvrgSpd_KMPH;
    protected float mCalories;
    protected int mConnDeviceNum = 1;
    protected boolean mDetectPause = true;
    protected String mDeviceStr = "";
    protected double mDistance;
    protected float mDistance_km;
    protected double mDistance_m;
    protected double mEvrgFwdV;
    protected boolean mExeciseBegin = false;
    protected AlertDialog mFinishDialog;
    protected AlertDialog.Builder mFinishPrompt;
    protected float mForwardAcc;
    protected float mForwardV_KMPH;
    protected float mFreqency;
    private boolean mIdSensorDetected = false;
    private long mInitPauseTime = 19500L;
    protected double mLastDistance_m;
    private long mLastUpdateTimeStamp = 0L;
    protected int mLastingTime_S;
    protected int mLastingTime_ms;
    protected double mMAX_AMP = 45.0D;
    protected int mMAX_REP = this.mREP_PER_SET * this.mMAX_SET;
    protected int mMAX_SET = 3;
    protected double mMOVE_HEIGHT = 0.3D;
    protected double[] mMotionUParams;
    protected AlertDialog mPauseDialog;
    protected AlertDialog.Builder mPausePrompt;
    protected Timer mPauseTimer;
    protected int mREP_PER_SET = 15;
    protected int mRTDegree;
    protected int mRepCnt;
    protected int mRevCnt;
    protected boolean mShowFinishDialog = true;
    protected Timer mSpeakTimer;
    protected Timer mTimer;
    protected int mTimerCnt = -1;
    protected TextView mTv1_1;
    protected TextView mTv1_2;
    protected TextView mTv2_1;
    protected TextView mTv2_2;
    protected TextView mTv2_3;
    protected TextView mTvWrongDevice;
    protected int mValidAMP = 8;
    private Vibrator mVibrator;
    protected AlertDialog mWrongDeviceDialog;
    protected AlertDialog.Builder mWrongDevicePrompt;

    protected static double calTBar(int paramInt)
    {
        double d = 115.0D * Math.sin(paramInt / 57.289999999999999D);
        if (d > 30.0D)
            d = 30.0D;
        if (d < 11.0D)
            d = 11.0D;
        return d;
    }

    private void detectPause()
    {
        if (!this.mDetectPause)
            return;
        this.mTimer.schedule(new TimerTask()
                             {
                                 public void run()
                                 {
                                     label94:
                                     do
                                     {
                                         Iterator localIterator = BleProfileIdFuncActivity.this.mPROFILE_DEVICE_POOL.iterator();
                                         do
                                         {
                                             while (localIterator.hasNext())
                                                 if (((XZWKDeviceProfile)localIterator.next()).isConnected())
                                                 {
                                                     if ((System.currentTimeMillis() - BleProfileIdFuncActivity.this.mLastUpdateTimeStamp <= 4500L) || (BleProfileIdFuncActivity.this.mLastingTime_ms <= 0))
                                                         break label94;
                                                     BleProfileIdFuncActivity.this.showPauseDialog();
                                                     if ((BleProfileIdFuncActivity.this.mIdSensorDetected) && (!BleProfileIdFuncActivity.NO_BUZZER))
                                                         BleProfileIdFuncActivity.this.playBuzzer();
                                                 }
                                             return;
                                         }
                                         while (System.currentTimeMillis() - BleProfileIdFuncActivity.this.mLastUpdateTimeStamp <= BleProfileIdFuncActivity.this.mInitPauseTime);
                                         BleProfileIdFuncActivity.access$202(BleProfileIdFuncActivity.this, 9500L);
                                         BleProfileIdFuncActivity.this.showPauseDialog();
                                     }
                                     while ((!BleProfileIdFuncActivity.this.mIdSensorDetected) || (BleProfileIdFuncActivity.NO_BUZZER));
                                     BleProfileIdFuncActivity.this.playBuzzer();
                                 }
                             }
                , 0L, 5000L);
    }

    private void refreshPauseUI()
    {
        this.mRepCnt = 0;
        this.mRTDegree = 0;
        this.mLastingTime_ms = 0;
        this.mAmpPct = 0;
        this.mLastingTime_S = 0;
        this.mRevCnt = 0;
        this.mCalories = 0.0F;
        this.mFreqency = 0.0F;
        this.mAvrgSpd_KMPH = 0.0F;
        this.mDistance_km = 0.0F;
        this.mEvrgFwdV = 0.0D;
        this.mForwardAcc = 0.0F;
        this.mForwardV_KMPH = 0.0F;
        this.mAvrgRevSpeed = 0.0F;
        this.mDistance = 0.0D;
        this.mDistance_m = 0.0D;
        this.mLastDistance_m = 0.0D;
        updateUI();
    }

    protected void connectDevice()
    {
        String str1 = getIntent().getStringExtra(Configs.MotionName1st);
        String str2 = getIntent().getStringExtra(Configs.MotionAddress1st);
        if (str2 != null)
            connectToGymDevice(str1, str2, 100);
        while (this.mRightConnectIcon == null)
            return;
        this.mRightConnectIcon.setVisibility(0);
    }

    protected abstract void goToReportActivity();

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        getWindow().addFlags(128);
    }

    public void onDeviceConnected()
    {
        super.onDeviceConnected();
        Log.i("XZWK_IdFUNC", "CCCCCCCCCC onDeviceConnected START_INTENT_TS:" + (System.currentTimeMillis() - START_INTENT_TS));
        if (this.mConnDeviceNum == 1)
            if (this.mRepCnt == 0)
                this.mHandler.postDelayed(new Runnable()
                                          {
                                              public void run()
                                              {
                                                  BleProfileIdFuncActivity.this.mTTSService.ttsStop();
                                                  BleProfileIdFuncActivity.this.mTTSService.ttsPlay("已连接".concat(BleProfileIdFuncActivity.this.mDeviceStr));
                                                  BleProfileIdFuncActivity.this.mTTSService.ttsPlay("您现在可以取回手机或将手机继续留在支架上！");
                                              }
                                          }
                        , 500L);
        while (true)
        {
            if (this.mMotionUParams != null)
                NativeSupport.setMotionUParams(this.mMotionUParams);
            return;
            this.mConnDeviceNum = (-1 + this.mConnDeviceNum);
        }
    }

    public void onGymDeviceParams(double[] paramArrayOfDouble)
    {
        super.onGymDeviceParams(paramArrayOfDouble);
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if (BleProfileIdFuncActivity.this.mTv1_1 != null)
                    BleProfileIdFuncActivity.this.mTv1_1.setTextColor(-16777216);
                if (BleProfileIdFuncActivity.this.mTv1_2 != null)
                    BleProfileIdFuncActivity.this.mTv1_2.setTextColor(-16777216);
                if (BleProfileIdFuncActivity.this.mTv2_1 != null)
                    BleProfileIdFuncActivity.this.mTv2_1.setTextColor(-16777216);
                if (BleProfileIdFuncActivity.this.mTv2_2 != null)
                    BleProfileIdFuncActivity.this.mTv2_2.setTextColor(-16777216);
                if (BleProfileIdFuncActivity.this.mTv2_3 != null)
                    BleProfileIdFuncActivity.this.mTv2_3.setTextColor(-16777216);
            }
        });
        this.mExeciseBegin = true;
    }

    public void onGymFRotationEvent(GymFRotationEvent paramGymFRotationEvent)
    {
        if (paramGymFRotationEvent.getForwardV() > 0.1D)
        {
            tryDismissPausePrompt();
            this.mLastUpdateTimeStamp = System.currentTimeMillis();
        }
    }

    public void onGymRealTimeEvent(final GymRealTimeEvent paramGymRealTimeEvent)
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if ((paramGymRealTimeEvent.getPMRevXYZAvedevLP() < 10.0D) && (!BleProfileIdFuncActivity.this.mIdSensorDetected))
                    BleProfileIdFuncActivity.access$102(BleProfileIdFuncActivity.this, true);
                if ((paramGymRealTimeEvent.getPMRevXYZAvedevLP() > 300.0D) && (BleProfileIdFuncActivity.this.mIdSensorDetected))
                {
                    BleProfileIdFuncActivity.access$102(BleProfileIdFuncActivity.this, false);
                    if (BleProfileIdFuncActivity.this.mDetectPause)
                    {
                        BleProfileIdFuncActivity.this.mVibrator.vibrate(800L);
                        if (!BleProfileIdFuncActivity.NO_BUZZER)
                            BleProfileIdFuncActivity.this.playBuzzer();
                    }
                }
            }
        });
    }

    public void onGymSwayBiEvent(GymSwayBiEvent paramGymSwayBiEvent)
    {
        tryDismissPausePrompt();
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
    }

    public void onGymSwaySingleEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        tryDismissPausePrompt();
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
    }

    public void onGymSwaySingleRealEvent(GymSwaySingleEvent paramGymSwaySingleEvent)
    {
        tryDismissPausePrompt();
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
    }

    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
        if ((this.mShowFinishDialog) && (paramInt == 4))
        {
            this.mFinishDialog = this.mFinishPrompt.show();
            return true;
        }
        return super.onKeyDown(paramInt, paramKeyEvent);
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
        paramLocalBinder.startProcessingData();
        ((DeviceService.GymBinder)paramLocalBinder).setPOST_FLPTAU_ANGLE_BAR(this.mValidAMP);
        Log.i(getClass().getSimpleName(), "onServiceBinded()");
    }

    protected void onStop()
    {
        super.onStop();
        if (isFinishing())
        {
            if (this.mTimer != null)
                this.mTimer.cancel();
            if (this.mSpeakTimer != null)
                this.mSpeakTimer.cancel();
            if (this.mPauseTimer != null)
                this.mPauseTimer.cancel();
        }
    }

    public void onStretching(StretchEvent paramStretchEvent)
    {
        tryCancelPauseDialog();
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
    }

    @SuppressLint("WrongConstant")
    protected void onViewCreated(Bundle paramBundle)
    {
        super.onViewCreated(paramBundle);
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
        this.mTimer = new Timer();
        this.mSpeakTimer = new Timer();
        this.mFinishPrompt = new AlertDialog.Builder(this).setTitle("结束锻炼？").setMultiChoiceItems(new String[] { "不再播放防盗蜂鸣声!" }, null, new DialogInterface.OnMultiChoiceClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, boolean paramAnonymousBoolean)
            {
                if ((paramAnonymousInt == 0) && (paramAnonymousBoolean))
                    BleProfileIdFuncActivity.NO_BUZZER = true;
            }
        }).setPositiveButton("继续", null).setNegativeButton("结束", new DialogInterface.OnClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
                if ((BleProfileIdFuncActivity.this.mFinishDialog != null) && (BleProfileIdFuncActivity.this.mFinishDialog.isShowing()))
                    BleProfileIdFuncActivity.this.mFinishDialog.dismiss();
                BleProfileIdFuncActivity.this.goToReportActivity();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener()
        {
            public void onCancel(DialogInterface paramAnonymousDialogInterface)
            {
                BleProfileIdFuncActivity.this.tryDismissPausePrompt();
            }
        });
        if (this.mTvWrongDevice != null)
            this.mTvWrongDevice.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    BleProfileIdFuncActivity.this.mWrongDeviceDialog = BleProfileIdFuncActivity.this.mWrongDevicePrompt.show();
                }
            });
        this.mWrongDevicePrompt = new AlertDialog.Builder(this).setTitle("器材识别错误？").setPositiveButton("没有", null).setNegativeButton("是的，结束并上报", new DialogInterface.OnClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
                if ((BleProfileIdFuncActivity.this.mWrongDeviceDialog != null) && (BleProfileIdFuncActivity.this.mWrongDeviceDialog.isShowing()))
                {
                    BleProfileIdFuncActivity.this.mWrongDeviceDialog.dismiss();
                    BleProfileIdFuncActivity.this.showToastLong("错误识别信息已上报！");
                    BleProfileIdFuncActivity.this.finish();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener()
        {
            public void onCancel(DialogInterface paramAnonymousDialogInterface)
            {
                BleProfileIdFuncActivity.this.tryDismissPausePrompt();
            }
        });
        this.mVibrator = ((Vibrator)getSystemService("vibrator"));
        this.mPausePrompt = new AlertDialog.Builder(this).setTitle("锻炼暂停").setMessage("智能器械将在锻炼暂停后10秒钟自动断开。继续锻炼对话框将自动消失。\n结束锻炼？  ").setMultiChoiceItems(new String[] { "不再播放防盗蜂鸣声" }, null, new DialogInterface.OnMultiChoiceClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, boolean paramAnonymousBoolean)
            {
                if ((paramAnonymousInt == 0) && (paramAnonymousBoolean))
                    BleProfileIdFuncActivity.NO_BUZZER = true;
            }
        }).setPositiveButton("继续", null).setNegativeButton("结束", new DialogInterface.OnClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
                if ((BleProfileIdFuncActivity.this.mPauseDialog != null) && (BleProfileIdFuncActivity.this.mPauseDialog.isShowing()))
                    BleProfileIdFuncActivity.this.mPauseDialog.dismiss();
                BleProfileIdFuncActivity.this.goToReportActivity();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener()
        {
            public void onCancel(DialogInterface paramAnonymousDialogInterface)
            {
                BleProfileIdFuncActivity.this.tryDismissPausePrompt();
            }
        });
    }

    protected void setParams(double paramDouble, int paramInt1, int paramInt2, int paramInt3, int paramInt4, double[] paramArrayOfDouble)
    {
        this.mMOVE_HEIGHT = paramDouble;
        this.mValidAMP = paramInt1;
        this.mMAX_AMP = paramInt2;
        this.mREP_PER_SET = paramInt3;
        this.mMAX_SET = paramInt4;
        this.mMAX_REP = (this.mREP_PER_SET * this.mMAX_SET);
        this.mMotionUParams = paramArrayOfDouble;
    }

    protected void showPauseDialog()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if ((BleProfileIdFuncActivity.this.mPauseDialog == null) || (!BleProfileIdFuncActivity.this.mPauseDialog.isShowing()))
                {
                    BleProfileIdFuncActivity.this.mTTSService.ttsPlay("锻炼暂停！");
                    BleProfileIdFuncActivity.this.mHandler.post(new Runnable()
                    {
                        public void run()
                        {
                            BleProfileIdFuncActivity.this.mPauseDialog = BleProfileIdFuncActivity.this.mPausePrompt.show();
                        }
                    });
                    if (BleProfileIdFuncActivity.this.mTimerCnt < 0);
                }
                else
                {
                    return;
                }
                BleProfileIdFuncActivity.this.mTimerCnt = 10;
                BleProfileIdFuncActivity.this.mPauseTimer = new Timer();
                BleProfileIdFuncActivity.this.mPauseTimer.schedule(new TimerTask()
                                                                   {
                                                                       public void run()
                                                                       {
                                                                           BleProfileIdFuncActivity.this.mHandler.post(new Runnable()
                                                                           {
                                                                               public void run()
                                                                               {
                                                                                   if ((BleProfileIdFuncActivity.this.mPauseDialog != null) && (BleProfileIdFuncActivity.this.mPauseDialog.isShowing()))
                                                                                   {
                                                                                       AlertDialog localAlertDialog = BleProfileIdFuncActivity.this.mPauseDialog;
                                                                                       BleProfileIdFuncActivity localBleProfileIdFuncActivity = BleProfileIdFuncActivity.this;
                                                                                       int i = localBleProfileIdFuncActivity.mTimerCnt;
                                                                                       localBleProfileIdFuncActivity.mTimerCnt = (i - 1);
                                                                                       localAlertDialog.setMessage("智能器械将在锻炼暂停后10秒钟自动断开。继续锻炼对话框将自动消失。\n结束锻炼？  ".concat(String.valueOf(i)));
                                                                                       if (BleProfileIdFuncActivity.this.mTimerCnt <= -1)
                                                                                       {
                                                                                           BleProfileIdFuncActivity.this.tryDismissPausePrompt();
                                                                                           if (BleProfileIdFuncActivity.this.mPauseTimer != null)
                                                                                               BleProfileIdFuncActivity.this.mPauseTimer.cancel();
                                                                                           BleProfileIdFuncActivity.this.goToReportActivity();
                                                                                       }
                                                                                   }
                                                                                   do
                                                                                   {
                                                                                       return;
                                                                                       BleProfileIdFuncActivity.this.tryDismissPausePrompt();
                                                                                   }
                                                                                   while (BleProfileIdFuncActivity.this.mPauseTimer == null);
                                                                                   BleProfileIdFuncActivity.this.mPauseTimer.cancel();
                                                                               }
                                                                           });
                                                                       }
                                                                   }
                        , 0L, 1000L);
            }
        });
    }

    protected void tryCancelPauseDialog()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if ((BleProfileIdFuncActivity.this.PAUSE_DIALOG != null) && (BleProfileIdFuncActivity.this.PAUSE_DIALOG.isAdded()))
                {
                    BleProfileIdFuncActivity.this.PAUSE_DIALOG.dismiss();
                    BleProfileIdFuncActivity.this.mTTSService.ttsPlay("欢迎您继续使用！");
                }
            }
        });
    }

    protected void tryDismissPausePrompt()
    {
        this.mLastUpdateTimeStamp = System.currentTimeMillis();
        this.mTimerCnt = -1;
        if ((this.mFinishDialog != null) && (this.mFinishDialog.isShowing()))
            this.mFinishDialog.dismiss();
        if ((this.mPauseDialog != null) && (this.mPauseDialog.isShowing()))
            this.mPauseDialog.dismiss();
        if ((this.mWrongDeviceDialog != null) && (this.mWrongDeviceDialog.isShowing()))
            this.mWrongDeviceDialog.dismiss();
    }

    protected void updateUI()
    {
    }
}