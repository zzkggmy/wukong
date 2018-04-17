package com.wukong.services.gym;

import android.bluetooth.BluetoothGattCharacteristic;
import com.wukong.services.ble.BleManagerCallbacks;

abstract interface BaseManagerCallbacks extends BleManagerCallbacks
{
    public abstract void onSampleValueReceived(BluetoothGattCharacteristic paramBluetoothGattCharacteristic);
}