package com.wukong.services.gym.gymevent;

public class GymRotationEvent
{
    private double mDistance_m;
    private double mForwardAcc;
    private double mForwardV;
    private int mInstanceNum;
    private double mLastingTime;
    private double mSumAcc;
    private double mSumV;

    public GymRotationEvent(double[] paramArrayOfDouble)
    {
        int i = 0 + 1;
        this.mInstanceNum = ((int)paramArrayOfDouble[0]);
        int j = i + 1;
        this.mForwardV = paramArrayOfDouble[i];
        int k = j + 1;
        this.mSumV = paramArrayOfDouble[j];
        int m = k + 1;
        this.mForwardAcc = paramArrayOfDouble[k];
        int n = m + 1;
        this.mSumAcc = paramArrayOfDouble[m];
        int i1 = n + 1;
        this.mDistance_m = paramArrayOfDouble[n];
        (i1 + 1);
        this.mLastingTime = paramArrayOfDouble[i1];
    }

    public double getDistance_m()
    {
        return this.mDistance_m;
    }

    public double getForwardAcc()
    {
        return this.mForwardAcc;
    }

    public double getForwardV()
    {
        return this.mForwardV;
    }

    public int getInstanceNum()
    {
        return this.mInstanceNum;
    }

    public double getLastingTime_S()
    {
        return this.mLastingTime;
    }

    public int getLastingTime_ms()
    {
        return (int)(1000.0D * this.mLastingTime);
    }

    public double getSumAcc()
    {
        return this.mSumAcc;
    }

    public double getSumV()
    {
        return this.mSumV;
    }
}