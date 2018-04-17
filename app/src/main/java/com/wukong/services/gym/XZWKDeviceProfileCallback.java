package com.wukong.services.gym;

import com.wukong.services.ble.BleProfileService;
import com.wukong.services.ble.BleProfileService.LocalBinder;

public abstract interface XZWKDeviceProfileCallback
{
    public abstract BleProfileService.LocalBinder getDeviceBLEService(String paramString, int paramInt);

    public abstract void setDeviceBLEService(BleProfileService.LocalBinder paramLocalBinder, int paramInt);
}