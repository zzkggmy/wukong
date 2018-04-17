package com.wukong.main.beans;

public class SmartPathDevice
{
    public static final int PATH_TYPE1 = 1001;
    public static final int PATH_TYPE2 = 1002;
    public static final int SIGNAL_MIN = -135;
    private int mDistancePerCircle_m;
    private int mImgSourceId;
    private long mLatestTimeStamp;
    private float mMapX;
    private float mMapY;
    private int mMaxOrder;
    private int mNextSensorDistance_m;
    private int mOrder;
    private String mPackageId;
    private String mPathName;
    private String mPathSensorAddress;
    private String mPathSensorName;
    private double mPathSensorRssiInstantLP = -135.0D;
    private int mPathType;
    private double mScale;
    private boolean mUpdated = false;

    public SmartPathDevice(String paramString1, String paramString2, int paramInt1, float paramFloat1, float paramFloat2, int paramInt2, String paramString3, int paramInt3, int paramInt4, double paramDouble, int paramInt5)
    {
        this.mPathSensorName = paramString1;
        this.mPathSensorAddress = paramString2;
        this.mNextSensorDistance_m = paramInt1;
        this.mMapX = paramFloat1;
        this.mMapY = paramFloat2;
        this.mPathType = paramInt2;
        this.mPackageId = paramString3;
        this.mOrder = paramInt3;
        this.mMaxOrder = paramInt4;
        this.mScale = paramDouble;
        this.mDistancePerCircle_m = paramInt5;
    }

    public SmartPathDevice(String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString4)
    {
        this.mPathSensorName = paramString1;
        this.mPathSensorAddress = paramString2;
        this.mNextSensorDistance_m = paramInt1;
        this.mPackageId = paramString3;
        this.mOrder = paramInt2;
        this.mMaxOrder = paramInt3;
        this.mDistancePerCircle_m = paramInt4;
        this.mPathType = 1001;
        this.mImgSourceId = paramInt5;
        this.mPathName = paramString4;
    }

    public int getDistancePerCircle_m()
    {
        return this.mDistancePerCircle_m;
    }

    public int getImgSourceId()
    {
        return this.mImgSourceId;
    }

    public long getLatestTimeStamp()
    {
        return this.mLatestTimeStamp;
    }

    public float getMapX()
    {
        return this.mMapX;
    }

    public float getMapY()
    {
        return this.mMapY;
    }

    public int getMaxOrder()
    {
        return this.mMaxOrder;
    }

    public int getNextSensorDistance_m()
    {
        return this.mNextSensorDistance_m;
    }

    public int getOrder()
    {
        return this.mOrder;
    }

    public String getPackageId()
    {
        return this.mPackageId;
    }

    public String getPathName()
    {
        return this.mPathName;
    }

    public String getPathSensorAddress()
    {
        return this.mPathSensorAddress;
    }

    public String getPathSensorName()
    {
        return this.mPathSensorName;
    }

    public double getPathSensorRssiInstantLP()
    {
        return this.mPathSensorRssiInstantLP;
    }

    public int getPathType()
    {
        return this.mPathType;
    }

    public double getScale()
    {
        return this.mScale;
    }

    public boolean isUpdated()
    {
        return this.mUpdated;
    }

    public void setDistancePerCircle_m(int paramInt)
    {
        this.mDistancePerCircle_m = paramInt;
    }

    public void setImgSourceId(int paramInt)
    {
        this.mImgSourceId = paramInt;
    }

    public void setLatestTimeStamp(long paramLong)
    {
        this.mLatestTimeStamp = paramLong;
    }

    public void setMapX(float paramFloat)
    {
        this.mMapX = paramFloat;
    }

    public void setMapY(float paramFloat)
    {
        this.mMapY = paramFloat;
    }

    public void setMaxOrder(int paramInt)
    {
        this.mMaxOrder = paramInt;
    }

    public void setNextSensorDistance_m(int paramInt)
    {
        this.mNextSensorDistance_m = paramInt;
    }

    public void setOrder(int paramInt)
    {
        this.mOrder = paramInt;
    }

    public void setPackageId(String paramString)
    {
        this.mPackageId = paramString;
    }

    public void setPathName(String paramString)
    {
        this.mPathName = paramString;
    }

    public void setPathSensorAddress(String paramString)
    {
        this.mPathSensorAddress = paramString;
    }

    public void setPathSensorName(String paramString)
    {
        this.mPathSensorName = paramString;
    }

    public void setPathSensorRssiInstantLP(double paramDouble)
    {
        this.mPathSensorRssiInstantLP = paramDouble;
    }

    public void setPathType(int paramInt)
    {
        this.mPathType = paramInt;
    }

    public void setScale(double paramDouble)
    {
        this.mScale = paramDouble;
    }

    public void setUpdated(boolean paramBoolean)
    {
        this.mUpdated = paramBoolean;
    }
}