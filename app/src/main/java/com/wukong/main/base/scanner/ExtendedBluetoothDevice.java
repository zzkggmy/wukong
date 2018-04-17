package com.wukong.main.base.scanner;

import android.bluetooth.BluetoothDevice;
import no.nordicsemi.android.support.v18.scanner.ScanRecord;
import no.nordicsemi.android.support.v18.scanner.ScanResult;

public class ExtendedBluetoothDevice
{
    static final int NO_RSSI = -1000;
    public final BluetoothDevice device;
    public boolean isBonded;
    public String name;
    public int rssi;

    public ExtendedBluetoothDevice(BluetoothDevice paramBluetoothDevice)
    {
        this.device = paramBluetoothDevice;
        this.name = paramBluetoothDevice.getName();
        this.rssi = -1000;
        this.isBonded = true;
    }

    public ExtendedBluetoothDevice(ScanResult paramScanResult)
    {
        this.device = paramScanResult.getDevice();
        if (paramScanResult.getScanRecord() != null);
        for (String str = paramScanResult.getScanRecord().getDeviceName(); ; str = null)
        {
            this.name = str;
            this.rssi = paramScanResult.getRssi();
            this.isBonded = false;
            return;
        }
    }

    public boolean matches(ScanResult paramScanResult)
    {
        return this.device.getAddress().equals(paramScanResult.getDevice().getAddress());
    }
}