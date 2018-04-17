package com.wukong.main.beans;

import android.util.Log;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.UrlConfig;
import java.util.ArrayList;
import java.util.List;

public class BLEDeviceTest
{
    public static final int SIGNAL_MIN = -135;
    private static final String TAG = "BLEDTstB";
    private static final int TEST_TYPE_CONN = 10002;
    private static final int TEST_TYPE_SIGNAL = 10001;
    private List<BLEDeviceBean> list;
    private int mCntOverN100 = 0;
    private int mCntOverN120 = 0;
    private int mCntOverN60 = 0;
    private int mCntOverN80 = 0;
    public int mCntValid = 0;
    private int mConnRep;
    private String mConnResultStr = "";
    private int mConnT10s;
    private int mConnT1s;
    private int mConnT2s;
    private int mConnT3s;
    private int mConnT5s;
    private int mConnT7s;
    private int mConnTLess1s;
    private long mConnTimeSum = 0L;
    public int mCount = 0;
    private String mDeviceAddress;
    private String mDeviceName;
    private int mDeviceRssi;
    private double mDeviceRssiInstantLP = -135.0D;
    private long mDeviceTimeStamp;
    private long mDisconnTimeSum = 0L;
    private int mMisCnt10Sec = 0;
    private int mMisCnt1Sec = 0;
    private int mMisCnt20Min = 0;
    private int mMisCnt2Sec = 0;
    private int mMisCnt30Sec = 0;
    private int mMisCnt5Min = 0;
    private int mMisCnt5Sec = 0;
    private int mMisCntLess1Sec = 0;
    private long mRssiSqureSumValid;
    private long mRssiSumValid;
    private String mSignalResultStr = "";
    private long mStartDeviceTimeStamp;
    private boolean mUpdated = false;
    private int mdisconnT0_2s;
    private int mdisconnT1s;
    private int mdisconnTLess0_2s;

    public BLEDeviceTest(String paramString1, String paramString2, int paramInt, long paramLong)
    {
        this.mDeviceName = paramString1;
        this.mDeviceAddress = paramString2;
        this.mDeviceRssi = paramInt;
        this.mDeviceRssiInstantLP = paramInt;
        this.mDeviceTimeStamp = paramLong;
        this.mStartDeviceTimeStamp = paramLong;
        this.list = new ArrayList();
    }

    private String getSensorList()
    {
        JSONArray localJSONArray = new JSONArray();
        for (int i = 1; i < this.list.size(); i++)
        {
            BLEDeviceBean localBLEDeviceBean = (BLEDeviceBean)this.list.get(i);
            JSONObject localJSONObject = new JSONObject();
            localJSONObject.put("btAddr", localBLEDeviceBean.getAddress());
            localJSONObject.put("mName", localBLEDeviceBean.getName());
            localJSONObject.put("mSignalLess1SecPct", localBLEDeviceBean.getSignalLess1SecPct());
            localJSONObject.put("mSignalScore", localBLEDeviceBean.getSignalScore());
            localJSONObject.put("mSignalTstCnt", localBLEDeviceBean.getSignalTstCnt());
            localJSONObject.put("mConnLess2SecPct", localBLEDeviceBean.getConnLess2SecPct());
            localJSONObject.put("mConnTstCnt", localBLEDeviceBean.getConnTstCnt());
            localJSONObject.put("mConnScore", localBLEDeviceBean.getConnScore());
            localJSONObject.put("mTestType", localBLEDeviceBean.getTestType());
            localJSONObject.put("mLastUpdateMilli", localBLEDeviceBean.getLastUpdateMilli());
            localJSONArray.add(localJSONObject);
        }
        return localJSONArray.toJSONString();
    }

    private void postBleSensor()
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("token", str);
        localRequestParams.addBodyParameter("sensors", getSensorList());
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.POSTSERSOR, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                if (localJsonData.getCode().equals("0"))
                {
                    LOG.i("上传完成");
                    return;
                }
                LOG.i("上传有问题 error code：" + localJsonData.getCode());
            }
        });
    }

    public String getConnResultString()
    {
        return this.mConnResultStr;
    }

    public double getConnScore()
    {
        if (this.mConnRep == 0)
            return -1.0D;
        double d1 = this.mConnRep;
        double d2 = this.mConnTLess1s;
        int i = 0 + 1;
        double d3 = d2 * Math.pow(16.0D, 0) / d1;
        double d4 = this.mConnT1s - this.mConnT2s;
        int j = i + 1;
        double d5 = d3 + d4 * Math.pow(16.0D, i) / d1;
        double d6 = this.mConnT2s - this.mConnT3s;
        int k = j + 1;
        double d7 = d5 + d6 * Math.pow(16.0D, j) / d1;
        double d8 = this.mConnT3s - this.mConnT5s;
        int m = k + 1;
        double d9 = d7 + d8 * Math.pow(16.0D, k) / d1;
        double d10 = this.mConnT5s - this.mConnT7s;
        int n = m + 1;
        double d11 = d9 + d10 * Math.pow(16.0D, m) / d1;
        double d12 = this.mConnT7s - this.mConnT10s;
        int i1 = n + 1;
        double d13 = d11 + d12 * Math.pow(16.0D, n) / d1;
        double d14 = this.mConnT10s;
        (i1 + 1);
        double d15 = d13 + d14 * Math.pow(16.0D, i1) / d1;
        double d16 = d15 / this.mConnRep;
        double d17 = this.mdisconnTLess0_2s;
        int i2 = 0 + 1;
        double d18 = d15 + d17 * Math.pow(25.0D, 0) / d1;
        double d19 = this.mdisconnT0_2s - this.mdisconnT1s;
        int i3 = i2 + 1;
        double d20 = d18 + d19 * Math.pow(25.0D, i2) / d1;
        double d21 = this.mdisconnT1s;
        (i3 + 1);
        double d22 = d20 + d21 * Math.pow(25.0D, i3) / d1;
        double d23 = getConnTimeSum() / d1;
        double d24 = getDisconnTimeSum() / d1;
        double d25 = d22 / this.mConnRep;
        this.mConnResultStr = (getDeviceName().substring(4, getDeviceName().length()) + "," + this.mConnTLess1s + "," + this.mConnT1s + "," + this.mConnT2s + "," + this.mConnT3s + "," + this.mConnT5s + "," + this.mConnT7s + "," + this.mConnT10s + "," + this.mdisconnTLess0_2s + "," + this.mdisconnT0_2s + "," + this.mdisconnT1s + "," + d23 + "," + d24 + "," + this.mConnRep + "," + d16 + "," + 10.0D * (d25 - d16) + "," + d25);
        Log.i("BLEDTstB", this.mConnResultStr);
        BLEDeviceBean localBLEDeviceBean = new BLEDeviceBean();
        localBLEDeviceBean.setName(getDeviceName());
        localBLEDeviceBean.setAddress(getDeviceAddress());
        localBLEDeviceBean.setConnLess2SecPct(String.valueOf(100 * (this.mConnTLess1s + this.mConnT1s - this.mConnT2s) / this.mConnRep));
        localBLEDeviceBean.setConnTstCnt(String.valueOf(this.mConnRep));
        localBLEDeviceBean.setConnScore(String.valueOf(d25));
        localBLEDeviceBean.setLastUpdateMilli(String.valueOf(System.currentTimeMillis()));
        localBLEDeviceBean.setTestType(String.valueOf(10002));
        return d23 + d24;
    }

    public long getConnTimeSum()
    {
        return this.mConnTimeSum;
    }

    public int getCount()
    {
        return this.mCount;
    }

    public String getDeviceAddress()
    {
        return this.mDeviceAddress;
    }

    public String getDeviceName()
    {
        return this.mDeviceName;
    }

    public int getDeviceRssi()
    {
        return this.mDeviceRssi;
    }

    public double getDeviceRssiInstantLP()
    {
        return this.mDeviceRssiInstantLP;
    }

    public long getDeviceTimeStamp()
    {
        return this.mDeviceTimeStamp;
    }

    public long getDisconnTimeSum()
    {
        return this.mDisconnTimeSum;
    }

    public double getSignalScore()
    {
        double d1 = this.mCount;
        double d2 = this.mMisCntLess1Sec;
        int i = 0 + 1;
        double d3 = d2 * Math.pow(16.0D, 0) / d1;
        double d4 = this.mMisCnt1Sec - this.mMisCnt2Sec;
        int j = i + 1;
        double d5 = d3 + d4 * Math.pow(16.0D, i) / d1;
        double d6 = this.mMisCnt2Sec - this.mMisCnt5Sec;
        int k = j + 1;
        double d7 = d5 + d6 * Math.pow(16.0D, j) / d1;
        double d8 = this.mMisCnt5Sec - this.mMisCnt10Sec;
        int m = k + 1;
        double d9 = d7 + d8 * Math.pow(16.0D, k) / d1;
        double d10 = this.mMisCnt10Sec - this.mMisCnt30Sec;
        int n = m + 1;
        double d11 = d9 + d10 * Math.pow(16.0D, m) / d1;
        double d12 = this.mMisCnt30Sec - this.mMisCnt5Min;
        int i1 = n + 1;
        double d13 = d11 + d12 * Math.pow(16.0D, n) / d1;
        double d14 = this.mMisCnt5Min - this.mMisCnt20Min;
        int i2 = i1 + 1;
        double d15 = d13 + d14 * Math.pow(16.0D, i1) / d1;
        double d16 = this.mMisCnt20Min;
        (i2 + 1);
        double d17 = d15 + d16 * Math.pow(16.0D, i2) / d1;
        double d18 = this.mCntOverN60;
        int i3 = 0 + 1;
        double d19 = d17 + d18 * Math.pow(2.0D, 0) / d1;
        double d20 = this.mCntOverN80 - this.mCntOverN60;
        int i4 = i3 + 1;
        double d21 = d19 + d20 * Math.pow(2.0D, i3) / d1;
        double d22 = this.mCntOverN100 - this.mCntOverN80;
        int i5 = i4 + 1;
        double d23 = d21 + d22 * Math.pow(2.0D, i4) / d1;
        double d24 = this.mCntOverN120 - this.mCntOverN100;
        int i6 = i5 + 1;
        double d25 = d23 + d24 * Math.pow(2.0D, i5) / d1;
        double d26 = d1 - this.mCntOverN120;
        (i6 + 1);
        double d27 = (d25 + d26 * Math.pow(2.0D, i6) / d1) / (d1 / 2000.0D);
        String str = String.valueOf(d27).substring(0, 2 + String.valueOf(d27).indexOf("."));
        this.mSignalResultStr = (getDeviceName().substring(4, getDeviceName().length()) + "," + this.mMisCntLess1Sec + "," + this.mMisCnt1Sec + "," + this.mMisCnt2Sec + "," + this.mMisCnt5Sec + "," + this.mMisCnt10Sec + "," + this.mMisCnt30Sec + "," + this.mMisCnt5Min + "," + this.mMisCnt20Min + "," + this.mCntOverN60 + "," + this.mCntOverN80 + "," + this.mCntOverN100 + "," + this.mCntOverN120 + "," + this.mCntValid + "," + this.mCount + "," + str);
        BLEDeviceBean localBLEDeviceBean = new BLEDeviceBean();
        localBLEDeviceBean.setName(getDeviceName());
        localBLEDeviceBean.setAddress(getDeviceAddress());
        localBLEDeviceBean.setSignallLess1SecPct(String.valueOf(100 * this.mMisCntLess1Sec / this.mCount));
        localBLEDeviceBean.setSignalTstCnt(String.valueOf(this.mCount));
        localBLEDeviceBean.setSignalScore(String.valueOf(d27));
        localBLEDeviceBean.setLastUpdateMilli(String.valueOf(System.currentTimeMillis()));
        localBLEDeviceBean.setTestType(String.valueOf(10001));
        this.list.add(localBLEDeviceBean);
        if (this.mConnRep > 0)
            Log.i("BLEDTstB", this.mSignalResultStr + " ,|| " + this.mConnResultStr);
        return d27;
    }

    public String getSinalResultString()
    {
        return this.mSignalResultStr;
    }

    public long getStartDeviceTimeStamp()
    {
        return this.mStartDeviceTimeStamp;
    }

    public double getSteadiness()
    {
        return Math.sqrt(this.mRssiSqureSumValid / this.mCount - this.mRssiSumValid * this.mRssiSumValid / this.mCount / this.mCount);
    }

    public boolean isUpdated()
    {
        return this.mUpdated;
    }

    public void setConnTime(long paramLong)
    {
        this.mConnTimeSum = (paramLong + this.mConnTimeSum);
        this.mConnRep = (1 + this.mConnRep);
        if (paramLong > 1000L)
        {
            this.mConnT1s = (1 + this.mConnT1s);
            if (paramLong > 2000L)
            {
                this.mConnT2s = (1 + this.mConnT2s);
                if (paramLong > 3000L)
                {
                    this.mConnT3s = (1 + this.mConnT3s);
                    if (paramLong > 5000L)
                    {
                        this.mConnT5s = (1 + this.mConnT5s);
                        if (paramLong > 7000L)
                        {
                            this.mConnT7s = (1 + this.mConnT7s);
                            if (paramLong > 10000L)
                                this.mConnT10s = (1 + this.mConnT10s);
                        }
                    }
                }
            }
            return;
        }
        this.mConnTLess1s = (1 + this.mConnTLess1s);
    }

    public void setCount(int paramInt)
    {
        this.mCount = paramInt;
    }

    public void setDeviceAddress(String paramString)
    {
        this.mDeviceAddress = paramString;
    }

    public void setDeviceName(String paramString)
    {
        this.mDeviceName = paramString;
    }

    public void setDeviceRssi(int paramInt)
    {
        this.mDeviceRssi = paramInt;
    }

    public void setDeviceRssiInstantLP(double paramDouble)
    {
        this.mDeviceRssiInstantLP = paramDouble;
        this.mRssiSumValid = (()(paramDouble + this.mRssiSumValid));
        this.mRssiSqureSumValid = (()(this.mRssiSqureSumValid + paramDouble * paramDouble));
        if (this.mDeviceRssiInstantLP > -120.0D)
        {
            this.mCntOverN120 = (1 + this.mCntOverN120);
            if (this.mDeviceRssiInstantLP > -100.0D)
            {
                this.mCntOverN100 = (1 + this.mCntOverN100);
                if (this.mDeviceRssiInstantLP > -80.0D)
                {
                    this.mCntOverN80 = (1 + this.mCntOverN80);
                    if (this.mDeviceRssiInstantLP > -60.0D)
                        this.mCntOverN60 = (1 + this.mCntOverN60);
                }
            }
        }
    }

    public void setDeviceTimeStamp(long paramLong)
    {
        this.mDeviceTimeStamp = paramLong;
    }

    public void setDisconnTime(long paramLong)
    {
        this.mDisconnTimeSum = (paramLong + this.mDisconnTimeSum);
        if (paramLong > 200L)
        {
            this.mdisconnT0_2s = (1 + this.mdisconnT0_2s);
            if (paramLong > 1000L)
                this.mdisconnT1s = (1 + this.mdisconnT1s);
            return;
        }
        this.mdisconnTLess0_2s = (1 + this.mdisconnTLess0_2s);
    }

    public void setSignalUpdateInterval(long paramLong)
    {
        if (paramLong > 1000L)
        {
            this.mMisCnt1Sec = (1 + this.mMisCnt1Sec);
            if (paramLong > 2000L)
            {
                this.mMisCnt2Sec = (1 + this.mMisCnt2Sec);
                if (paramLong > 5000L)
                {
                    this.mMisCnt5Sec = (1 + this.mMisCnt5Sec);
                    if (paramLong > 10000L)
                    {
                        this.mMisCnt10Sec = (1 + this.mMisCnt10Sec);
                        if (paramLong > 30000L)
                        {
                            this.mMisCnt30Sec = (1 + this.mMisCnt30Sec);
                            if (paramLong > 300000L)
                            {
                                this.mMisCnt5Min = (1 + this.mMisCnt5Min);
                                if (paramLong > 1200000L)
                                    this.mMisCnt20Min = (1 + this.mMisCnt20Min);
                            }
                        }
                    }
                }
            }
            return;
        }
        this.mMisCntLess1Sec = (1 + this.mMisCntLess1Sec);
    }

    public void setUpdated(boolean paramBoolean)
    {
        this.mUpdated = paramBoolean;
    }
}