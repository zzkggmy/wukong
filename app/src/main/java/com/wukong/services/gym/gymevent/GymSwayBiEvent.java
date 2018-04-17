package com.wukong.services.gym.gymevent;

public class GymSwayBiEvent
{
    private int mCount;
    private int mInstanceNum;
    private double mMaxTauAngle;
    private double mMinTauAngle;
    private double mStretchTime;
    private double mWholeTime;
    private double mWithdrawTime;

    public GymSwayBiEvent(double[] paramArrayOfDouble)
    {
        int i = 0 + 1;
        this.mInstanceNum = ((int)paramArrayOfDouble[0]);
        int j = i + 1;
        this.mCount = ((int)paramArrayOfDouble[i]);
        int k = j + 1;
        this.mWithdrawTime = paramArrayOfDouble[j];
        int m = k + 1;
        this.mStretchTime = paramArrayOfDouble[k];
        int n = m + 1;
        this.mWholeTime = paramArrayOfDouble[m];
        int i1 = n + 1;
        this.mMinTauAngle = paramArrayOfDouble[n];
        (i1 + 1);
        this.mMaxTauAngle = paramArrayOfDouble[i1];
    }

    public int getCount()
    {
        return this.mCount;
    }

    public int getInstanceNum()
    {
        return this.mInstanceNum;
    }

    public double getMaxTauAngle()
    {
        return this.mMaxTauAngle;
    }

    public double getMinTauAngle()
    {
        return this.mMinTauAngle;
    }

    public double getStretchTime()
    {
        return this.mStretchTime;
    }

    public double getWholeTime()
    {
        return this.mWholeTime;
    }

    public double getWithdrawTime()
    {
        return this.mWithdrawTime;
    }
}