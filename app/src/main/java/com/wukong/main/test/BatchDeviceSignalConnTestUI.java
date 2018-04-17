package com.wukong.main.test;

import android.bluetooth.BluetoothDevice;
import android.util.Log;

import com.wukong.main.beans.BLEDeviceTest;
import com.wukong.services.gym.NativeSupport;

import java.util.Iterator;
import java.util.List;

import no.nordicsemi.android.support.v18.scanner.ScanResult;

public class BatchDeviceSignalConnTestUI extends BatchDeviceSignalTestUI
{
    protected static final String TAG = "BatchDvcSgnlConnTstUI";
    protected long mConnectTime;
    protected String mDeviceAddrToConn;
    protected long mDisconnectTime;
    protected boolean mIsConnectTesting;
    protected boolean mIsConnected;
    protected boolean mReadyToDisconn;
    protected long mStartConnTimeStamp;
    protected long mStartDisconnTimeStamp;
    private String mTempDeviceName = "";

    protected void calBLETestDeviceParams()
    {
        long l = System.currentTimeMillis();
        this.mCount = (1 + this.mCount);
        Iterator localIterator = this.mTestPathDeviceMap.entrySet().iterator();
        if (localIterator.hasNext())
        {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            if (!((BLEDeviceTest)localEntry.getValue()).isUpdated())
                ((BLEDeviceTest)localEntry.getValue()).setDeviceRssiInstantLP(NativeSupport.calLP(((BLEDeviceTest)localEntry.getValue()).getDeviceRssiInstantLP(), -135.0D, 16));
            while (true)
            {
                ((BLEDeviceTest)localEntry.getValue()).setSignalUpdateInterval(l - ((BLEDeviceTest)localEntry.getValue()).getDeviceTimeStamp());
                ((BLEDeviceTest)localEntry.getValue()).mCount = this.mCount;
                break;
                ((BLEDeviceTest)localEntry.getValue()).setUpdated(false);
            }
        }
        if (this.mCount % 5 == 0)
        {
            stopScan();
            this.mHandler.postDelayed(new Runnable()
                                      {
                                          public void run()
                                          {
                                              if (BatchDeviceSignalConnTestUI.this.mCount <= 500)
                                              {
                                                  BatchDeviceSignalConnTestUI.this.connectDevicesTest();
                                                  return;
                                              }
                                              BatchDeviceSignalConnTestUI.this.switchStartFinishBtn();
                                              Log.i("BatchDvcSgnlConnTstUI", BatchDeviceSignalConnTestUI.this.mCount + " ------Colllllllecting Result:\n");
                                              BatchDeviceSignalConnTestUI.this.collectResult();
                                              BatchDeviceSignalConnTestUI.this.showToastLong("自动结束,测试完成！");
                                              BatchDeviceSignalConnTestUI.this.mTvInfo1.append(BatchDeviceSignalConnTestUI.this.getNowTimeString() + "-- 自动结束,测试完成!\n");
                                          }
                                      }
                    , 500L);
        }
    }

    protected void connectDevicesTest()
    {
        new Thread(new Runnable()
        {
            // ERROR //
            public void run()
            {
                // Byte code:
                //   0: iconst_1
                //   1: istore_1
                //   2: aload_0
                //   3: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   6: getfield 26	com/wukong/main/test/BatchDeviceSignalConnTestUI:mTestPathDeviceMap	Ljava/util/HashMap;
                //   9: invokevirtual 32	java/util/HashMap:entrySet	()Ljava/util/Set;
                //   12: invokeinterface 38 1 0
                //   17: astore_2
                //   18: aload_2
                //   19: invokeinterface 44 1 0
                //   24: ifeq +307 -> 331
                //   27: aload_2
                //   28: invokeinterface 48 1 0
                //   33: checkcast 50	java/util/Map$Entry
                //   36: astore 4
                //   38: aload_0
                //   39: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   42: aload 4
                //   44: invokeinterface 53 1 0
                //   49: checkcast 55	com/wukong/main/beans/BLEDeviceTest
                //   52: invokevirtual 59	com/wukong/main/beans/BLEDeviceTest:getDeviceAddress	()Ljava/lang/String;
                //   55: putfield 63	com/wukong/main/test/BatchDeviceSignalConnTestUI:mDeviceAddrToConn	Ljava/lang/String;
                //   58: new 65	java/lang/StringBuilder
                //   61: dup
                //   62: invokespecial 66	java/lang/StringBuilder:<init>	()V
                //   65: ldc 68
                //   67: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   70: aload_0
                //   71: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   74: getfield 63	com/wukong/main/test/BatchDeviceSignalConnTestUI:mDeviceAddrToConn	Ljava/lang/String;
                //   77: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   80: ldc 74
                //   82: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   85: astore 5
                //   87: iload_1
                //   88: iconst_1
                //   89: iadd
                //   90: istore 6
                //   92: ldc 76
                //   94: aload 5
                //   96: iload_1
                //   97: invokevirtual 79	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
                //   100: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
                //   103: invokestatic 88	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
                //   106: pop
                //   107: aload_0
                //   108: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   111: invokestatic 94	java/lang/System:currentTimeMillis	()J
                //   114: putfield 98	com/wukong/main/test/BatchDeviceSignalConnTestUI:mStartConnTimeStamp	J
                //   117: aload 4
                //   119: invokeinterface 53 1 0
                //   124: checkcast 55	com/wukong/main/beans/BLEDeviceTest
                //   127: invokevirtual 101	com/wukong/main/beans/BLEDeviceTest:getDeviceName	()Ljava/lang/String;
                //   130: astore 8
                //   132: aload 4
                //   134: invokeinterface 53 1 0
                //   139: checkcast 55	com/wukong/main/beans/BLEDeviceTest
                //   142: invokevirtual 59	com/wukong/main/beans/BLEDeviceTest:getDeviceAddress	()Ljava/lang/String;
                //   145: astore 9
                //   147: aload_0
                //   148: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   151: invokestatic 105	com/wukong/main/test/BatchDeviceSignalConnTestUI:access$100	(Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;)Landroid/os/Handler;
                //   154: new 107	com/wukong/main/test/BatchDeviceSignalConnTestUI$2$1
                //   157: dup
                //   158: aload_0
                //   159: aload 8
                //   161: aload 9
                //   163: invokespecial 110	com/wukong/main/test/BatchDeviceSignalConnTestUI$2$1:<init>	(Lcom/wukong/main/test/BatchDeviceSignalConnTestUI$2;Ljava/lang/String;Ljava/lang/String;)V
                //   166: invokevirtual 116	android/os/Handler:post	(Ljava/lang/Runnable;)Z
                //   169: pop
                //   170: aload_0
                //   171: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   174: iconst_1
                //   175: putfield 120	com/wukong/main/test/BatchDeviceSignalConnTestUI:mIsConnectTesting	Z
                //   178: iconst_0
                //   179: istore 11
                //   181: aload_0
                //   182: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   185: getfield 120	com/wukong/main/test/BatchDeviceSignalConnTestUI:mIsConnectTesting	Z
                //   188: ifeq +61 -> 249
                //   191: ldc2_w 121
                //   194: invokestatic 128	java/lang/Thread:sleep	(J)V
                //   197: iload 11
                //   199: iconst_1
                //   200: iadd
                //   201: istore 15
                //   203: iload 11
                //   205: bipush 50
                //   207: if_icmple +11 -> 218
                //   210: aload_0
                //   211: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   214: lconst_0
                //   215: invokevirtual 131	com/wukong/main/test/BatchDeviceSignalConnTestUI:disconnectDevice	(J)V
                //   218: ldc 76
                //   220: ldc 133
                //   222: invokestatic 88	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
                //   225: pop
                //   226: iload 15
                //   228: istore 11
                //   230: goto -49 -> 181
                //   233: astore 13
                //   235: ldc 76
                //   237: aload 13
                //   239: invokevirtual 136	java/lang/Exception:getMessage	()Ljava/lang/String;
                //   242: invokestatic 88	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
                //   245: pop
                //   246: goto -65 -> 181
                //   249: aload 4
                //   251: invokeinterface 53 1 0
                //   256: checkcast 55	com/wukong/main/beans/BLEDeviceTest
                //   259: aload_0
                //   260: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   263: getfield 139	com/wukong/main/test/BatchDeviceSignalConnTestUI:mConnectTime	J
                //   266: invokevirtual 142	com/wukong/main/beans/BLEDeviceTest:setConnTime	(J)V
                //   269: aload 4
                //   271: invokeinterface 53 1 0
                //   276: checkcast 55	com/wukong/main/beans/BLEDeviceTest
                //   279: aload_0
                //   280: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   283: getfield 145	com/wukong/main/test/BatchDeviceSignalConnTestUI:mDisconnectTime	J
                //   286: invokevirtual 148	com/wukong/main/beans/BLEDeviceTest:setDisconnTime	(J)V
                //   289: ldc 76
                //   291: new 65	java/lang/StringBuilder
                //   294: dup
                //   295: invokespecial 66	java/lang/StringBuilder:<init>	()V
                //   298: ldc 150
                //   300: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   303: aload_0
                //   304: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   307: getfield 63	com/wukong/main/test/BatchDeviceSignalConnTestUI:mDeviceAddrToConn	Ljava/lang/String;
                //   310: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   313: ldc 152
                //   315: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //   318: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
                //   321: invokestatic 88	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
                //   324: pop
                //   325: iload 6
                //   327: istore_1
                //   328: goto -310 -> 18
                //   331: aload_0
                //   332: getfield 17	com/wukong/main/test/BatchDeviceSignalConnTestUI$2:this$0	Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;
                //   335: invokestatic 155	com/wukong/main/test/BatchDeviceSignalConnTestUI:access$200	(Lcom/wukong/main/test/BatchDeviceSignalConnTestUI;)Landroid/os/Handler;
                //   338: new 157	com/wukong/main/test/BatchDeviceSignalConnTestUI$2$2
                //   341: dup
                //   342: aload_0
                //   343: invokespecial 160	com/wukong/main/test/BatchDeviceSignalConnTestUI$2$2:<init>	(Lcom/wukong/main/test/BatchDeviceSignalConnTestUI$2;)V
                //   346: ldc2_w 121
                //   349: invokevirtual 164	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
                //   352: pop
                //   353: return
                //   354: astore 13
                //   356: iload 15
                //   358: istore 11
                //   360: goto -125 -> 235
                //
                // Exception table:
                //   from	to	target	type
                //   191	197	233	java/lang/Exception
                //   210	218	354	java/lang/Exception
                //   218	226	354	java/lang/Exception
            }
        }).start();
    }

    protected void disconnectDevice(long paramLong)
    {
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          BatchDeviceSignalConnTestUI.this.mStartDisconnTimeStamp = System.currentTimeMillis();
                                          Log.i("BatchDvcSgnlConnTstUI", "3. disconnect from " + BatchDeviceSignalConnTestUI.this.mDeviceAddrToConn);
                                          BatchDeviceSignalConnTestUI.this.unbindConnectedDeviceManually();
                                      }
                                  }
                , paramLong);
    }

    protected void initViews()
    {
        super.initViews();
        this.mTvTitle.setText(2131165347);
        this.mTvInfo1.setBackgroundColor(-16711936);
    }

    public void onDeviceConnected()
    {
        this.mIsConnected = true;
        this.mReadyToDisconn = true;
        this.mConnectTime = (System.currentTimeMillis() - this.mStartConnTimeStamp);
        Log.i("BatchDvcSgnlConnTstUI", "2. connected to " + this.mDeviceAddrToConn + " " + this.mConnectTime);
        disconnectDevice(1000L);
    }

    public void onServiceUnbinded()
    {
        super.onServiceUnbinded();
        this.mIsConnected = false;
        this.mDisconnectTime = (System.currentTimeMillis() - this.mStartDisconnTimeStamp);
        Log.i("BatchDvcSgnlConnTstUI", "4. disconnected from " + this.mDeviceAddrToConn + " " + this.mDisconnectTime);
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          BatchDeviceSignalConnTestUI.this.mIsConnectTesting = false;
                                      }
                                  }
                , 500L);
    }

    protected void updateResult(List<ScanResult> paramList)
    {
        if (!this.mIsScanning)
            return;
        long l = System.currentTimeMillis();
        int i = 0;
        if (i < paramList.size())
        {
            BluetoothDevice localBluetoothDevice = ((ScanResult)paramList.get(i)).getDevice();
            this.mTempDeviceName = localBluetoothDevice.getName();
            int j;
            if ((this.mTempDeviceName != null) && ((this.mTempDeviceName.startsWith("YAXLdzfY")) || (this.mTempDeviceName.startsWith("YAXLdzfn"))))
            {
                j = ((ScanResult)paramList.get(i)).getRssi();
                if (!this.mTestPathDeviceMap.containsKey(localBluetoothDevice.getAddress()))
                    break label179;
                BLEDeviceTest localBLEDeviceTest = (BLEDeviceTest)this.mTestPathDeviceMap.get(localBluetoothDevice.getAddress());
                localBLEDeviceTest.setDeviceRssiInstantLP(NativeSupport.calLP(localBLEDeviceTest.getDeviceRssiInstantLP(), j, 16));
                localBLEDeviceTest.setDeviceTimeStamp(l);
                localBLEDeviceTest.mCntValid = (1 + localBLEDeviceTest.mCntValid);
                localBLEDeviceTest.setUpdated(true);
            }
            while (true)
            {
                i++;
                break;
                label179: this.mTestPathDeviceMap.put(localBluetoothDevice.getAddress(), new BLEDeviceTest(this.mTempDeviceName, localBluetoothDevice.getAddress(), j, l));
            }
        }
        calBLETestDeviceParams();
    }
}