package com.wukong.services.gym;

import android.bluetooth.BluetoothGattCharacteristic;
import android.util.Log;
import com.wukong.services.gym.gymevent.GymFRotationEvent;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import com.wukong.services.gym.gymevent.GymRotationEvent;
import com.wukong.services.gym.gymevent.GymSwayBiEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import com.wukong.services.gym.gymevent.StretchEvent;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ArrayBlockingQueue;

public class NativeSupport
{
    public static boolean ALWAYS_ALLOW_PHONE_TIMER = false;
    private static BaseServiceCallbacks BASKET_NET_SERVICE_CALLBACK;
    protected static final int DATA_CACHE_QUEUE_SIZE = 600;
    private static BaseServiceCallbacks GYM_SERVICE_CALLBACK;
    public static int LAST_PHONE_ACC_X;
    public static int LAST_PHONE_ACC_Y;
    public static int LAST_PHONE_ACC_Z;
    public static int LAST_PHONE_REV_X;
    public static int LAST_PHONE_REV_Y;
    public static int LAST_PHONE_REV_Z;
    public static int OLD_SENSOR_TYPE;
    public static int PHONE_ACC_CNT;
    public static double PHONE_ACC_X = 0.0D;
    public static double PHONE_ACC_Y = 0.0D;
    public static double PHONE_ACC_Z = 0.0D;
    public static int PHONE_REV_CNT;
    public static double PHONE_REV_X;
    public static double PHONE_REV_Y;
    public static double PHONE_REV_Z;
    private static Timer PHONE_TIMER;
    private static RealTimeServiceCallbacks REALTIME_Service_Callbacks;
    private static DeviceService.GymBinder RUN_BINDER;
    protected static ArrayBlockingQueue<DeviceBLEGattCharacteristic> mDataCacheQueue = new ArrayBlockingQueue(600);
    protected static Thread mDataParseThread;
    protected static boolean mSendingData;

    static
    {
        PHONE_ACC_CNT = 0;
        LAST_PHONE_ACC_X = 0;
        LAST_PHONE_ACC_Y = 0;
        LAST_PHONE_ACC_Z = 0;
        PHONE_REV_X = 0.0D;
        PHONE_REV_Y = 0.0D;
        PHONE_REV_Z = 0.0D;
        PHONE_REV_CNT = 0;
        LAST_PHONE_REV_X = 0;
        LAST_PHONE_REV_Y = 0;
        LAST_PHONE_REV_Z = 0;
        OLD_SENSOR_TYPE = 0;
        ALWAYS_ALLOW_PHONE_TIMER = false;
        Log.i("NativeSupport", "before load library");
        System.loadLibrary("wukong");
        Log.i("NativeSupport", "after load library");
        mSendingData = false;
    }

    public static native double calLP(double paramDouble1, double paramDouble2, int paramInt);

    public static void calPhoneSensorData()
    {
        if (PHONE_ACC_CNT != 0)
        {
            LAST_PHONE_ACC_X = (int)(205.0D * (PHONE_ACC_X / PHONE_ACC_CNT));
            LAST_PHONE_ACC_Y = (int)(205.0D * (PHONE_ACC_Y / PHONE_ACC_CNT));
            LAST_PHONE_ACC_Z = (int)(205.0D * (PHONE_ACC_Z / PHONE_ACC_CNT));
            PHONE_ACC_X = 0.0D;
            PHONE_ACC_Y = 0.0D;
            PHONE_ACC_Z = 0.0D;
            PHONE_ACC_CNT = 0;
        }
        if (PHONE_REV_CNT != 0)
        {
            LAST_PHONE_REV_X = (int)(939.65099999999995D * (PHONE_REV_X / PHONE_REV_CNT));
            LAST_PHONE_REV_Y = (int)(939.65099999999995D * (PHONE_REV_Y / PHONE_REV_CNT));
            LAST_PHONE_REV_Z = (int)(939.65099999999995D * (PHONE_REV_Z / PHONE_REV_CNT));
            PHONE_REV_X = 0.0D;
            PHONE_REV_Y = 0.0D;
            PHONE_REV_Z = 0.0D;
            PHONE_REV_CNT = 0;
        }
    }

    public static void cancelPhoneTimer()
    {
        if (PHONE_TIMER == null)
            return;
        PHONE_TIMER.cancel();
        PHONE_TIMER = null;
    }

    public static void disconnectBasketball()
    {
        if (RUN_BINDER != null)
            RUN_BINDER.disconnect();
    }

    public static void dispatchHeartRate(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        if (GYM_SERVICE_CALLBACK != null)
            ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onHeartRate(getHeartRateData8(paramBluetoothGattCharacteristic));
    }

    public static native boolean engageMotionServiceInstanceInstanceAt(int paramInt);

    public static native int getAvailableMotionServiceInstanceNum();

    private static int[] getFRUData(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        int[] arrayOfInt = new int[10];
        arrayOfInt[0] = paramBluetoothGattCharacteristic.getIntValue(18, 0).intValue();
        arrayOfInt[1] = paramBluetoothGattCharacteristic.getIntValue(18, 2).intValue();
        arrayOfInt[2] = paramBluetoothGattCharacteristic.getIntValue(18, 4).intValue();
        arrayOfInt[3] = paramBluetoothGattCharacteristic.getIntValue(18, 6).intValue();
        arrayOfInt[4] = paramBluetoothGattCharacteristic.getIntValue(18, 8).intValue();
        arrayOfInt[5] = paramBluetoothGattCharacteristic.getIntValue(18, 10).intValue();
        arrayOfInt[6] = paramBluetoothGattCharacteristic.getIntValue(18, 12).intValue();
        arrayOfInt[7] = paramBluetoothGattCharacteristic.getIntValue(18, 14).intValue();
        arrayOfInt[8] = paramBluetoothGattCharacteristic.getIntValue(18, 16).intValue();
        arrayOfInt[9] = paramBluetoothGattCharacteristic.getIntValue(18, 18).intValue();
        return arrayOfInt;
    }

    private static int[] getFRUData8(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        int[] arrayOfInt = new int[20];
        arrayOfInt[0] = paramBluetoothGattCharacteristic.getIntValue(17, 0).intValue();
        arrayOfInt[1] = paramBluetoothGattCharacteristic.getIntValue(17, 1).intValue();
        arrayOfInt[2] = paramBluetoothGattCharacteristic.getIntValue(17, 2).intValue();
        arrayOfInt[3] = paramBluetoothGattCharacteristic.getIntValue(17, 3).intValue();
        arrayOfInt[4] = paramBluetoothGattCharacteristic.getIntValue(17, 4).intValue();
        arrayOfInt[5] = paramBluetoothGattCharacteristic.getIntValue(17, 5).intValue();
        arrayOfInt[6] = paramBluetoothGattCharacteristic.getIntValue(17, 6).intValue();
        arrayOfInt[7] = paramBluetoothGattCharacteristic.getIntValue(17, 7).intValue();
        arrayOfInt[8] = paramBluetoothGattCharacteristic.getIntValue(17, 8).intValue();
        arrayOfInt[9] = paramBluetoothGattCharacteristic.getIntValue(17, 9).intValue();
        arrayOfInt[10] = paramBluetoothGattCharacteristic.getIntValue(17, 10).intValue();
        arrayOfInt[11] = paramBluetoothGattCharacteristic.getIntValue(17, 11).intValue();
        arrayOfInt[12] = paramBluetoothGattCharacteristic.getIntValue(17, 12).intValue();
        arrayOfInt[13] = paramBluetoothGattCharacteristic.getIntValue(17, 13).intValue();
        arrayOfInt[14] = paramBluetoothGattCharacteristic.getIntValue(17, 14).intValue();
        arrayOfInt[15] = paramBluetoothGattCharacteristic.getIntValue(17, 15).intValue();
        arrayOfInt[16] = paramBluetoothGattCharacteristic.getIntValue(17, 16).intValue();
        arrayOfInt[17] = paramBluetoothGattCharacteristic.getIntValue(17, 17).intValue();
        arrayOfInt[18] = paramBluetoothGattCharacteristic.getIntValue(17, 18).intValue();
        arrayOfInt[19] = paramBluetoothGattCharacteristic.getIntValue(17, 19).intValue();
        return arrayOfInt;
    }

    private static int[] getHeartRateData8(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        int[] arrayOfInt = new int[2];
        arrayOfInt[0] = (256 * paramBluetoothGattCharacteristic.getIntValue(17, 0).intValue() + paramBluetoothGattCharacteristic.getIntValue(17, 1).intValue());
        arrayOfInt[1] = (256 * paramBluetoothGattCharacteristic.getIntValue(17, 2).intValue() + paramBluetoothGattCharacteristic.getIntValue(17, 3).intValue());
        return arrayOfInt;
    }

    private static int[] getReedData8(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        int[] arrayOfInt = new int[1];
        arrayOfInt[0] = paramBluetoothGattCharacteristic.getIntValue(17, 0).intValue();
        return arrayOfInt;
    }

    public static BaseServiceCallbacks get_BASKETBALL_SERVICE_CALLBACK_()
    {
        return GYM_SERVICE_CALLBACK;
    }

    public static boolean invokeServiceCallbacks(int paramInt, double[] paramArrayOfDouble)
    {
        if (LogService.isProcessingTestData());
        boolean bool1;
        switch (paramInt)
        {
            default:
                if ((paramInt == 651) && (REALTIME_Service_Callbacks != null))
                {
                    REALTIME_Service_Callbacks.onGymRealTimeEvent(new GymRealTimeEvent(paramArrayOfDouble));
                    bool1 = true;
                }
                break;
            case 14:
            case 21:
            case 32:
        }
        BaseServiceCallbacks localBaseServiceCallbacks1;
        do
        {
            return bool1;
            Log.i("NativeSupport", "EventType: ProcessingTestFileFinish");
            LogService.saveLogProccessedDataToDisk();
            if (GYM_SERVICE_CALLBACK != null)
                GYM_SERVICE_CALLBACK.onProcessingTestFileFinish();
            return true;
            LogService.saveLogProccessedDataToArray(paramArrayOfDouble);
            if (GYM_SERVICE_CALLBACK != null)
                GYM_SERVICE_CALLBACK.onProcessedDataReceived(paramArrayOfDouble);
            return true;
            Log.i("NativeSupport", "EventType: TestData_FFTimabs");
            LogService.saveFFTimabsToArray(paramArrayOfDouble);
            break;
            localBaseServiceCallbacks1 = GYM_SERVICE_CALLBACK;
            bool1 = false;
        }
        while (localBaseServiceCallbacks1 == null);
        switch (paramInt)
        {
            default:
            case 11:
                try
                {
                    Log.i("NativeSupport", "EventType: None-" + paramInt);
                    break;
                    Log.i("NativeSupport", "EventType: HeartBeating");
                    BaseServiceCallbacks localBaseServiceCallbacks2 = GYM_SERVICE_CALLBACK;
                    boolean bool2 = paramArrayOfDouble[0] < 0.0D;
                    boolean bool3 = false;
                    if (bool2)
                        bool3 = true;
                    localBaseServiceCallbacks2.onHeartBeating(bool3);
                }
                catch (Exception localException)
                {
                    Log.i("NativeSupportJ", localException.getMessage());
                }
            case 7:
                Log.i("NativeSupport", "EventType: LogEvent");
                break;
            case 13:
                Log.i("NativeSupport", "EventType: DeviceDisconnectedMistakenly");
                GYM_SERVICE_CALLBACK.onDeviceDisconnectedMistakenly((int)paramArrayOfDouble[0]);
                break;
            case 12:
                Log.i("NativeSupport", "EventType: DisconnectedWhenDeviceStill");
                GYM_SERVICE_CALLBACK.onDisconnectedWhenDeviceStill();
                break;
            case 101:
                Log.i("NativeSupport", "EventType: StretchEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onStretching(new StretchEvent(paramArrayOfDouble));
                break;
            case 601:
                Log.i("NativeSupport", "EventType: GymSwaySingleEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymSwaySingleEvent(new GymSwaySingleEvent(paramArrayOfDouble));
                break;
            case 611:
                Log.i("NativeSupport", "EventType: onGymSwaySingleRealEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymSwaySingleRealEvent(new GymSwaySingleEvent(paramArrayOfDouble));
                break;
            case 606:
                Log.i("NativeSupport", "EventType: PopGymEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymSwayBiEvent(new GymSwayBiEvent(paramArrayOfDouble));
                break;
            case 616:
                Log.i("NativeSupport", "EventType: onGymSwayBiRealEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymSwayBiRealEvent(new GymSwayBiEvent(paramArrayOfDouble));
                break;
            case 607:
                Log.i("NativeSupport", "EventType: PopGymFRotationEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymFRotationEvent(new GymFRotationEvent(paramArrayOfDouble));
                break;
            case 608:
                Log.i("NativeSupport", "EventType: onGymWaistEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymWaistEvent(paramArrayOfDouble);
                break;
            case 605:
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymRotationEvent(new GymRotationEvent(paramArrayOfDouble));
                break;
            case 621:
                Log.i("NativeSupport", "EventType: GymWeightEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onWeightEvent(paramArrayOfDouble);
                break;
            case 631:
                Log.i("NativeSupport", "EventType: GymMegEvent");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onMegEvent(paramArrayOfDouble);
                break;
            case 699:
                Log.i("NativeSupport", "EventType: PopGymDeviceParams");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymDeviceParams(paramArrayOfDouble);
                break;
            case 671:
                Log.i("NativeSupport", "EventType: PopGymReedEventReal");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onGymReedRealEvent(paramArrayOfDouble);
                break;
            case 8:
                Log.i("NativeSupport", "EventType: StatisticData");
                ((GymServiceCallbacks)GYM_SERVICE_CALLBACK).onStatisticData(paramArrayOfDouble);
        }
        return true;
    }

    public static native boolean isProcessingMotionData();

    public static boolean isRunSensorConnected()
    {
        if (RUN_BINDER != null)
            return RUN_BINDER.isConnected();
        return false;
    }

    public static boolean isSendingData()
    {
        return mSendingData;
    }

    public static native void onDefaultMotionDataReceived(int[] paramArrayOfInt);

    public static native void onMegDataReceived(int[] paramArrayOfInt);

    public static native void onMotionDataReceived_Multi(int[] paramArrayOfInt, int paramInt);

    public static native void onMotionDataReceived_Multi_Type(int[] paramArrayOfInt, int paramInt1, int paramInt2);

    public static native void onMotionTestDataReceived(int[] paramArrayOfInt);

    public static native void onReedDataReceived(int[] paramArrayOfInt);

    public static native void onWeightDataReceived(int[] paramArrayOfInt);

    public static void putDataIntoQueque(DeviceBLEGattCharacteristic paramDeviceBLEGattCharacteristic)
    {
        try
        {
            mDataCacheQueue.put(paramDeviceBLEGattCharacteristic);
            if (mDataCacheQueue.size() > 300)
                mDataCacheQueue.poll();
            return;
        }
        catch (InterruptedException localInterruptedException)
        {
            while (mDataCacheQueue.size() <= 600);
            mDataCacheQueue.clear();
        }
    }

    public static native boolean releaseAllMotionServiceInstances();

    public static native boolean releaseMotionServiceInstanceAt(int paramInt);

    public static native void resetDefaultMotionService();

    public static native void resetGym();

    protected static void sendData()
    {
        if (mSendingData);
        label712:
        while (true)
        {
            BluetoothGattCharacteristic localBluetoothGattCharacteristic;
            int i;
            int j;
            int[] arrayOfInt2;
            try
            {
                DeviceBLEGattCharacteristic localDeviceBLEGattCharacteristic = (DeviceBLEGattCharacteristic)mDataCacheQueue.take();
                localBluetoothGattCharacteristic = localDeviceBLEGattCharacteristic.getBluetoothGattCharacteristic();
                i = localDeviceBLEGattCharacteristic.getInstanceNum();
                j = localDeviceBLEGattCharacteristic.getType();
                calPhoneSensorData();
                if (OLD_SENSOR_TYPE != 1)
                    break label244;
                int[] arrayOfInt3 = getFRUData(localBluetoothGattCharacteristic);
                arrayOfInt2 = new int[16];
                arrayOfInt2[0] = arrayOfInt3[0];
                arrayOfInt2[1] = arrayOfInt3[1];
                arrayOfInt2[2] = arrayOfInt3[2];
                arrayOfInt2[3] = arrayOfInt3[0];
                arrayOfInt2[4] = arrayOfInt3[1];
                arrayOfInt2[5] = arrayOfInt3[2];
                arrayOfInt2[6] = arrayOfInt3[0];
                arrayOfInt2[7] = arrayOfInt3[1];
                arrayOfInt2[8] = arrayOfInt3[2];
                arrayOfInt2[9] = arrayOfInt3[9];
                arrayOfInt2[10] = LAST_PHONE_ACC_X;
                arrayOfInt2[11] = LAST_PHONE_ACC_Y;
                arrayOfInt2[12] = LAST_PHONE_ACC_Z;
                arrayOfInt2[13] = LAST_PHONE_REV_X;
                arrayOfInt2[14] = LAST_PHONE_REV_Y;
                arrayOfInt2[15] = LAST_PHONE_REV_Z;
                if (i >= 0)
                    break label712;
                onDefaultMotionDataReceived(arrayOfInt2);
                if (!LogService.isLogOn())
                    break;
                LogService.addToRawLogStr(arrayOfInt2);
            }
            catch (Exception localException)
            {
                localException.printStackTrace();
                if (isRunSensorConnected())
                    disconnectBasketball();
                invokeServiceCallbacks(13, new double[] { 2.0D });
            }
            break;
            label244: if (j == 10100)
            {
                arrayOfInt2 = getReedData8(localBluetoothGattCharacteristic);
            }
            else
            {
                int[] arrayOfInt1 = getFRUData8(localBluetoothGattCharacteristic);
                arrayOfInt2 = new int[16];
                int k = 0 + 1;
                int m = 256 * arrayOfInt1[0];
                int n = k + 1;
                arrayOfInt2[0] = (m + arrayOfInt1[k]);
                int i1 = n + 1;
                int i2 = 256 * arrayOfInt1[n];
                int i3 = i1 + 1;
                arrayOfInt2[1] = (i2 + arrayOfInt1[i1]);
                int i4 = i3 + 1;
                int i5 = 256 * arrayOfInt1[i3];
                int i6 = i4 + 1;
                arrayOfInt2[2] = (i5 + arrayOfInt1[i4]);
                int i7 = i6 + 1;
                int i8 = 256 * arrayOfInt1[i6];
                int i9 = i7 + 1;
                arrayOfInt2[3] = (i8 + arrayOfInt1[i7]);
                int i10 = i9 + 1;
                int i11 = 256 * arrayOfInt1[i9];
                int i12 = i10 + 1;
                arrayOfInt2[4] = (i11 + arrayOfInt1[i10]);
                int i13 = i12 + 1;
                int i14 = 256 * arrayOfInt1[i12];
                int i15 = i13 + 1;
                arrayOfInt2[5] = (i14 + arrayOfInt1[i13]);
                int i16 = i15 + 1;
                int i17 = 256 * arrayOfInt1[i15];
                int i18 = i16 + 1;
                arrayOfInt2[6] = (i17 + arrayOfInt1[i16]);
                int i19 = i18 + 1;
                int i20 = 256 * arrayOfInt1[i18];
                int i21 = i19 + 1;
                arrayOfInt2[7] = (i20 + arrayOfInt1[i19]);
                int i22 = i21 + 1;
                int i23 = 256 * arrayOfInt1[i21];
                int i24 = i22 + 1;
                arrayOfInt2[8] = (i23 + arrayOfInt1[i22]);
                int i25 = i24 + 1;
                int i26 = 256 * arrayOfInt1[i24];
                (i25 + 1);
                arrayOfInt2[9] = (i26 + arrayOfInt1[i25]);
                arrayOfInt2[10] = LAST_PHONE_ACC_X;
                arrayOfInt2[11] = LAST_PHONE_ACC_Y;
                arrayOfInt2[12] = LAST_PHONE_ACC_Z;
                arrayOfInt2[13] = LAST_PHONE_REV_X;
                arrayOfInt2[14] = LAST_PHONE_REV_Y;
                arrayOfInt2[15] = LAST_PHONE_REV_Z;
                continue;
                onMotionDataReceived_Multi_Type(arrayOfInt2, i, j);
                continue;
                onReedDataReceived(arrayOfInt2);
                continue;
                onMegDataReceived(arrayOfInt2);
                continue;
                onWeightDataReceived(arrayOfInt2);
                continue;
                return;
                switch (j)
                {
                    case 10000:
                    case 10100:
                    case 40000:
                    case 30000:
                }
            }
        }
    }

    public static void sendPhoneData()
    {
        calPhoneSensorData();
        int[] arrayOfInt = new int[16];
        arrayOfInt[0] = 32000;
        arrayOfInt[1] = 32000;
        arrayOfInt[2] = 32000;
        arrayOfInt[3] = 32000;
        arrayOfInt[4] = 32000;
        arrayOfInt[5] = 32000;
        arrayOfInt[6] = 32000;
        arrayOfInt[7] = 32000;
        arrayOfInt[8] = 32000;
        arrayOfInt[9] = -101;
        arrayOfInt[10] = LAST_PHONE_ACC_X;
        arrayOfInt[11] = LAST_PHONE_ACC_Y;
        arrayOfInt[12] = LAST_PHONE_ACC_Z;
        arrayOfInt[13] = LAST_PHONE_REV_X;
        arrayOfInt[14] = LAST_PHONE_REV_Y;
        arrayOfInt[15] = LAST_PHONE_REV_Z;
        onDefaultMotionDataReceived(arrayOfInt);
        if (LogService.isLogOn())
            LogService.addToRawLogStr(arrayOfInt);
    }

    public static native void setMotionServiceParameters(float[] paramArrayOfFloat, int paramInt);

    public static native void setMotionUParams(double[] paramArrayOfDouble);

    public static void setRunBinder(DeviceService.GymBinder paramGymBinder)
    {
        RUN_BINDER = paramGymBinder;
    }

    public static void set_GYM_SERVICE_CALLBACK(BaseServiceCallbacks paramBaseServiceCallbacks)
    {
        if ((paramBaseServiceCallbacks instanceof GymServiceCallbacks))
            GYM_SERVICE_CALLBACK = paramBaseServiceCallbacks;
        if (paramBaseServiceCallbacks == null)
            GYM_SERVICE_CALLBACK = null;
    }

    public static void set_REALTIME_SERVICE_CALLBACK(RealTimeServiceCallbacks paramRealTimeServiceCallbacks)
    {
        REALTIME_Service_Callbacks = paramRealTimeServiceCallbacks;
    }

    public static void startPhoneTimer()
    {
        if (PHONE_TIMER != null)
            return;
        PHONE_TIMER = new Timer();
        PHONE_TIMER.scheduleAtFixedRate(new TimerTask()
                                        {
                                            public void run()
                                            {
                                                if ((NativeSupport.RUN_BINDER == null) || (!NativeSupport.RUN_BINDER.isProcessingData()) || (NativeSupport.ALWAYS_ALLOW_PHONE_TIMER))
                                                    NativeSupport.sendPhoneData();
                                            }
                                        }
                , 100L, 30L);
    }

    public static native void startProcessingMotionTestData();

    public static boolean startSendingData()
    {
        if (!mSendingData)
        {
            mSendingData = true;
            if ((mDataParseThread == null) || (!mDataParseThread.isAlive()))
            {
                mDataParseThread = new Thread(new Runnable()
                {
                    public void run()
                    {
                        NativeSupport.sendData();
                    }
                });
                mDataParseThread.start();
            }
            return true;
        }
        return false;
    }

    public static native void stopProcessingMotionTestData();

    public static boolean stopSendingData()
    {
        boolean bool1 = mSendingData;
        boolean bool2 = false;
        if (bool1)
        {
            Log.i("NativeSupport", "STOP stopSendingData");
            mSendingData = false;
            bool2 = true;
        }
        return bool2;
    }

    public static class EventType
    {
        static final int CyclingEvent = 201;
        static final int DeviceDisconnectedMistakenly = 13;
        static final int DisconnectedWhenDeviceStill = 12;
        static final int GymMegEvent = 631;
        static final int GymWeightEvent = 621;
        static final int HeartBeating = 11;
        static final int IndoorGymEvent = 601;
        static final int IndoorGymEventReal = 611;
        static final int LogEvent = 7;
        static final int LogProcessedDate = 21;
        static final int OnFireGunEvent = 521;
        static final int PopGymDeviceParams = 699;
        static final int PopGymEvent = 606;
        static final int PopGymEventReal = 616;
        static final int PopGymFRotationEvent = 607;
        static final int PopGymRealTimeEvent = 651;
        static final int PopGymReedEventReal = 671;
        static final int PopGymRevEvent = 605;
        static final int PopGymWaistEvent = 608;
        static final int ProcessingTestFileFinish = 14;
        static final int SensorOrientationEvent = 105;
        static final int StatisticData = 8;
        static final int StepEvent = 501;
        static final int StretchEvent = 101;
        static final int TestData_FFTimabs = 32;
    }
}