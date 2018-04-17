package com.wukong.services.gym;

public abstract interface BaseServiceCallbacks
{
    public abstract void onDeviceDisconnectedMistakenly(int paramInt);

    public abstract void onDisconnectedWhenDeviceStill();

    public abstract void onHeartBeating(boolean paramBoolean);

    public abstract void onProcessedDataReceived(double[] paramArrayOfDouble);

    public abstract void onProcessingTestFileFinish();
}