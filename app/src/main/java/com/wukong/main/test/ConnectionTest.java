package com.wukong.main.test;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.os.Bundle;
import android.os.ParcelUuid;
import android.util.Log;
import com.wukong.main.barroute.PopGymFRotaBikeUI;
import com.wukong.main.barroute.PopGymSwayBiUI;
import com.wukong.main.barroute.PopGymSwaySiUI;
import com.wukong.main.base.BleProfileIdFuncActivity;
import com.wukong.main.beans.OutdoorDeviceP1;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.TTSService;
import com.wukong.services.gym.BaseManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter.Builder;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;
import no.nordicsemi.android.support.v18.scanner.ScanSettings.Builder;

public class ConnectionTest extends BleProfileIdFuncActivity
{
    private static final String TAG = "RouteFragment";
    private long init_ms;
    private HashMap<String, OutdoorDeviceP1> mIdSensorMap = new HashMap();
    private boolean mIsConnecting = true;
    private boolean mIsScanning = false;
    private ArrayList<String> mMotionSensorAddrList = new ArrayList();
    private String mNearestIdAddress;
    private ScanCallback mScanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
            ConnectionTest.this.updateResult(paramAnonymousList);
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };

    private void startScan()
    {
        Log.i("RouteFragment", "startScan()");
        if (this.mIsScanning)
            return;
        this.mNearestIdAddress = null;
        this.mIdSensorMap.clear();
        checkBLE();
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(2).setReportDelay(1300L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        ParcelUuid localParcelUuid = ParcelUuid.fromString(BaseManager.XZWK_MTN_DEVICE_SERVICE_UUID.toString());
        localArrayList.add(new ScanFilter.Builder().setServiceUuid(localParcelUuid).build());
        localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.mScanCallback);
        this.mIsScanning = true;
        this.mIsConnecting = false;
    }

    private void stopScan()
    {
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.mScanCallback);
            this.mIsScanning = false;
        }
    }

    private void updateResult(List<ScanResult> paramList)
    {
        Log.i("RouteFragment", "Scanning");
        Iterator localIterator1 = paramList.iterator();
        while (localIterator1.hasNext())
        {
            ScanResult localScanResult = (ScanResult)localIterator1.next();
            BluetoothDevice localBluetoothDevice = localScanResult.getDevice();
            if (localBluetoothDevice.getName() != null)
            {
                if (localBluetoothDevice.getName().startsWith("YAXLfc"))
                {
                    if (this.mIdSensorMap.containsKey(localBluetoothDevice.getAddress()))
                        break label2006;
                    OutdoorDeviceP1 localOutdoorDeviceP12 = new OutdoorDeviceP1(localBluetoothDevice.getName(), localBluetoothDevice.getAddress(), localScanResult.getRssi(), System.currentTimeMillis(), null, null, -1, null);
                    this.mIdSensorMap.put(localBluetoothDevice.getAddress(), localOutdoorDeviceP12);
                }
                while (true)
                {
                    if (localBluetoothDevice.getName().startsWith("YAXLdzfn"))
                    {
                        String str3 = localBluetoothDevice.getAddress();
                        if ((this.mIdSensorMap.containsKey("C9:C3:B0:EA:33:14")) && (str3.equals("C1:6A:78:97:9E:43")))
                        {
                            ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:C3:B0:EA:33:14")).setMotionSensorName(localBluetoothDevice.getName());
                            ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:C3:B0:EA:33:14")).setMotionSensorAddress(str3);
                            ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:C3:B0:EA:33:14")).setInstrumentType(100000005);
                        }
                        if ((this.mIdSensorMap.containsKey("CC:22:D3:3A:53:26")) && (str3.equals("E8:DF:00:B2:D0:3D")))
                        {
                            ((OutdoorDeviceP1)this.mIdSensorMap.get("CC:22:D3:3A:53:26")).setMotionSensorName(localBluetoothDevice.getName());
                            ((OutdoorDeviceP1)this.mIdSensorMap.get("CC:22:D3:3A:53:26")).setMotionSensorAddress(str3);
                            ((OutdoorDeviceP1)this.mIdSensorMap.get("CC:22:D3:3A:53:26")).setInstrumentType(100200005);
                        }
                    }
                    if (((localBluetoothDevice.getName().startsWith("YAXLdzfy")) || (localBluetoothDevice.getName().startsWith("YAXLdzfY"))) && (!this.mMotionSensorAddrList.contains(localBluetoothDevice.getAddress())))
                        this.mMotionSensorAddrList.add(localBluetoothDevice.getAddress());
                    if ((!localBluetoothDevice.getName().startsWith("YAXLdzfY")) && (!localBluetoothDevice.getName().startsWith("YAXLdzfy")))
                        break;
                    String str2 = localBluetoothDevice.getAddress();
                    if ((this.mIdSensorMap.containsKey("-")) && (str2.equals("～")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("-")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("-")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("-")).setInstrumentType(100000001);
                    }
                    if ((this.mIdSensorMap.containsKey("E8:99:D3:82:AD:A7")) && (str2.equals("D3:54:E8:49:85:16")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E8:99:D3:82:AD:A7")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E8:99:D3:82:AD:A7")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E8:99:D3:82:AD:A7")).setInstrumentType(100100001);
                    }
                    if ((this.mIdSensorMap.containsKey("F6:91:27:A6:D0:10")) && (str2.equals("DC:6E:26:78:91:D0")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F6:91:27:A6:D0:10")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F6:91:27:A6:D0:10")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F6:91:27:A6:D0:10")).setInstrumentType(100100002);
                    }
                    if ((this.mIdSensorMap.containsKey("C9:8A:49:DB:2A:E7")) && (str2.equals("CD:8C:82:BE:FF:E4")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:8A:49:DB:2A:E7")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:8A:49:DB:2A:E7")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:8A:49:DB:2A:E7")).setInstrumentType(100100003);
                    }
                    if ((this.mIdSensorMap.containsKey("D1:8C:D2:94:81:53")) && (str2.equals("E0:7B:A2:AD:4F:C7")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("D1:8C:D2:94:81:53")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("D1:8C:D2:94:81:53")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("D1:8C:D2:94:81:53")).setInstrumentType(100100004);
                    }
                    if ((this.mIdSensorMap.containsKey("DC:4D:D2:76:C5:70")) && (str2.equals("C8:7A:FA:49:C2:62")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DC:4D:D2:76:C5:70")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DC:4D:D2:76:C5:70")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DC:4D:D2:76:C5:70")).setInstrumentType(100100005);
                    }
                    if ((this.mIdSensorMap.containsKey("E6:C7:6E:A0:50:FA")) && (str2.equals("D5:56:39:73:35:A9")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E6:C7:6E:A0:50:FA")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E6:C7:6E:A0:50:FA")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E6:C7:6E:A0:50:FA")).setInstrumentType(100100006);
                    }
                    if ((this.mIdSensorMap.containsKey("F3:B5:72:21:A1:31")) && (str2.equals("E2:79:6D:A5:63:1E")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F3:B5:72:21:A1:31")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F3:B5:72:21:A1:31")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F3:B5:72:21:A1:31")).setInstrumentType(100100007);
                    }
                    if ((this.mIdSensorMap.containsKey("F7:6A:6C:96:39:C4")) && (str2.equals("E3:A1:4D:A5:B6:2B")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F7:6A:6C:96:39:C4")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F7:6A:6C:96:39:C4")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F7:6A:6C:96:39:C4")).setInstrumentType(100100008);
                    }
                    if ((this.mIdSensorMap.containsKey("C9:4D:5F:E3:0D:A3")) && (str2.equals("E7:DC:9B:6F:90:46")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:4D:5F:E3:0D:A3")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:4D:5F:E3:0D:A3")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C9:4D:5F:E3:0D:A3")).setInstrumentType(100200005);
                    }
                    if ((this.mIdSensorMap.containsKey("DF:C6:FD:DD:51:B8")) && (str2.equals("E2:01:59:2A:46:2A")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DF:C6:FD:DD:51:B8")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DF:C6:FD:DD:51:B8")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DF:C6:FD:DD:51:B8")).setInstrumentType(100000005);
                    }
                    if ((this.mIdSensorMap.containsKey("C3:12:7F:60:99:D4")) && (str2.equals("E0:5A:79:88:35:27")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C3:12:7F:60:99:D4")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C3:12:7F:60:99:D4")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C3:12:7F:60:99:D4")).setInstrumentType(100100007);
                    }
                    if ((this.mIdSensorMap.containsKey("DE:F9:92:8B:F3:03")) && (str2.equals("D3:C2:17:CD:14:6E")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DE:F9:92:8B:F3:03")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DE:F9:92:8B:F3:03")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("DE:F9:92:8B:F3:03")).setInstrumentType(100200005);
                    }
                    if ((this.mIdSensorMap.containsKey("E5:B4:68:9A:BD:2A")) && (str2.equals("D1:3E:C8:DB:41:5C")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E5:B4:68:9A:BD:2A")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E5:B4:68:9A:BD:2A")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("E5:B4:68:9A:BD:2A")).setInstrumentType(100000005);
                    }
                    if ((this.mIdSensorMap.containsKey("FB:C0:E9:BA:22:DA")) && (str2.equals("EF:63:BC:DC:B8:51")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("FB:C0:E9:BA:22:DA")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("FB:C0:E9:BA:22:DA")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("FB:C0:E9:BA:22:DA")).setInstrumentType(100100007);
                    }
                    if ((this.mIdSensorMap.containsKey("F7:CA:91:02:E1:BC")) && (str2.equals("F0:ED:C5:EC:5E:B1")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F7:CA:91:02:E1:BC")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F7:CA:91:02:E1:BC")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("F7:CA:91:02:E1:BC")).setInstrumentType(100100007);
                        Log.i("RouteFragment", "1.3 ~~identify time: " + (System.currentTimeMillis() - this.init_ms));
                    }
                    if ((this.mIdSensorMap.containsKey("C0:89:12:5D:7E:FD")) && (str2.equals("E7:9A:32:1C:8C:46")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C0:89:12:5D:7E:FD")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C0:89:12:5D:7E:FD")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("C0:89:12:5D:7E:FD")).setInstrumentType(100200005);
                    }
                    if ((this.mIdSensorMap.containsKey("CE:F6:5E:7D:D5:F4")) && (str2.equals("E5:F8:FB:9B:85:D7")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("CE:F6:5E:7D:D5:F4")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("CE:F6:5E:7D:D5:F4")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("CE:F6:5E:7D:D5:F4")).setInstrumentType(100000005);
                    }
                    if ((this.mIdSensorMap.containsKey("D1:02:53:2B:75:EB")) && (str2.equals("D9:C6:9B:34:82:D1")))
                    {
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("D1:02:53:2B:75:EB")).setMotionSensorName(localBluetoothDevice.getName());
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("D1:02:53:2B:75:EB")).setMotionSensorAddress(str2);
                        ((OutdoorDeviceP1)this.mIdSensorMap.get("D1:02:53:2B:75:EB")).setInstrumentType(100000005);
                    }
                    Log.i("RouteFragment", "mtn scanResult: " + localScanResult.getDevice().getAddress() + " " + localScanResult.getRssi());
                    break;
                    label2006: ((OutdoorDeviceP1)this.mIdSensorMap.get(localBluetoothDevice.getAddress())).setIdSensorRssi(localScanResult.getRssi());
                    ((OutdoorDeviceP1)this.mIdSensorMap.get(localBluetoothDevice.getAddress())).setIdSensorLatestTimeStamp(System.currentTimeMillis());
                }
            }
        }
        int i = -200;
        long l1 = System.currentTimeMillis();
        Iterator localIterator2 = this.mIdSensorMap.keySet().iterator();
        while (localIterator2.hasNext())
        {
            String str1 = (String)localIterator2.next();
            OutdoorDeviceP1 localOutdoorDeviceP11 = (OutdoorDeviceP1)this.mIdSensorMap.get(str1);
            if ((l1 - localOutdoorDeviceP11.getIdSensorLatestTimeStamp() < 5000L) && (localOutdoorDeviceP11.getIdSensorRssi() > i))
            {
                i = localOutdoorDeviceP11.getIdSensorRssi();
                this.mNearestIdAddress = str1;
            }
            long l2 = l1 - localOutdoorDeviceP11.getIdSensorLatestTimeStamp();
            Log.i("RouteFragment", "     Que Result: " + str1 + " " + localOutdoorDeviceP11.getIdSensorRssi() + " " + l2);
        }
        Log.i("RouteFragment", "            mNearestIdAddress: " + this.mNearestIdAddress);
    }

    protected final void checkBLE()
    {
        if (!isBLEEnabled())
            showBLEDialog();
    }

    protected void goToReportActivity()
    {
    }

    public void onCreateView(Bundle paramBundle)
    {
        startScan();
    }

    public void onPause()
    {
        super.onPause();
        stopScan();
    }

    public void onResume()
    {
        super.onResume();
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          if (Configs.isRoute)
                                          {
                                              ConnectionTest.this.mTTSService.ttsStop();
                                              ConnectionTest.this.mTTSService.ttsPlay("请将手机置于云台自动连接智能设备！");
                                              ConnectionTest.this.startScan();
                                          }
                                      }
                                  }
                , 1000L);
        this.init_ms = System.currentTimeMillis();
    }

    public void tryConnectingRouteDevice(double paramDouble, int paramInt)
    {
        if (!Configs.isRoute);
        OutdoorDeviceP1 localOutdoorDeviceP11;
        label235: label236: label238: OutdoorDeviceP1 localOutdoorDeviceP12;
        do
        {
            while (true)
            {
                return;
                if (!this.mIsConnecting)
                {
                    localOutdoorDeviceP11 = (OutdoorDeviceP1)this.mIdSensorMap.get(this.mNearestIdAddress);
                    int i;
                    if ((localOutdoorDeviceP11 != null) && (localOutdoorDeviceP11.getIdSensorRssi() > -85) && (paramDouble < 150.0D) && (((paramInt > 169) && (paramInt < 179)) || ((paramInt > 185) && (paramInt < 192))))
                    {
                        i = 1;
                        if ((localOutdoorDeviceP11 == null) || (localOutdoorDeviceP11.getIdSensorRssi() <= -78) || (paramDouble >= 500.0D) || (paramInt <= 171) || (paramInt >= 177))
                            break label235;
                    }
                    while (true)
                    {
                        if (((paramDouble >= 23.0D) || (paramInt <= 167) || (paramInt >= 199)) && ((paramDouble >= 25.0D) || (paramInt <= 185) || (paramInt >= 199)) && (i == 0))
                            break label236;
                        Log.i("RouteFragment", "3~~~~~~~~~~~~~~~~~~~~~identify time: " + (System.currentTimeMillis() - this.init_ms));
                        if ((this.mNearestIdAddress != null) && (!this.mNearestIdAddress.equals("")))
                            break label238;
                        this.mIsConnecting = false;
                        return;
                        i = 0;
                        break;
                    }
                }
            }
            localOutdoorDeviceP12 = (OutdoorDeviceP1)this.mIdSensorMap.get(this.mNearestIdAddress);
        }
        while (!this.mMotionSensorAddrList.contains(localOutdoorDeviceP12.getMotionSensorAddress()));
        Intent localIntent;
        if (localOutdoorDeviceP12.getInstrumentType() / 100000 == 1000)
            localIntent = new Intent(this, PopGymSwayBiUI.class);
        while (true)
        {
            Log.i("RouteFragment", "     4 ~~identify time: " + (System.currentTimeMillis() - this.init_ms) + " pTA: " + paramInt + " Issi: " + localOutdoorDeviceP11.getIdSensorRssi());
            if (localIntent != null)
                break;
            showToastShort("未发现配对设备或配对设备已被占用！");
            this.mIsConnecting = false;
            return;
            if (localOutdoorDeviceP12.getInstrumentType() / 100000 == 1001)
            {
                localIntent = new Intent(this, PopGymSwaySiUI.class);
            }
            else
            {
                int j = localOutdoorDeviceP12.getInstrumentType() / 100000;
                localIntent = null;
                if (j == 1002)
                    localIntent = new Intent(this, PopGymFRotaBikeUI.class);
            }
        }
        localIntent.putExtra("Type", localOutdoorDeviceP12.getInstrumentType());
        localIntent.putExtra("DeviceAddress", localOutdoorDeviceP12.getMotionSensorAddress());
        localIntent.putExtra("DeviceName", "YAXLdzfn");
        startActivity(localIntent);
        Log.i("RouteFragment", "     5 ~~identify time: " + (System.currentTimeMillis() - this.init_ms) + " pTA: " + paramInt + " Issi: " + localOutdoorDeviceP11.getIdSensorRssi());
        this.mIsConnecting = true;
        showToastShort("正在识别并建立连接！");
    }
}