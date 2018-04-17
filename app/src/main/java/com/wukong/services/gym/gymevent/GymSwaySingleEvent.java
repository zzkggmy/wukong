package com.wukong.services.gym.gymevent;

public class GymSwaySingleEvent
{
    private double m1stPhaseAverageSpeed;
    private double m1stPhaseTime;
    private double m2ndPhaseAverageSpeed;
    private double m2ndPhaseTime;
    private int mCount;
    private int mCountType1;
    private int mCountType2;
    private int mCountType3;
    private int mCountType4;
    private double mHoldTime;
    private int mInstanceNum;
    private double mMax1stPhaseAngleDiff;
    private double mMax2ndPhaseAngleDiff;
    private double mMaxTauAngle;
    private double mMinTauAngle;
    private double mRestTime;
    private double mSumABS;

    public GymSwaySingleEvent(double[] paramArrayOfDouble)
    {
        int i = 0 + 1;
        this.mInstanceNum = ((int)paramArrayOfDouble[0]);
        int j = i + 1;
        this.mCount = ((int)paramArrayOfDouble[i]);
        int k = j + 1;
        this.mRestTime = paramArrayOfDouble[j];
        int m = k + 1;
        this.m1stPhaseTime = paramArrayOfDouble[k];
        int n = m + 1;
        this.mHoldTime = paramArrayOfDouble[m];
        int i1 = n + 1;
        this.m2ndPhaseTime = paramArrayOfDouble[n];
        int i2 = i1 + 1;
        this.mMaxTauAngle = paramArrayOfDouble[i1];
        int i3 = i2 + 1;
        this.mMinTauAngle = paramArrayOfDouble[i2];
        int i4 = i3 + 1;
        this.m1stPhaseAverageSpeed = paramArrayOfDouble[i3];
        int i5 = i4 + 1;
        this.m2ndPhaseAverageSpeed = paramArrayOfDouble[i4];
        int i6 = i5 + 1;
        this.mMax1stPhaseAngleDiff = paramArrayOfDouble[i5];
        int i7 = i6 + 1;
        this.mMax2ndPhaseAngleDiff = paramArrayOfDouble[i6];
        (i7 + 1);
        this.mSumABS = paramArrayOfDouble[i7];
    }

    public double get1stPhaseAverageSpeed()
    {
        return this.m1stPhaseAverageSpeed;
    }

    public double get1stPhaseTime()
    {
        return this.m1stPhaseTime;
    }

    public double get2ndPhaseAverageSpeed()
    {
        return this.m2ndPhaseAverageSpeed;
    }

    public double get2ndPhaseTime()
    {
        return this.m2ndPhaseTime;
    }

    public int getCount()
    {
        return this.mCount;
    }

    public double getHoldTime()
    {
        return this.mHoldTime;
    }

    public int getInstanceNum()
    {
        return this.mInstanceNum;
    }

    public double getMax1stPhaseAngleDiff()
    {
        return this.mMax1stPhaseAngleDiff;
    }

    public double getMax2ndPhaseAngleDiff()
    {
        return this.mMax2ndPhaseAngleDiff;
    }

    public double getMaxTauAngle()
    {
        return this.mMaxTauAngle;
    }

    public double getMinTauAngle()
    {
        return this.mMinTauAngle;
    }

    public double getRestTime()
    {
        return this.mRestTime;
    }

    public double getSumABS()
    {
        return this.mSumABS;
    }
}