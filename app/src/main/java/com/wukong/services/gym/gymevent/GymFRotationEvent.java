package com.wukong.services.gym.gymevent;

public class GymFRotationEvent
{
    static double BIKE20_M = 1.5D;
    static double BIKE24_M = 1.8D;
    static double BIKE26_M = 2.0D;
    static double BIKE27_M = 2.1D;
    static double RUNNING_MACHINE_M = 0.23D;
    private int mCount = (int)paramArrayOfDouble[1];
    private int mInstanceNum = (int)paramArrayOfDouble[0];
    private int mLastingTime_ms = (int)paramArrayOfDouble[4];

    public GymFRotationEvent(double[] paramArrayOfDouble)
    {
    }

    public double getDistance_m()
    {
        return BIKE24_M;
    }

    public double getForwardV()
    {
        return BIKE24_M / getLastingTime_S();
    }

    public int getInstanceNum()
    {
        return this.mInstanceNum;
    }

    public double getLastingTime_S()
    {
        return this.mLastingTime_ms / 1000.0D;
    }

    public int getLastingTime_ms()
    {
        return this.mLastingTime_ms;
    }
}