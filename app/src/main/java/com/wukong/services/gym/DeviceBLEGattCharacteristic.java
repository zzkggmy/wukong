package com.wukong.services.gym;

import android.bluetooth.BluetoothGattCharacteristic;

public class DeviceBLEGattCharacteristic
{
    private BluetoothGattCharacteristic mBluetoothGattCharacteristic;
    private int mInstanceNum;
    private int mType;

    public DeviceBLEGattCharacteristic(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        this.mBluetoothGattCharacteristic = paramBluetoothGattCharacteristic;
    }

    public DeviceBLEGattCharacteristic(BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt)
    {
        this.mBluetoothGattCharacteristic = paramBluetoothGattCharacteristic;
        this.mInstanceNum = paramInt;
    }

    public DeviceBLEGattCharacteristic(BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt1, int paramInt2)
    {
        this.mBluetoothGattCharacteristic = paramBluetoothGattCharacteristic;
        this.mInstanceNum = paramInt1;
        this.mType = paramInt2;
    }

    public BluetoothGattCharacteristic getBluetoothGattCharacteristic()
    {
        return this.mBluetoothGattCharacteristic;
    }

    public int getInstanceNum()
    {
        return this.mInstanceNum;
    }

    public int getType()
    {
        return this.mType;
    }

    public void setBluetoothGattCharacteristic(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        this.mBluetoothGattCharacteristic = paramBluetoothGattCharacteristic;
    }

    public void setInstanceNum(int paramInt)
    {
        this.mInstanceNum = paramInt;
    }
}