package com.wukong.services.gym.gymevent;

public class GymRealTimeEvent
{
    private final double mAmp;
    private final double mAvrgRev_DPS;
    private final int mInstanceNum;
    private final int mPAType;
    private final double mPMRevXYZAvedevLP;
    private final double mRealAngle;
    private final double mRealAngle_;
    private final double mRev_DPS;
    private final double mSignedAmp;
    private final double mSignedCAmp;
    private final double mSpeed;
    private final double mStability;
    private final double mTDistLP;
    private final double mType;

    public GymRealTimeEvent(double[] paramArrayOfDouble)
    {
        int i = 0 + 1;
        this.mInstanceNum = ((int)paramArrayOfDouble[0]);
        int j = i + 1;
        this.mAmp = paramArrayOfDouble[i];
        int k = j + 1;
        this.mSpeed = paramArrayOfDouble[j];
        int m = k + 1;
        this.mRev_DPS = paramArrayOfDouble[k];
        int n = m + 1;
        this.mAvrgRev_DPS = paramArrayOfDouble[m];
        int i1 = n + 1;
        this.mPMRevXYZAvedevLP = paramArrayOfDouble[n];
        int i2 = i1 + 1;
        this.mPAType = ((int)paramArrayOfDouble[i1]);
        int i3 = i2 + 1;
        this.mSignedAmp = paramArrayOfDouble[i2];
        int i4 = i3 + 1;
        this.mSignedCAmp = paramArrayOfDouble[i3];
        int i5 = i4 + 1;
        this.mType = ((int)paramArrayOfDouble[i4]);
        int i6 = i5 + 1;
        this.mStability = paramArrayOfDouble[i5];
        int i7 = i6 + 1;
        this.mTDistLP = paramArrayOfDouble[i6];
        int i8 = i7 + 1;
        this.mRealAngle = paramArrayOfDouble[i7];
        (i8 + 1);
        this.mRealAngle_ = paramArrayOfDouble[i8];
    }

    public double getAmp()
    {
        return this.mAmp;
    }

    public double getAvrgRev_DPS()
    {
        return this.mAvrgRev_DPS;
    }

    public int getInstanceNum()
    {
        return this.mInstanceNum;
    }

    public int getPAType()
    {
        return this.mPAType;
    }

    public double getPMRevXYZAvedevLP()
    {
        return this.mPMRevXYZAvedevLP;
    }

    public double getRealAngle()
    {
        return this.mRealAngle;
    }

    public double getRealAngle_()
    {
        return this.mRealAngle_;
    }

    public double getRev_DPS()
    {
        return this.mRev_DPS;
    }

    public double getSignedAmp()
    {
        return this.mSignedAmp;
    }

    public double getSignedCAmp()
    {
        return this.mSignedCAmp;
    }

    public double getSpeed()
    {
        return this.mSpeed;
    }

    public double getStability()
    {
        return this.mStability;
    }

    public double getTDistLP()
    {
        return this.mTDistLP;
    }

    public double getType()
    {
        return this.mType;
    }
}