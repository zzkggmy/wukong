package com.wukong.services.ble;

public abstract interface BleManagerCallbacks
{
    public abstract void onBatteryValueReceived(int paramInt);

    public abstract void onBonded();

    public abstract void onBondingRequired();

    public abstract void onDeviceConnected();

    public abstract void onDeviceDisconnected();

    public abstract void onDeviceDisconnecting();

    public abstract void onDeviceNotSupported();

    public abstract void onDeviceReady();

    public abstract void onError(String paramString, int paramInt);

    public abstract void onLinklossOccur();

    public abstract void onServicesDiscovered(boolean paramBoolean);
}