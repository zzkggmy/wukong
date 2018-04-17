package com.wukong.services.gym;

import com.wukong.services.gym.gymevent.GymRealTimeEvent;

public abstract interface RealTimeServiceCallbacks
{
    public abstract void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent);
}