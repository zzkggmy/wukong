package com.wukong.services.gym.gymevent;

public class StretchEvent
{
    private int mHalf1_ms;
    private int mHalf2_ms;
    private int mHanded;
    private double mSpeed;

    public StretchEvent(double[] paramArrayOfDouble)
    {
        int i = 0 + 1;
        this.mSpeed = paramArrayOfDouble[0];
        int j = i + 1;
        this.mHalf1_ms = ((int)paramArrayOfDouble[i]);
        int k = j + 1;
        this.mHalf2_ms = ((int)paramArrayOfDouble[j]);
        (k + 1);
        this.mHanded = ((int)paramArrayOfDouble[k]);
    }

    public double getAverageMeanSpeed()
    {
        return this.mSpeed;
    }

    public int getHalf1_ms()
    {
        return this.mHalf1_ms;
    }

    public int getHalf2_ms()
    {
        return this.mHalf2_ms;
    }

    public int getHanded()
    {
        return this.mHanded;
    }
}