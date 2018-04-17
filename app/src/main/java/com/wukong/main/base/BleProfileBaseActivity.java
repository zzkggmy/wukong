package com.wukong.main.base;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.app.AppCompatActivity;
import android.telephony.TelephonyManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.wukong.main.base.scanner.PauseFragment;
import com.wukong.main.base.scanner.ScannerFragment;
import com.wukong.main.base.scanner.ScannerFragment.OnDeviceSelectedListener;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.services.ble.BleManagerCallbacks;
import com.wukong.services.ble.BleProfileService;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.BaseManager;
import com.wukong.services.gym.BaseServiceCallbacks;
import com.wukong.services.gym.DeviceService;
import com.wukong.services.gym.DeviceService.GymBinder;
import com.wukong.services.gym.DeviceService_F;
import com.wukong.services.gym.LogService;
import com.wukong.services.gym.NativeSupport;
import com.wukong.services.gym.RealTimeServiceCallbacks;
import com.wukong.services.gym.XZWKDeviceProfile;
import com.wukong.services.gym.XZWKDeviceProfileCallback;
import com.wukong.services.gym.usermanager.Users;
import java.util.Iterator;
import java.util.UUID;
import java.util.Vector;

public abstract class BleProfileBaseActivity<E extends BleProfileService.LocalBinder> extends AppCompatActivity
        implements ScannerFragment.OnDeviceSelectedListener, BleManagerCallbacks, BaseServiceCallbacks, XZWKDeviceProfileCallback, SensorEventListener, RealTimeServiceCallbacks
{
    private static String CLASS_NAME;
    private static String LAST_LOG_FILE = "";
    private static final String LOG_URI = "log_uri";
    protected static final int REQUEST_ENABLE_BT = 2;
    private static final long SCAN_WAITING_DURATION = 2000L;
    protected static SoundPool SOUND_POOl;
    protected static int SOURCE_BUZZER = 0;
    protected static int SOURCE_WHISTLE = 0;
    public static long START_INTENT_TS = 0L;
    private static final String TAG = "BPSRNewActivity";
    private ScannerFragment DEVICE_SCAN_DIALOG;
    protected PauseFragment PAUSE_DIALOG;
    protected boolean isMainActivity = false;
    private Sensor mAccelerometer;
    protected boolean mAutoBind = true;
    protected boolean mAutoConnect = true;
    protected boolean mAutoScan = false;
    private int mClickCount = 0;
    private final BroadcastReceiver mCommonBroadcastReceiver = new BroadcastReceiver()
    {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
            String str1 = paramAnonymousIntent.getAction();
            String str2 = paramAnonymousIntent.getStringExtra("com.wukong.EXTRA_DEVICE_NAME");
            String str3 = paramAnonymousIntent.getStringExtra("com.wukong.EXTRA_DEVICE_ADDRESS");
            XZWKDeviceProfile localXZWKDeviceProfile = BleProfileBaseActivity.this.getDeviceProfile(str2, str3);
            int i = -1;
            switch (str1.hashCode())
            {
                default:
                    switch (i)
                    {
                        default:
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                    }
                    break;
                case 1851725396:
                case -595308603:
                case -313674880:
                case 992530809:
                case -1917227378:
                case 1199483364:
            }
            int k;
            do
            {
                do
                {
                    do
                    {
                        return;
                        if (!str1.equals("com.wukong.BROADCAST_CONNECTION_STATE"))
                            break;
                        i = 0;
                        break;
                        if (!str1.equals("com.wukong.BROADCAST_SERVICES_DISCOVERED"))
                            break;
                        i = 1;
                        break;
                        if (!str1.equals("com.wukong.DEVICE_READY"))
                            break;
                        i = 2;
                        break;
                        if (!str1.equals("com.wukong.BROADCAST_BOND_STATE"))
                            break;
                        i = 3;
                        break;
                        if (!str1.equals("com.wukong.BROADCAST_BATTERY_LEVEL"))
                            break;
                        i = 4;
                        break;
                        if (!str1.equals("com.wukong.BROADCAST_ERROR"))
                            break;
                        i = 5;
                        break;
                        switch (paramAnonymousIntent.getIntExtra("com.wukong.EXTRA_CONNECTION_STATE", 0))
                        {
                            default:
                                return;
                            case -1:
                                BleProfileBaseActivity.this.onLinklossOccur();
                                return;
                            case 1:
                                LOG.i("BPSRNewActivity", "4.....onDeviceConnected");
                            case 0:
                        }
                    }
                    while (localXZWKDeviceProfile == null);
                    localXZWKDeviceProfile.setDeviceName(str2);
                    localXZWKDeviceProfile.setDeviceAddress(str3);
                    BleProfileBaseActivity.this.onXZWKDeviceConnected(localXZWKDeviceProfile);
                    return;
                }
                while (localXZWKDeviceProfile == null);
                localXZWKDeviceProfile.setDeviceName(null);
                localXZWKDeviceProfile.setDeviceAddress(null);
                BleProfileBaseActivity.this.onXZWKDeviceDisconnected(localXZWKDeviceProfile);
                return;
                boolean bool1 = paramAnonymousIntent.getBooleanExtra("com.wukong.EXTRA_SERVICE_PRIMARY", false);
                boolean bool2 = paramAnonymousIntent.getBooleanExtra("com.wukong.EXTRA_SERVICE_SECONDARY", false);
                if (bool1)
                {
                    BleProfileBaseActivity.this.onServicesDiscovered(bool2);
                    return;
                }
                BleProfileBaseActivity.this.onDeviceNotSupported();
                return;
                BleProfileBaseActivity.this.onDeviceReady();
                return;
                switch (paramAnonymousIntent.getIntExtra("com.wukong.EXTRA_BOND_STATE", 10))
                {
                    default:
                        return;
                    case 11:
                        BleProfileBaseActivity.this.onBondingRequired();
                        return;
                    case 12:
                }
                BleProfileBaseActivity.this.onBonded();
                return;
                k = paramAnonymousIntent.getIntExtra("com.wukong.EXTRA_BATTERY_LEVEL", -1);
            }
            while (k <= 0);
            BleProfileBaseActivity.this.onDeviceBatteryValueReceived(localXZWKDeviceProfile, k);
            return;
            String str4 = paramAnonymousIntent.getStringExtra("com.wukong.EXTRA_ERROR_MESSAGE");
            int j = paramAnonymousIntent.getIntExtra("com.wukong.EXTRA_ERROR_CODE", 0);
            BleProfileBaseActivity.this.onError(str4, j);
        }
    };
    protected String mDataPath = "";
    private ServiceConnection mDeviceBLEServiceConnection = new ServiceConnection()
    {
        public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
        {
            Object localObject = null;
            DeviceService.GymBinder localGymBinder = (DeviceService.GymBinder)paramAnonymousIBinder;
            Iterator localIterator = BleProfileBaseActivity.this.mPROFILE_DEVICE_POOL.iterator();
            while (localIterator.hasNext())
            {
                XZWKDeviceProfile localXZWKDeviceProfile = (XZWKDeviceProfile)localIterator.next();
                if ((localXZWKDeviceProfile.getDeviceAddress() != null) && (localXZWKDeviceProfile.getDeviceAddress().equals(localGymBinder.getDeviceAddress())))
                    localObject = localXZWKDeviceProfile;
            }
            if (localObject != null)
            {
                localObject.setBLEService(BleProfileBaseActivity.this, localGymBinder);
                BleProfileBaseActivity.this.onXZWKProfileConnected(localObject);
                BleProfileBaseActivity.access$808(BleProfileBaseActivity.this);
                if (BleProfileBaseActivity.this.mPROFILE_DEVICE_POOL.size() == 1)
                    BleProfileBaseActivity.this.startLoggingRawData();
            }
        }

        public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
        {
        }
    };
    protected DeviceService.GymBinder[] mDeviceBLEServicePool = new DeviceService.GymBinder[12];
    protected boolean mDisableSeviceWhenFinishing = false;
    protected boolean mDisconnectDeviceWhenFinishing = false;
    private Sensor mGyroscope;
    protected Handler mHandler;
    private int mInsNums = 0;
    private boolean mIsStopped;
    protected boolean mLogData = false;
    protected String mLogSuffix = "default";
    private int mLongClickCount = 3;
    protected Vector<XZWKDeviceProfile> mPROFILE_DEVICE_POOL = new Vector();
    protected TextView mRightConnectIcon;
    private DeviceService.GymBinder mRunBLEService = null;
    protected View.OnLongClickListener mSaveLastLogListener = new View.OnLongClickListener()
    {
        public boolean onLongClick(View paramAnonymousView)
        {
            if ((!BleProfileBaseActivity.LAST_LOG_FILE.equals("")) && (LogService.moveLogFileToSaved(BleProfileBaseActivity.LAST_LOG_FILE)))
                BleProfileBaseActivity.this.showToastShort("Last Log File Saved!");
            return true;
        }
    };
    protected View.OnLongClickListener mSendBatchTestDataListener = new View.OnLongClickListener()
    {
        public boolean onLongClick(View paramAnonymousView)
        {
            BleProfileBaseActivity.this.showToastShort(String.valueOf(BleProfileBaseActivity.access$110(BleProfileBaseActivity.this)));
            if (BleProfileBaseActivity.this.mLongClickCount == 0)
            {
                BleProfileBaseActivity.access$102(BleProfileBaseActivity.this, 3);
                LOG.i("BPSRNewActivity", "Batch test");
                NativeSupport.cancelPhoneTimer();
                NativeSupport.set_GYM_SERVICE_CALLBACK(null);
                NativeSupport.set_REALTIME_SERVICE_CALLBACK(null);
                if (!LogService.isProcessingTestData())
                {
                    BleProfileBaseActivity.this.showToastShort("Batch-Processing Test Data! - " + BleProfileBaseActivity.this.mDataPath);
                    LogService.processTestData(BleProfileBaseActivity.this.mDataPath, true);
                }
            }
            else
            {
                return true;
            }
            BleProfileBaseActivity.this.showToastShort("Stop Batch-Processing Test Data!");
            LogService.stopProcessingTestData();
            return true;
        }
    };
    protected View.OnClickListener mSendTestDataListener = new View.OnClickListener()
    {
        public void onClick(View paramAnonymousView)
        {
            BleProfileBaseActivity.access$008(BleProfileBaseActivity.this);
            if (BleProfileBaseActivity.this.mClickCount == 5)
            {
                BleProfileBaseActivity.access$002(BleProfileBaseActivity.this, 0);
                BleProfileBaseActivity.this.showToastShort("Processing Test Data! - " + BleProfileBaseActivity.this.mDataPath);
                NativeSupport.cancelPhoneTimer();
                if (!LogService.isProcessingTestData())
                {
                    NativeSupport.set_GYM_SERVICE_CALLBACK(BleProfileBaseActivity.this);
                    LOG.i("BPSRNewActivity", "Sim test");
                    BleProfileBaseActivity.this.showToastShort("Processing Test Data! - " + BleProfileBaseActivity.this.mDataPath);
                    LogService.processTestData(BleProfileBaseActivity.this.mDataPath, false);
                }
            }
            else
            {
                return;
            }
            BleProfileBaseActivity.this.showToastShort("Stop Processing Test Data!");
            LogService.stopProcessingTestData();
        }
    };
    protected SensorManager mSensorManager;
    protected boolean mShowToast = true;
    protected TTSService mTTSService;
    private TelephonyManager mTelManager;
    protected TextView mTvBasketballCount;
    protected TextView mTvLeft2ConnectIcon;
    protected TextView mTvWristBandCount;
    private int mWristBandNums = 0;

    private void autoBind(boolean paramBoolean, String paramString, Intent paramIntent, ServiceConnection paramServiceConnection)
    {
        if (!paramBoolean)
        {
            LOG.i(getClass().getSimpleName(), "3. onStart()");
            if ((!paramString.equals("")) && (!paramString.equals("UNINITIALIZED")) && (this.mAutoConnect))
            {
                LOG.i(getClass().getSimpleName(), "4. onStart()");
                paramIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", paramString);
            }
        }
        try
        {
            startService(paramIntent);
            LOG.i(getClass().getSimpleName(), "5. onStart() Device is Connected -- " + paramBoolean);
            bindService(paramIntent, paramServiceConnection, 0);
            return;
        }
        catch (Exception localException)
        {
            while (true)
            {
                Users.getUsers().setDefaultRunDeviceAddress("UNINITIALIZED");
                showToastLong(localException.getMessage());
            }
        }
    }

    private boolean connectErockDevice(final XZWKDeviceProfile paramXZWKDeviceProfile, int paramInt, final String paramString1, final String paramString2, final Intent paramIntent, final ServiceConnection paramServiceConnection)
    {
        LOG.i("BPSRNewActivity", "0. connectErockDevice():" + paramXZWKDeviceProfile + "Nm:" + paramString1 + "adrs:" + paramString2 + "svc:" + paramIntent + "sc:" + paramServiceConnection);
        if (paramXZWKDeviceProfile == null);
        do
        {
            return false;
            if (paramXZWKDeviceProfile.isConnected())
            {
                disconnectService(paramXZWKDeviceProfile);
                paramInt = 2000;
                paramXZWKDeviceProfile.setBatteryValue(-1);
            }
            LOG.i("BPSRNewActivity", "1. connectErockDevice()");
        }
        while (paramServiceConnection == null);
        LOG.i("BPSRNewActivity", "2. connectErockDevice()");
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          paramXZWKDeviceProfile.setDeviceName(paramString1);
                                          paramXZWKDeviceProfile.setDeviceAddress(paramString2);
                                          paramIntent.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", paramXZWKDeviceProfile.getDeviceAddress());
                                          BleProfileBaseActivity.this.startService(paramIntent);
                                          BleProfileBaseActivity.this.bindService(paramIntent, paramServiceConnection, 0);
                                          LOG.i("BPSRNewActivity", "0.3 connecting getInstanceNum:" + paramXZWKDeviceProfile.getInstanceNum());
                                      }
                                  }
                , paramInt);
        return true;
    }

    private final void ensureBLESupported()
    {
        if (!getPackageManager().hasSystemFeature("android.hardware.bluetooth_le"))
            finish();
    }

    private XZWKDeviceProfile getDeviceProfile(String paramString1, String paramString2)
    {
        if (paramString1 != null)
        {
            Iterator localIterator = this.mPROFILE_DEVICE_POOL.iterator();
            while (localIterator.hasNext())
            {
                XZWKDeviceProfile localXZWKDeviceProfile = (XZWKDeviceProfile)localIterator.next();
                if ((localXZWKDeviceProfile.getDeviceAddress() != null) && (localXZWKDeviceProfile.getDeviceAddress().equals(paramString2)))
                    return localXZWKDeviceProfile;
            }
            return null;
        }
        return null;
    }

    private static IntentFilter makeIntentFilter()
    {
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("com.wukong.BROADCAST_CONNECTION_STATE");
        localIntentFilter.addAction("com.wukong.BROADCAST_SERVICES_DISCOVERED");
        localIntentFilter.addAction("com.wukong.DEVICE_READY");
        localIntentFilter.addAction("com.wukong.BROADCAST_BOND_STATE");
        localIntentFilter.addAction("com.wukong.BROADCAST_BATTERY_LEVEL");
        localIntentFilter.addAction("com.wukong.BROADCAST_ERROR");
        return localIntentFilter;
    }

    private void onDeviceBatteryValueReceived(XZWKDeviceProfile paramXZWKDeviceProfile, int paramInt)
    {
        if (paramXZWKDeviceProfile != null)
        {
            paramXZWKDeviceProfile.setBatteryValue(paramInt);
            updateConnectionIcons(paramXZWKDeviceProfile);
            onBatteryValueReceived(paramInt);
        }
    }

    private void onErockProfileDisconnected(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        paramXZWKDeviceProfile.setBLEService(this, null);
        paramXZWKDeviceProfile.setDeviceName(null);
        paramXZWKDeviceProfile.setDeviceAddress(null);
        onServiceUnbinded();
    }

    private void onXZWKDeviceConnected(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        LOG.i("BPSRNewActivity", "4.1 onDeviceConnected() -  connected！");
        if ((!paramXZWKDeviceProfile.isConnected()) && (paramXZWKDeviceProfile.getDeviceName() != null))
        {
            showToastLong("智能健身设备已连接！");
            if (this.DEVICE_SCAN_DIALOG != null)
                this.DEVICE_SCAN_DIALOG.setConnectedDeviceName(paramXZWKDeviceProfile.getDeviceName());
            paramXZWKDeviceProfile.setBatteryToastShowed(false);
            paramXZWKDeviceProfile.setBatteryValue(-1);
            this.mHandler.post(new Runnable()
            {
                public void run()
                {
                    if (BleProfileBaseActivity.this.mRightConnectIcon != null)
                        BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903242);
                }
            });
        }
        LOG.i("BPSRNewActivity", "DEVICE_SCAN_DIALOG null?" + this.DEVICE_SCAN_DIALOG);
        if ((this.DEVICE_SCAN_DIALOG != null) && (this.DEVICE_SCAN_DIALOG.isAdded()))
        {
            LOG.i("BPSRNewActivity", "DEVICE_SCAN_DIALOG dismiss");
            this.DEVICE_SCAN_DIALOG.dismiss();
        }
        paramXZWKDeviceProfile.setConnected(true);
        updateConnectionIcons();
        onDeviceConnected();
    }

    private void onXZWKDeviceDisconnected(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        LOG.i("BPSRNewActivity", "onDeviceDisconnected() - " + paramXZWKDeviceProfile.getDeviceName() + " Disconnected！");
        try
        {
            if (this.DEVICE_SCAN_DIALOG != null)
                this.DEVICE_SCAN_DIALOG.setDeviceDisconnected();
            showDeviceDisconnectedToast(paramXZWKDeviceProfile);
            updateConnectionIcons();
            onDeviceDisconnected();
            return;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
            while (true)
                LOG.i("BPSRNewActivity", "6. error: onDeviceDisconnected()！");
        }
    }

    private void onXZWKProfileConnected(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        onServiceBinded(paramXZWKDeviceProfile.getBLEService(this));
        paramXZWKDeviceProfile.setDeviceName(paramXZWKDeviceProfile.getDeviceName());
        paramXZWKDeviceProfile.setDeviceAddress(paramXZWKDeviceProfile.getDeviceAddress());
        if ((paramXZWKDeviceProfile.getBLEService(this) != null) && (paramXZWKDeviceProfile.getBLEService(this).isConnected()))
            onXZWKDeviceConnected(paramXZWKDeviceProfile);
    }

    private void reconnectDevice(int paramInt)
    {
        LOG.i("BPSRNewActivity", "onDeviceDisconnectedMistakenly() - eRock Reconnecting！");
        if (("" != null) && (!"".equals("")))
        {
            this.mHandler.postDelayed(new Runnable()
                                      {
                                          public void run()
                                          {
                                              BleProfileBaseActivity.this.showToastShort("连接异常！正在重新建立连接！");
                                              this.val$tempService.putExtra("com.wukong.EXTRA_DEVICE_ADDRESS", this.val$tempAdrs);
                                              BleProfileBaseActivity.this.startService(this.val$tempService);
                                              BleProfileBaseActivity.this.bindService(this.val$tempService, this.val$tempConn, 0);
                                          }
                                      }
                    , 2000L);
            return;
        }
        showToastLong("连接异常！请重启应用！");
    }

    private final void startLoggingRawData()
    {
        if (!this.mLogData);
        while (LogService.isLogOn())
            return;
        LOG.i("BPSRNewActivity", "StartLoggingData");
        LogService.turnOnLog(true);
    }

    private final void stopLoggingRawData()
    {
        if (!this.mLogData);
        while (!LogService.isLogOn())
            return;
        LOG.i("BPSRNewActivity", "StopLoggingData");
        LogService.setLogFileSuffix(this.mLogSuffix);
        LogService.saveRawLogNow();
        LAST_LOG_FILE = LogService.getLastLogFilePath();
        LogService.turnOnLog(false);
    }

    private void unbindDeviceProfile(XZWKDeviceProfile paramXZWKDeviceProfile, ServiceConnection paramServiceConnection)
    {
        BleProfileService.LocalBinder localLocalBinder = paramXZWKDeviceProfile.getBLEService(this);
        LOG.i("BPSRNewActivity", "1. unbindDeviceProfile  " + paramXZWKDeviceProfile.getDeviceName() + " isConnected-" + paramXZWKDeviceProfile.isConnected());
        if (localLocalBinder != null)
        {
            if ((this.mDisableSeviceWhenFinishing) && (isFinishing()))
                localLocalBinder.setActivityIsFinishing(isFinishing());
            if ((isFinishing()) && (this.mDisconnectDeviceWhenFinishing) && (localLocalBinder.isConnected()))
            {
                LOG.i("BPSRNewActivity", "4. unbindDeviceProfile  " + isFinishing());
                paramXZWKDeviceProfile.setBatteryToastShowed(false);
                paramXZWKDeviceProfile.setBatteryValue(-1);
                paramXZWKDeviceProfile.setBatteryVolUpdateCount(0);
                localLocalBinder.disconnect();
                showDeviceDisconnectingToast(paramXZWKDeviceProfile);
                paramXZWKDeviceProfile.setDeviceName(null);
                paramXZWKDeviceProfile.setDeviceAddress(null);
                paramXZWKDeviceProfile.setConnected(false);
                paramXZWKDeviceProfile.releaseServiceInstance();
                LOG.i("BPSRNewActivity", "5. unbindDeviceProfile  mPROFILE_DEVICE_POOL size " + this.mPROFILE_DEVICE_POOL.size());
            }
        }
        unbindService(paramServiceConnection);
        paramXZWKDeviceProfile.setBLEService(this, null);
    }

    private void updateConnectionIcons()
    {
        updateRunConnectIcon();
    }

    private void updateConnectionIcons(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        if (paramXZWKDeviceProfile == null);
        do
        {
            return;
            paramXZWKDeviceProfile.increaseBatteryVolUpdateCountBy1();
        }
        while ((paramXZWKDeviceProfile.getBatteryVolUpdateCount() > 3) && (paramXZWKDeviceProfile.getBatteryVolUpdateCount() % 50 != 0));
        LOG.i("BPSRNewActivity", paramXZWKDeviceProfile.getBatteryVolUpdateCount() + ":" + paramXZWKDeviceProfile.getInstanceNum() + " Battery Vol: " + paramXZWKDeviceProfile.getBatteryValue() + "%");
        updateRunConnectIcon();
    }

    private void updateDeviceCount()
    {
    }

    protected boolean connectToGymDevice(String paramString1, String paramString2, int paramInt)
    {
        if ((paramString1 != null) && ((paramString1.startsWith("YAXL")) || (paramString1.startsWith("eROCK_cp"))))
        {
            XZWKDeviceProfile localXZWKDeviceProfile = getDeviceProfile(paramString1, paramString2);
            if (localXZWKDeviceProfile == null)
            {
                localXZWKDeviceProfile = new XZWKDeviceProfile();
                localXZWKDeviceProfile.initInstanceNum();
                this.mPROFILE_DEVICE_POOL.add(localXZWKDeviceProfile);
            }
            ServiceConnection localServiceConnection = this.mDeviceBLEServiceConnection;
            LOG.i("BPSRNewActivity", "6. connectToGymDevice:" + localXZWKDeviceProfile.getInstanceNum());
            if ((localXZWKDeviceProfile.getInstanceNum() >= 0) && (localXZWKDeviceProfile.getInstanceNum() < DeviceService_F.CLASSES.length))
                return connectErockDevice(localXZWKDeviceProfile, paramInt, paramString1, paramString2, new Intent(this, DeviceService_F.CLASSES[localXZWKDeviceProfile.getInstanceNum()]), localServiceConnection);
        }
        return false;
    }

    protected final void disconnectService(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        BleProfileService.LocalBinder localLocalBinder = paramXZWKDeviceProfile.getBLEService(this);
        if ((localLocalBinder != null) && (localLocalBinder.isConnected()))
        {
            LOG.i("BPSRNewActivity", "disconnecting:" + localLocalBinder.getDeviceName());
            localLocalBinder.disconnect();
            showDeviceDisconnectingToast(paramXZWKDeviceProfile);
        }
    }

    public void finalize()
    {
        LOG.i("BPSRNewActivity", "finalized");
    }

    protected void finishThisActivity(int paramInt)
    {
    }

    protected abstract int getAboutTextId();

    protected abstract int getDefaultDeviceName();

    public BleProfileService.LocalBinder getDeviceBLEService(String paramString, int paramInt)
    {
        if ((paramInt >= 0) && (paramInt < this.mDeviceBLEServicePool.length))
        {
            DeviceService.GymBinder localGymBinder = this.mDeviceBLEServicePool[paramInt];
            if (localGymBinder != null);
            return localGymBinder;
        }
        return null;
    }

    protected Uri getLocalAuthorityLogger()
    {
        return null;
    }

    protected int getLoggerProfileTitle()
    {
        return 0;
    }

    public final boolean isBLEEnabled()
    {
        BluetoothAdapter localBluetoothAdapter = ((BluetoothManager)getSystemService("bluetooth")).getAdapter();
        return (localBluetoothAdapter != null) && (localBluetoothAdapter.isEnabled());
    }

    public void onAccuracyChanged(Sensor paramSensor, int paramInt)
    {
    }

    public final void onBatteryValueReceived(int paramInt)
    {
    }

    public void onBonded()
    {
    }

    public void onBondingRequired()
    {
    }

    protected final void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        Commons.VersionException();
        this.mHandler = new Handler();
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                Users.initUsers(BleProfileBaseActivity.this.getApplicationContext());
                BleProfileBaseActivity.this.ensureBLESupported();
                BleProfileBaseActivity.access$1102(getClass().getName());
                BleProfileBaseActivity.this.mTTSService = new TTSService(BleProfileBaseActivity.this.getApplicationContext());
            }
        });
        if (SOUND_POOl == null)
        {
            SOUND_POOl = new SoundPool(10, 1, 5);
            SOURCE_BUZZER = SOUND_POOl.load(this, 2131099648, 0);
        }
        this.mSensorManager = ((SensorManager)getSystemService("sensor"));
        this.mAccelerometer = this.mSensorManager.getDefaultSensor(1);
        this.mGyroscope = this.mSensorManager.getDefaultSensor(4);
        onInitialize(paramBundle);
        onCreateView(paramBundle);
        setUpView();
        onViewCreated(paramBundle);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mCommonBroadcastReceiver, makeIntentFilter());
        this.DEVICE_SCAN_DIALOG = ScannerFragment.getInstance(BaseManager.XZWK_MTN_DEVICE_SERVICE_UUID);
        this.PAUSE_DIALOG = PauseFragment.getInstance(BaseManager.XZWK_MTN_DEVICE_SERVICE_UUID);
    }

    public boolean onCreateOptionsMenu(Menu paramMenu)
    {
        return true;
    }

    protected abstract void onCreateView(Bundle paramBundle);

    protected void onDestroy()
    {
        super.onDestroy();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mCommonBroadcastReceiver);
    }

    public void onDeviceConnected()
    {
        LOG.i("BPSRNewActivity", "4.2 onDeviceConnected()");
    }

    public void onDeviceDisconnected()
    {
    }

    public final void onDeviceDisconnectedMistakenly(int paramInt)
    {
        reconnectDevice(paramInt);
    }

    public void onDeviceDisconnecting()
    {
    }

    public final void onDeviceNotSupported()
    {
        showToast(2131165317);
    }

    public void onDeviceReady()
    {
    }

    public void onDeviceSelected(BluetoothDevice paramBluetoothDevice, String paramString, int paramInt)
    {
        LOG.i("BPSRNewActivity", "onDeviceSelected()");
        if ((paramBluetoothDevice.getName() != null) && ((paramBluetoothDevice.getName().startsWith("YAXL")) || (paramBluetoothDevice.getName().startsWith("eROCK")) || (paramBluetoothDevice.getName().startsWith("Nordic_ADC"))))
        {
            if (paramBluetoothDevice.getName().startsWith("eROCK"))
                NativeSupport.OLD_SENSOR_TYPE = 1;
            XZWKDeviceProfile localXZWKDeviceProfile = getDeviceProfile(paramBluetoothDevice.getName(), paramBluetoothDevice.getAddress());
            ServiceConnection localServiceConnection = null;
            if (localXZWKDeviceProfile == null)
            {
                localXZWKDeviceProfile = new XZWKDeviceProfile();
                localXZWKDeviceProfile.initInstanceNum();
                localServiceConnection = this.mDeviceBLEServiceConnection;
                this.mPROFILE_DEVICE_POOL.add(localXZWKDeviceProfile);
            }
            if ((localXZWKDeviceProfile.getInstanceNum() >= 0) && (localXZWKDeviceProfile.getInstanceNum() < DeviceService_F.CLASSES.length))
            {
                Intent localIntent = new Intent(this, DeviceService_F.CLASSES[localXZWKDeviceProfile.getInstanceNum()]);
                connectErockDevice(localXZWKDeviceProfile, 500, paramString, paramBluetoothDevice.getAddress(), localIntent, localServiceConnection);
            }
        }
    }

    public void onDialogCanceled()
    {
    }

    public final void onDisconnectedWhenDeviceStill()
    {
    }

    public final void onError(String paramString, int paramInt)
    {
        LOG.i("BPSRNewActivity", "onError " + paramString + " (" + paramInt + ")");
        if (!this.mPROFILE_DEVICE_POOL.isEmpty())
            connectToGymDevice(((XZWKDeviceProfile)this.mPROFILE_DEVICE_POOL.get(0)).getDeviceName(), ((XZWKDeviceProfile)this.mPROFILE_DEVICE_POOL.get(0)).getDeviceAddress(), 500);
    }

    public final void onHeartBeating(boolean paramBoolean)
    {
        LOG.i(CLASS_NAME, "Heart is beating: " + paramBoolean);
    }

    protected void onInitialize(Bundle paramBundle)
    {
    }

    public void onLinklossOccur()
    {
        finishThisActivity(-1);
    }

    protected boolean onOptionsItemSelected(int paramInt)
    {
        return false;
    }

    public boolean onOptionsItemSelected(MenuItem paramMenuItem)
    {
        return true;
    }

    protected void onPause()
    {
        super.onPause();
        this.mInsNums = 0;
        this.mWristBandNums = 0;
    }

    public void onProcessedDataReceived(double[] paramArrayOfDouble)
    {
    }

    public final void onProcessingTestFileFinish()
    {
        showToastShort("Processing Test File Finishes!");
    }

    protected void onRestoreInstanceState(@NonNull Bundle paramBundle)
    {
        super.onRestoreInstanceState(paramBundle);
    }

    protected void onResume()
    {
        super.onResume();
        NativeSupport.set_REALTIME_SERVICE_CALLBACK(this);
        updateConnectionIcons();
    }

    protected void onSaveInstanceState(Bundle paramBundle)
    {
        super.onSaveInstanceState(paramBundle);
    }

    public void onSensorChanged(SensorEvent paramSensorEvent)
    {
        if (paramSensorEvent.sensor.getType() == 1)
        {
            NativeSupport.PHONE_ACC_X += paramSensorEvent.values[0];
            NativeSupport.PHONE_ACC_Y += paramSensorEvent.values[1];
            NativeSupport.PHONE_ACC_Z += paramSensorEvent.values[2];
            NativeSupport.PHONE_ACC_CNT = 1 + NativeSupport.PHONE_ACC_CNT;
        }
        if (paramSensorEvent.sensor.getType() == 4)
        {
            NativeSupport.PHONE_REV_X += paramSensorEvent.values[0];
            NativeSupport.PHONE_REV_Y += paramSensorEvent.values[1];
            NativeSupport.PHONE_REV_Z += paramSensorEvent.values[2];
            NativeSupport.PHONE_REV_CNT = 1 + NativeSupport.PHONE_REV_CNT;
        }
    }

    protected abstract void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder);

    protected abstract void onServiceUnbinded();

    public abstract void onServicesDiscovered(boolean paramBoolean);

    protected void onStart()
    {
        super.onStart();
        this.mIsStopped = false;
        if (this.mAutoBind)
            new Thread(new Runnable()
            {
                public void run()
                {
                    boolean bool1 = false;
                    try
                    {
                        Iterator localIterator = BleProfileBaseActivity.this.mPROFILE_DEVICE_POOL.iterator();
                        while (localIterator.hasNext())
                        {
                            XZWKDeviceProfile localXZWKDeviceProfile = (XZWKDeviceProfile)localIterator.next();
                            if (localXZWKDeviceProfile.isConnected())
                                bool1 = true;
                            BleProfileBaseActivity.this.autoBind(localXZWKDeviceProfile.isConnected(), "UNINITIALIZED", new Intent(BleProfileBaseActivity.this.getApplicationContext(), DeviceService_F.CLASSES[localXZWKDeviceProfile.getInstanceNum()]), BleProfileBaseActivity.this.mDeviceBLEServiceConnection);
                            Thread.sleep(200L);
                        }
                    }
                    catch (Exception localException)
                    {
                        localException.getMessage();
                        final boolean bool2 = bool1;
                        BleProfileBaseActivity.this.mHandler.postDelayed(new Runnable()
                                                                         {
                                                                             public void run()
                                                                             {
                                                                                 if (BleProfileBaseActivity.this.isBLEEnabled())
                                                                                 {
                                                                                     if ((!bool2) && (!BleProfileBaseActivity.this.mIsStopped) && (BleProfileBaseActivity.this.mAutoScan))
                                                                                         BleProfileBaseActivity.this.showDeviceScanningDialog(BaseManager.XZWK_MTN_DEVICE_SERVICE_UUID, null, 10000);
                                                                                     return;
                                                                                 }
                                                                                 BleProfileBaseActivity.this.showBLEDialog();
                                                                             }
                                                                         }
                                , 2000L);
                    }
                }
            }).start();
        updateConnectionIcons();
    }

    protected void onStop()
    {
        super.onStop();
        this.mIsStopped = true;
        try
        {
            if (isFinishing())
            {
                stopLoggingRawData();
                this.mSensorManager.unregisterListener(this);
                if (this.isMainActivity)
                {
                    NativeSupport.cancelPhoneTimer();
                    SoundPool localSoundPool = SOUND_POOl;
                    if (localSoundPool == null);
                }
            }
            try
            {
                LOG.i("XZWK", "SOUND_POOl.release()");
                SOUND_POOl.release();
                Iterator localIterator = this.mPROFILE_DEVICE_POOL.iterator();
                while (localIterator.hasNext())
                    unbindDeviceProfile((XZWKDeviceProfile)localIterator.next(), this.mDeviceBLEServiceConnection);
            }
            catch (Exception localException)
            {
                while (true)
                    LOG.i(getClass().getSimpleName(), localException.getMessage());
                if (isFinishing())
                    this.mPROFILE_DEVICE_POOL.removeAllElements();
                LOG.i("BPSRNewActivity", "mPROFILE_DEVICE_POOL.size():" + this.mPROFILE_DEVICE_POOL.size());
                onServiceUnbinded();
                return;
            }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
        }
    }

    protected void onViewCreated(Bundle paramBundle)
    {
        if (this.isMainActivity)
        {
            this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
            this.mSensorManager.registerListener(this, this.mGyroscope, 1);
            NativeSupport.startPhoneTimer();
        }
        this.mRightConnectIcon = ((TextView)findViewById(2131558657));
        if (this.mRightConnectIcon == null);
        do
        {
            return;
            this.mRightConnectIcon.setVisibility(4);
            Iterator localIterator = this.mPROFILE_DEVICE_POOL.iterator();
            while (localIterator.hasNext())
                if (((XZWKDeviceProfile)localIterator.next()).isConnected())
                    this.mRightConnectIcon.setBackgroundResource(2130903241);
            this.mRightConnectIcon.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    BleProfileBaseActivity.this.showDeviceScanningDialog(null, "YAXL", 20001);
                }
            });
            this.mTvLeft2ConnectIcon = ((TextView)findViewById(2131558658));
        }
        while (this.mTvLeft2ConnectIcon == null);
        this.mTvLeft2ConnectIcon.setVisibility(4);
        this.mTvLeft2ConnectIcon.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                BleProfileBaseActivity.this.showPauseDialog();
            }
        });
        this.mTvWristBandCount = ((TextView)findViewById(2131558654));
        this.mTvBasketballCount = ((TextView)findViewById(2131558656));
    }

    protected void playBuzzer()
    {
        SOUND_POOl.play(SOURCE_BUZZER, 1.0F, 1.0F, 0, 0, 1.0F);
    }

    protected void playWhistle()
    {
        SOUND_POOl.play(SOURCE_WHISTLE, 1.0F, 1.0F, 0, 0, 1.0F);
    }

    protected abstract void setDefaultUI();

    public void setDeviceBLEService(BleProfileService.LocalBinder paramLocalBinder, int paramInt)
    {
        if ((paramInt >= 0) && (paramInt < this.mDeviceBLEServicePool.length))
            this.mDeviceBLEServicePool[paramInt] = ((DeviceService.GymBinder)paramLocalBinder);
    }

    protected final void setUpView()
    {
    }

    protected final void showBLEDialog()
    {
        startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 2);
    }

    public final void showDeviceDisconnectedToast(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        if (paramXZWKDeviceProfile.isConnected())
        {
            showToastShort("健身智能设备已断开！");
            paramXZWKDeviceProfile.setConnected(false);
        }
    }

    public final void showDeviceDisconnectingToast(XZWKDeviceProfile paramXZWKDeviceProfile)
    {
        if (isFinishing())
            showDeviceDisconnectedToast(paramXZWKDeviceProfile);
        while (!paramXZWKDeviceProfile.isConnected())
            return;
        showToastShort("正在断开健身智能设备！");
    }

    protected final void showDeviceScanningDialog(UUID paramUUID, String paramString, int paramInt)
    {
        String str;
        if ((!this.DEVICE_SCAN_DIALOG.isVisible()) && (!this.DEVICE_SCAN_DIALOG.isAdded()))
        {
            if (!this.mPROFILE_DEVICE_POOL.isEmpty())
            {
                XZWKDeviceProfile localXZWKDeviceProfile = (XZWKDeviceProfile)this.mPROFILE_DEVICE_POOL.elementAt(-1 + this.mPROFILE_DEVICE_POOL.size());
                if (!localXZWKDeviceProfile.isConnected())
                    break label221;
                if ((localXZWKDeviceProfile.getDeviceName() != null) && (!localXZWKDeviceProfile.getDeviceName().equals("")))
                    this.DEVICE_SCAN_DIALOG.setConnectedDeviceName(localXZWKDeviceProfile.getDeviceName());
                if (localXZWKDeviceProfile.getBatteryValue() >= 0)
                    this.DEVICE_SCAN_DIALOG.setDeviceBatteryV(localXZWKDeviceProfile.getBatteryValue() + "％");
            }
            switch (paramInt)
            {
                default:
                    str = getResources().getString(2131165240);
                case 10000:
                case 30000:
                case 40000:
            }
        }
        while (true)
        {
            this.DEVICE_SCAN_DIALOG.setFilter(paramUUID);
            this.DEVICE_SCAN_DIALOG.setNameFilter(paramString);
            this.DEVICE_SCAN_DIALOG.setScanDeviceType(str, paramInt);
            this.DEVICE_SCAN_DIALOG.show(getSupportFragmentManager(), "scan_fragment");
            return;
            label221: this.DEVICE_SCAN_DIALOG.setDeviceDisconnected();
            break;
            str = getResources().getString(2131165240);
            continue;
            str = getResources().getString(2131165239);
            continue;
            str = getResources().getString(2131165238);
        }
    }

    protected void showPauseDialog()
    {
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                if ((!BleProfileBaseActivity.this.PAUSE_DIALOG.isVisible()) && (!BleProfileBaseActivity.this.PAUSE_DIALOG.isAdded()))
                    BleProfileBaseActivity.this.PAUSE_DIALOG.show(BleProfileBaseActivity.this.getSupportFragmentManager(), "pause_dialog");
            }
        });
    }

    protected final void showToast(final int paramInt)
    {
        runOnUiThread(new Runnable()
        {
            public void run()
            {
                Toast.makeText(BleProfileBaseActivity.this, paramInt, 0).show();
            }
        });
    }

    public final void showToastLong(final String paramString)
    {
        if (!this.mShowToast)
            return;
        runOnUiThread(new Runnable()
        {
            public void run()
            {
                Toast.makeText(BleProfileBaseActivity.this, paramString, 1).show();
            }
        });
    }

    public final void showToastShort(final String paramString)
    {
        if (!this.mShowToast)
            return;
        runOnUiThread(new Runnable()
        {
            public void run()
            {
                Toast.makeText(BleProfileBaseActivity.this, paramString, 0).show();
            }
        });
    }

    protected void unbindConnectedDeviceManually()
    {
        Iterator localIterator = this.mPROFILE_DEVICE_POOL.iterator();
        while (true)
            if (localIterator.hasNext())
            {
                XZWKDeviceProfile localXZWKDeviceProfile = (XZWKDeviceProfile)localIterator.next();
                ServiceConnection localServiceConnection = this.mDeviceBLEServiceConnection;
                BleProfileService.LocalBinder localLocalBinder = localXZWKDeviceProfile.getBLEService(this);
                LOG.i("BPSRNewActivity", "1. unbindConnectedDeviceManually  " + localXZWKDeviceProfile.getDeviceName() + " isConnected-" + localXZWKDeviceProfile.isConnected());
                if (localLocalBinder != null)
                {
                    localLocalBinder.setActivityIsFinishing(true);
                    if (localLocalBinder.isConnected())
                    {
                        LOG.i("BPSRNewActivity", "4. unbindConnectedDeviceManually  " + isFinishing());
                        localXZWKDeviceProfile.setBatteryToastShowed(false);
                        localXZWKDeviceProfile.setBatteryValue(-1);
                        localXZWKDeviceProfile.setBatteryVolUpdateCount(0);
                        localLocalBinder.disconnect();
                        localXZWKDeviceProfile.setDeviceName(null);
                        localXZWKDeviceProfile.setDeviceAddress(null);
                        localXZWKDeviceProfile.setConnected(false);
                        localXZWKDeviceProfile.releaseServiceInstance();
                        LOG.i("BPSRNewActivity", "5. unbindConnectedDeviceManually  mPROFILE_DEVICE_POOL size " + this.mPROFILE_DEVICE_POOL.size());
                    }
                }
                try
                {
                    unbindService(localServiceConnection);
                    localXZWKDeviceProfile.setBLEService(this, null);
                }
                catch (Exception localException)
                {
                    while (true)
                        LOG.i("BPSRNewActivity", localException.getMessage());
                }
            }
        this.mPROFILE_DEVICE_POOL.removeAllElements();
        LOG.i("BPSRNewActivity", "~mPROFILE_DEVICE_POOL.size():" + this.mPROFILE_DEVICE_POOL.size());
        onServiceUnbinded();
    }

    public final void updateRunConnectIcon()
    {
        if (this.mRightConnectIcon == null)
            return;
        LOG.i("BPSRNewActivity", "5.1 updateRunConnectIcon() mPROFILE_DEVICE_POOL size: " + this.mPROFILE_DEVICE_POOL.size());
        this.mHandler.post(new Runnable()
        {
            public void run()
            {
                int i = 0;
                Iterator localIterator = BleProfileBaseActivity.this.mPROFILE_DEVICE_POOL.iterator();
                while (localIterator.hasNext())
                {
                    XZWKDeviceProfile localXZWKDeviceProfile = (XZWKDeviceProfile)localIterator.next();
                    if (localXZWKDeviceProfile.isConnected())
                    {
                        i = 1;
                        LOG.i("BPSRNewActivity", "5.2 updateRunConnectIcon() ,getBatteryValue: " + localXZWKDeviceProfile.getBatteryValue());
                        if (!localXZWKDeviceProfile.isBatteryToastShowed())
                        {
                            if ((localXZWKDeviceProfile.getBatteryValue() >= 0) && (localXZWKDeviceProfile.getBatteryValue() <= 100))
                            {
                                localXZWKDeviceProfile.setBatteryToastShowed(true);
                                LOG.i("BPSRNewActivity", "5.3 updateRunConnectIcon()");
                                BleProfileBaseActivity.this.showToastLong("智能设备电量：" + localXZWKDeviceProfile.getBatteryValue() + "%");
                            }
                            if (localXZWKDeviceProfile.getBatteryValue() >= 15);
                        }
                        if ((localXZWKDeviceProfile.getBatteryValue() >= 90) && (localXZWKDeviceProfile.getBatteryValue() <= 100))
                            BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903241);
                        while (true)
                        {
                            BleProfileBaseActivity.this.updateDeviceCount();
                            break;
                            if ((localXZWKDeviceProfile.getBatteryValue() < 90) && (localXZWKDeviceProfile.getBatteryValue() >= 60))
                                BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903241);
                            else if ((localXZWKDeviceProfile.getBatteryValue() < 60) && (localXZWKDeviceProfile.getBatteryValue() >= 30))
                                BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903241);
                            else if ((localXZWKDeviceProfile.getBatteryValue() < 30) && (localXZWKDeviceProfile.getBatteryValue() >= 15))
                                BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903241);
                            else if ((localXZWKDeviceProfile.getBatteryValue() < 15) && (localXZWKDeviceProfile.getBatteryValue() >= 0))
                                BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903241);
                            else if (localXZWKDeviceProfile.getBatteryValue() < 0)
                                BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903242);
                        }
                    }
                }
                if (i == 0)
                    BleProfileBaseActivity.this.mRightConnectIcon.setBackgroundResource(2130903242);
            }
        });
    }
}