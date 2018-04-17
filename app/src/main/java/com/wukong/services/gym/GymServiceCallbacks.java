package com.wukong.services.gym;

import com.wukong.services.gym.gymevent.GymFRotationEvent;
import com.wukong.services.gym.gymevent.GymRotationEvent;
import com.wukong.services.gym.gymevent.GymSwayBiEvent;
import com.wukong.services.gym.gymevent.GymSwaySingleEvent;
import com.wukong.services.gym.gymevent.StretchEvent;

public abstract interface GymServiceCallbacks extends BaseServiceCallbacks
{
    public abstract void onGymDeviceParams(double[] paramArrayOfDouble);

    public abstract void onGymFRotationEvent(GymFRotationEvent paramGymFRotationEvent);

    public abstract void onGymReedRealEvent(double[] paramArrayOfDouble);

    public abstract void onGymRotationEvent(GymRotationEvent paramGymRotationEvent);

    public abstract void onGymSwayBiEvent(GymSwayBiEvent paramGymSwayBiEvent);

    public abstract void onGymSwayBiRealEvent(GymSwayBiEvent paramGymSwayBiEvent);

    public abstract void onGymSwaySingleEvent(GymSwaySingleEvent paramGymSwaySingleEvent);

    public abstract void onGymSwaySingleRealEvent(GymSwaySingleEvent paramGymSwaySingleEvent);

    public abstract void onGymWaistEvent(double[] paramArrayOfDouble);

    public abstract void onHeartRate(int[] paramArrayOfInt);

    public abstract void onMegEvent(double[] paramArrayOfDouble);

    public abstract void onStatisticData(double[] paramArrayOfDouble);

    public abstract void onStretching(StretchEvent paramStretchEvent);

    public abstract void onWeightEvent(double[] paramArrayOfDouble);
}