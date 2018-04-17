package com.wukong.main.beans;

import android.bluetooth.BluetoothDevice;
import android.util.SparseArray;

public class CommonDevicesBean
{
    private static String DEFAULT_ID_NAME;
    private static String DEFAULT_NAME;
    private static String IMG_qxt_default;
    private static SparseArray<String[]> SA_TYPE_NAME;
    private static String TAG = "CommonDevicesBean";
    private String mDeviceName1st = DEFAULT_NAME;
    private String mDeviceName2nd = DEFAULT_NAME;
    private boolean mIdRssiUpdated;
    private String mIdSensorAddress;
    private long mIdSensorLatestTimeStamp;
    private String mIdSensorName = DEFAULT_ID_NAME;
    private int mIdSensorRssi;
    private String mImgUrl;
    private String mMotionAddr1st;
    private String mMotionAddr2nd;
    private BluetoothDevice mMotionDevice1st;
    private BluetoothDevice mMotionDevice2nd;
    private double[] mMotionUParams;
    private double mRssiInstantLP;
    private String mTagCode;
    private int mTypeCode;
    private String mWeightAddr;
    private BluetoothDevice mWeightDevice;

    static
    {
        DEFAULT_NAME = "智能器械";
        DEFAULT_ID_NAME = "智能识别";
        IMG_qxt_default = String.valueOf(2130903266);
        SA_TYPE_NAME = new SparseArray();
        SparseArray localSparseArray1 = SA_TYPE_NAME;
        String[] arrayOfString1 = new String[3];
        arrayOfString1[0] = "卧式屈腿";
        arrayOfString1[1] = "WQT";
        arrayOfString1[2] = String.valueOf(2130903204);
        localSparseArray1.put(901100001, arrayOfString1);
        SparseArray localSparseArray2 = SA_TYPE_NAME;
        String[] arrayOfString2 = new String[3];
        arrayOfString2[0] = "坐姿伸腿";
        arrayOfString2[1] = "ZST";
        arrayOfString2[2] = String.valueOf(2130903195);
        localSparseArray2.put(901100002, arrayOfString2);
        SparseArray localSparseArray3 = SA_TYPE_NAME;
        String[] arrayOfString3 = new String[3];
        arrayOfString3[0] = "腹部前屈";
        arrayOfString3[1] = "FQQ";
        arrayOfString3[2] = String.valueOf(2130903201);
        localSparseArray3.put(901100003, arrayOfString3);
        SparseArray localSparseArray4 = SA_TYPE_NAME;
        String[] arrayOfString4 = new String[3];
        arrayOfString4[0] = "二头肌";
        arrayOfString4[1] = "ETJ";
        arrayOfString4[2] = String.valueOf(2130903200);
        localSparseArray4.put(901100004, arrayOfString4);
        SparseArray localSparseArray5 = SA_TYPE_NAME;
        String[] arrayOfString5 = new String[3];
        arrayOfString5[0] = "三头肌 ";
        arrayOfString5[1] = "STJ";
        arrayOfString5[2] = String.valueOf(2130903198);
        localSparseArray5.put(901100005, arrayOfString5);
        SparseArray localSparseArray6 = SA_TYPE_NAME;
        String[] arrayOfString6 = new String[3];
        arrayOfString6[0] = "跑步机";
        arrayOfString6[1] = "PBJ";
        arrayOfString6[2] = String.valueOf(2130903206);
        localSparseArray6.put(901300001, arrayOfString6);
        SparseArray localSparseArray7 = SA_TYPE_NAME;
        String[] arrayOfString7 = new String[3];
        arrayOfString7[0] = "椭圆机";
        arrayOfString7[1] = "TYJ";
        arrayOfString7[2] = String.valueOf(2130903207);
        localSparseArray7.put(901300002, arrayOfString7);
        SparseArray localSparseArray8 = SA_TYPE_NAME;
        String[] arrayOfString8 = new String[3];
        arrayOfString8[0] = "动感单车";
        arrayOfString8[1] = "DGC";
        arrayOfString8[2] = String.valueOf(2130903194);
        localSparseArray8.put(901300003, arrayOfString8);
        SparseArray localSparseArray9 = SA_TYPE_NAME;
        String[] arrayOfString9 = new String[3];
        arrayOfString9[0] = "坐姿推肩";
        arrayOfString9[1] = "ZTJ";
        arrayOfString9[2] = String.valueOf(2130903197);
        localSparseArray9.put(901100006, arrayOfString9);
        SparseArray localSparseArray10 = SA_TYPE_NAME;
        String[] arrayOfString10 = new String[3];
        arrayOfString10[0] = "倒立";
        arrayOfString10[1] = "DLJ";
        arrayOfString10[2] = String.valueOf(2130903209);
        localSparseArray10.put(901106001, arrayOfString10);
        SparseArray localSparseArray11 = SA_TYPE_NAME;
        String[] arrayOfString11 = new String[3];
        arrayOfString11[0] = "低拉";
        arrayOfString11[1] = "TLQ";
        arrayOfString11[2] = String.valueOf(2130903208);
        localSparseArray11.put(901100007, arrayOfString11);
        SparseArray localSparseArray12 = SA_TYPE_NAME;
        String[] arrayOfString12 = new String[3];
        arrayOfString12[0] = "高拉";
        arrayOfString12[1] = "GLQ";
        arrayOfString12[2] = String.valueOf(2130903196);
        localSparseArray12.put(901100008, arrayOfString12);
        SparseArray localSparseArray13 = SA_TYPE_NAME;
        String[] arrayOfString13 = new String[3];
        arrayOfString13[0] = "坐姿划船";
        arrayOfString13[1] = "ZHC";
        arrayOfString13[2] = String.valueOf(2130903205);
        localSparseArray13.put(901100009, arrayOfString13);
        SparseArray localSparseArray14 = SA_TYPE_NAME;
        String[] arrayOfString14 = new String[3];
        arrayOfString14[0] = "转体";
        arrayOfString14[1] = "ZTQ";
        arrayOfString14[2] = String.valueOf(2130903199);
        localSparseArray14.put(901100010, arrayOfString14);
        SparseArray localSparseArray15 = SA_TYPE_NAME;
        String[] arrayOfString15 = new String[3];
        arrayOfString15[0] = "蝴蝶夹胸";
        arrayOfString15[1] = "HDX";
        arrayOfString15[2] = String.valueOf(2130903203);
        localSparseArray15.put(901100011, arrayOfString15);
        SparseArray localSparseArray16 = SA_TYPE_NAME;
        String[] arrayOfString16 = new String[3];
        arrayOfString16[0] = "高拉训练器";
        arrayOfString16[1] = "GLQ";
        arrayOfString16[2] = String.valueOf(2130903196);
        localSparseArray16.put(801100008, arrayOfString16);
        SparseArray localSparseArray17 = SA_TYPE_NAME;
        String[] arrayOfString17 = new String[3];
        arrayOfString17[0] = "推胸训练器";
        arrayOfString17[1] = "GLQ";
        arrayOfString17[2] = String.valueOf(2130903196);
        localSparseArray17.put(801100012, arrayOfString17);
        SparseArray localSparseArray18 = SA_TYPE_NAME;
        String[] arrayOfString18 = new String[3];
        arrayOfString18[0] = "太极揉推器";
        arrayOfString18[1] = "TJR";
        arrayOfString18[2] = String.valueOf(2130903182);
        localSparseArray18.put(100300001, arrayOfString18);
        SparseArray localSparseArray19 = SA_TYPE_NAME;
        String[] arrayOfString19 = new String[3];
        arrayOfString19[0] = "直立健身车";
        arrayOfString19[1] = "ZLJ";
        arrayOfString19[2] = String.valueOf(2130903183);
        localSparseArray19.put(100300002, arrayOfString19);
        SparseArray localSparseArray20 = SA_TYPE_NAME;
        String[] arrayOfString20 = new String[3];
        arrayOfString20[0] = "椭圆机";
        arrayOfString20[1] = "TYJ";
        arrayOfString20[2] = String.valueOf(2130903184);
        localSparseArray20.put(100300003, arrayOfString20);
        SparseArray localSparseArray21 = SA_TYPE_NAME;
        String[] arrayOfString21 = new String[3];
        arrayOfString21[0] = "扭腰训练器";
        arrayOfString21[1] = "NYQ";
        arrayOfString21[2] = String.valueOf(2130903174);
        localSparseArray21.put(100200001, arrayOfString21);
        SparseArray localSparseArray22 = SA_TYPE_NAME;
        String[] arrayOfString22 = new String[3];
        arrayOfString22[0] = "上肢牵引器";
        arrayOfString22[1] = "QYQ";
        arrayOfString22[2] = String.valueOf(2130903179);
        localSparseArray22.put(100200002, arrayOfString22);
        SparseArray localSparseArray23 = SA_TYPE_NAME;
        String[] arrayOfString23 = new String[3];
        arrayOfString23[0] = "太空漫步机";
        arrayOfString23[1] = "MBJ";
        arrayOfString23[2] = String.valueOf(2130903180);
        localSparseArray23.put(100200003, arrayOfString23);
        SparseArray localSparseArray24 = SA_TYPE_NAME;
        String[] arrayOfString24 = new String[3];
        arrayOfString24[0] = "钟摆器";
        arrayOfString24[1] = "ZBQ";
        arrayOfString24[2] = String.valueOf(2130903181);
        localSparseArray24.put(100200004, arrayOfString24);
        SparseArray localSparseArray25 = SA_TYPE_NAME;
        String[] arrayOfString25 = new String[3];
        arrayOfString25[0] = "平步训练器";
        arrayOfString25[1] = "ZBQ";
        arrayOfString25[2] = String.valueOf(2130903181);
        localSparseArray25.put(100200005, arrayOfString25);
        SparseArray localSparseArray26 = SA_TYPE_NAME;
        String[] arrayOfString26 = new String[3];
        arrayOfString26[0] = "跷跷板";
        arrayOfString26[1] = "ZBQ";
        arrayOfString26[2] = String.valueOf(2130903181);
        localSparseArray26.put(100200006, arrayOfString26);
        SparseArray localSparseArray27 = SA_TYPE_NAME;
        String[] arrayOfString27 = new String[3];
        arrayOfString27[0] = "下拉训练器";
        arrayOfString27[1] = "XLQ";
        arrayOfString27[2] = String.valueOf(2130903166);
        localSparseArray27.put(100100001, arrayOfString27);
        SparseArray localSparseArray28 = SA_TYPE_NAME;
        String[] arrayOfString28 = new String[3];
        arrayOfString28[0] = "前推训练器";
        arrayOfString28[1] = "QTQ";
        arrayOfString28[2] = String.valueOf(2130903167);
        localSparseArray28.put(100100002, arrayOfString28);
        SparseArray localSparseArray29 = SA_TYPE_NAME;
        String[] arrayOfString29 = new String[3];
        arrayOfString29[0] = "深蹲训练器";
        arrayOfString29[1] = "SDQ";
        arrayOfString29[2] = String.valueOf(2130903168);
        localSparseArray29.put(100100003, arrayOfString29);
        SparseArray localSparseArray30 = SA_TYPE_NAME;
        String[] arrayOfString30 = new String[3];
        arrayOfString30[0] = "引体向上训练器";
        arrayOfString30[1] = "YTS";
        arrayOfString30[2] = String.valueOf(2130903169);
        localSparseArray30.put(100100004, arrayOfString30);
        SparseArray localSparseArray31 = SA_TYPE_NAME;
        String[] arrayOfString31 = new String[3];
        arrayOfString31[0] = "腹背肌训练器";
        arrayOfString31[1] = "FBJ";
        arrayOfString31[2] = String.valueOf(2130903170);
        localSparseArray31.put(100100005, arrayOfString31);
        SparseArray localSparseArray32 = SA_TYPE_NAME;
        String[] arrayOfString32 = new String[3];
        arrayOfString32[0] = "胸肌训练器";
        arrayOfString32[1] = "XJQ";
        arrayOfString32[2] = String.valueOf(2130903171);
        localSparseArray32.put(100100006, arrayOfString32);
        SparseArray localSparseArray33 = SA_TYPE_NAME;
        String[] arrayOfString33 = new String[3];
        arrayOfString33[0] = "蹬力训练器";
        arrayOfString33[1] = "DLQ";
        arrayOfString33[2] = String.valueOf(2130903172);
        localSparseArray33.put(100100007, arrayOfString33);
        SparseArray localSparseArray34 = SA_TYPE_NAME;
        String[] arrayOfString34 = new String[3];
        arrayOfString34[0] = "划船器";
        arrayOfString34[1] = "HCQ";
        arrayOfString34[2] = String.valueOf(2130903173);
        localSparseArray34.put(100100008, arrayOfString34);
        SparseArray localSparseArray35 = SA_TYPE_NAME;
        String[] arrayOfString35 = new String[3];
        arrayOfString35[0] = "坐拉器";
        arrayOfString35[1] = "ZLQ";
        arrayOfString35[2] = IMG_qxt_default;
        localSparseArray35.put(100100009, arrayOfString35);
        SparseArray localSparseArray36 = SA_TYPE_NAME;
        String[] arrayOfString36 = new String[3];
        arrayOfString36[0] = "坐推器";
        arrayOfString36[1] = "ZTQ";
        arrayOfString36[2] = String.valueOf(2130903176);
        localSparseArray36.put(100100010, arrayOfString36);
        SparseArray localSparseArray37 = SA_TYPE_NAME;
        String[] arrayOfString37 = new String[3];
        arrayOfString37[0] = "深蹲训练器";
        arrayOfString37[1] = "SDQ";
        arrayOfString37[2] = IMG_qxt_default;
        localSparseArray37.put(100100013, arrayOfString37);
        SparseArray localSparseArray38 = SA_TYPE_NAME;
        String[] arrayOfString38 = new String[3];
        arrayOfString38[0] = "蹬力训练器";
        arrayOfString38[1] = "DLQ";
        arrayOfString38[2] = IMG_qxt_default;
        localSparseArray38.put(100100017, arrayOfString38);
        SparseArray localSparseArray39 = SA_TYPE_NAME;
        String[] arrayOfString39 = new String[3];
        arrayOfString39[0] = "划船器";
        arrayOfString39[1] = "HCQ";
        arrayOfString39[2] = String.valueOf(2130903177);
        localSparseArray39.put(100100018, arrayOfString39);
        SparseArray localSparseArray40 = SA_TYPE_NAME;
        String[] arrayOfString40 = new String[3];
        arrayOfString40[0] = "坐拉器";
        arrayOfString40[1] = "ZLQ";
        arrayOfString40[2] = IMG_qxt_default;
        localSparseArray40.put(100100019, arrayOfString40);
        SparseArray localSparseArray41 = SA_TYPE_NAME;
        String[] arrayOfString41 = new String[3];
        arrayOfString41[0] = "健骑机";
        arrayOfString41[1] = "JQJ";
        arrayOfString41[2] = IMG_qxt_default;
        localSparseArray41.put(100100012, arrayOfString41);
        SparseArray localSparseArray42 = SA_TYPE_NAME;
        String[] arrayOfString42 = new String[3];
        arrayOfString42[0] = "坐蹬器";
        arrayOfString42[1] = "ZDQ";
        arrayOfString42[2] = IMG_qxt_default;
        localSparseArray42.put(100100029, arrayOfString42);
        SparseArray localSparseArray43 = SA_TYPE_NAME;
        String[] arrayOfString43 = new String[3];
        arrayOfString43[0] = "健腹轮";
        arrayOfString43[1] = "JFL";
        arrayOfString43[2] = String.valueOf(2130903165);
        localSparseArray43.put(100180001, arrayOfString43);
        SparseArray localSparseArray44 = SA_TYPE_NAME;
        String[] arrayOfString44 = new String[3];
        arrayOfString44[0] = "太极揉推器";
        arrayOfString44[1] = "TJR";
        arrayOfString44[2] = String.valueOf(2130903082);
        localSparseArray44.put(100301001, arrayOfString44);
        SparseArray localSparseArray45 = SA_TYPE_NAME;
        String[] arrayOfString45 = new String[3];
        arrayOfString45[0] = "直立健身车";
        arrayOfString45[1] = "ZLJ";
        arrayOfString45[2] = String.valueOf(2130903074);
        localSparseArray45.put(100301002, arrayOfString45);
        SparseArray localSparseArray46 = SA_TYPE_NAME;
        String[] arrayOfString46 = new String[3];
        arrayOfString46[0] = "椭圆机";
        arrayOfString46[1] = "TYJ";
        arrayOfString46[2] = String.valueOf(2130903063);
        localSparseArray46.put(100301003, arrayOfString46);
        SparseArray localSparseArray47 = SA_TYPE_NAME;
        String[] arrayOfString47 = new String[3];
        arrayOfString47[0] = "转腰器";
        arrayOfString47[1] = "ZYQ";
        arrayOfString47[2] = String.valueOf(2130903078);
        localSparseArray47.put(100201001, arrayOfString47);
        SparseArray localSparseArray48 = SA_TYPE_NAME;
        String[] arrayOfString48 = new String[3];
        arrayOfString48[0] = "上肢牵引器";
        arrayOfString48[1] = "QYQ";
        arrayOfString48[2] = String.valueOf(2130903070);
        localSparseArray48.put(100201002, arrayOfString48);
        SparseArray localSparseArray49 = SA_TYPE_NAME;
        String[] arrayOfString49 = new String[3];
        arrayOfString49[0] = "太空漫步机";
        arrayOfString49[1] = "MBJ";
        arrayOfString49[2] = String.valueOf(2130903068);
        localSparseArray49.put(100201003, arrayOfString49);
        SparseArray localSparseArray50 = SA_TYPE_NAME;
        String[] arrayOfString50 = new String[3];
        arrayOfString50[0] = "钟摆器";
        arrayOfString50[1] = "ZBQ";
        arrayOfString50[2] = String.valueOf(2130903076);
        localSparseArray50.put(100201004, arrayOfString50);
        SparseArray localSparseArray51 = SA_TYPE_NAME;
        String[] arrayOfString51 = new String[3];
        arrayOfString51[0] = "平步机";
        arrayOfString51[1] = "PBJ";
        arrayOfString51[2] = String.valueOf(2130903080);
        localSparseArray51.put(100201005, arrayOfString51);
        SparseArray localSparseArray52 = SA_TYPE_NAME;
        String[] arrayOfString52 = new String[3];
        arrayOfString52[0] = "跷跷板";
        arrayOfString52[1] = "QQB";
        arrayOfString52[2] = String.valueOf(2130903065);
        localSparseArray52.put(100201006, arrayOfString52);
        SparseArray localSparseArray53 = SA_TYPE_NAME;
        String[] arrayOfString53 = new String[3];
        arrayOfString53[0] = "坐推器";
        arrayOfString53[1] = "ZTQ";
        arrayOfString53[2] = String.valueOf(2130903059);
        localSparseArray53.put(100101010, arrayOfString53);
        SparseArray localSparseArray54 = SA_TYPE_NAME;
        String[] arrayOfString54 = new String[3];
        arrayOfString54[0] = "划船器";
        arrayOfString54[1] = "HCQ";
        arrayOfString54[2] = String.valueOf(2130903072);
        localSparseArray54.put(100101018, arrayOfString54);
        SparseArray localSparseArray55 = SA_TYPE_NAME;
        String[] arrayOfString55 = new String[3];
        arrayOfString55[0] = "健骑机";
        arrayOfString55[1] = "JQJ";
        arrayOfString55[2] = String.valueOf(2130903058);
        localSparseArray55.put(100101012, arrayOfString55);
        SparseArray localSparseArray56 = SA_TYPE_NAME;
        String[] arrayOfString56 = new String[3];
        arrayOfString56[0] = "坐蹬器";
        arrayOfString56[1] = "ZDQ";
        arrayOfString56[2] = String.valueOf(2130903061);
        localSparseArray56.put(100101029, arrayOfString56);
    }

    public CommonDevicesBean(int paramInt, String paramString)
    {
        this.mMotionAddr1st = paramString;
        this.mTypeCode = paramInt;
        if ((paramString != null) && (paramString.length() > 4))
            this.mTagCode = (paramString.charAt(-4 + paramString.length()) + paramString.substring(-2 + paramString.length(), paramString.length()));
    }

    public CommonDevicesBean(int paramInt, String paramString1, String paramString2)
    {
        this.mMotionAddr1st = paramString1;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString2;
    }

    public CommonDevicesBean(int paramInt, String paramString1, String paramString2, String paramString3)
    {
        this.mMotionAddr1st = paramString1;
        this.mMotionAddr2nd = paramString2;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString3;
    }

    public CommonDevicesBean(int paramInt, String paramString1, String paramString2, double[] paramArrayOfDouble)
    {
        this.mMotionAddr1st = paramString1;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString2;
        this.mMotionUParams = paramArrayOfDouble;
    }

    public CommonDevicesBean(String paramString1, int paramInt, String paramString2, String paramString3)
    {
        this.mWeightAddr = paramString1;
        this.mMotionAddr1st = paramString2;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString3;
    }

    public CommonDevicesBean(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4)
    {
        this.mWeightAddr = paramString1;
        this.mMotionAddr1st = paramString2;
        this.mMotionAddr2nd = paramString3;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString4;
    }

    public CommonDevicesBean(String paramString1, int paramInt, String paramString2, String paramString3, double[] paramArrayOfDouble)
    {
        this.mWeightAddr = paramString1;
        this.mMotionAddr1st = paramString2;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString3;
        this.mMotionUParams = paramArrayOfDouble;
    }

    public CommonDevicesBean(String paramString1, String paramString2, int paramInt, String paramString3)
    {
        this.mMotionAddr1st = paramString1;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString2;
        this.mIdSensorAddress = paramString3;
    }

    public CommonDevicesBean(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4)
    {
        this.mMotionAddr1st = paramString1;
        this.mMotionAddr2nd = paramString2;
        this.mTypeCode = paramInt;
        this.mTagCode = paramString3;
        this.mIdSensorAddress = paramString4;
    }

    public static String GetBLEName(int paramInt)
    {
        if (SA_TYPE_NAME.get(paramInt) != null)
            return ((String[])SA_TYPE_NAME.get(paramInt))[0];
        return DEFAULT_NAME;
    }

    public static String GetImgUrl(int paramInt)
    {
        if (SA_TYPE_NAME.get(paramInt) != null)
            return ((String[])SA_TYPE_NAME.get(paramInt))[2];
        return IMG_qxt_default;
    }

    public String getDeviceName2nd()
    {
        return this.mDeviceName2nd;
    }

    public String getIdSensorAddress()
    {
        return this.mIdSensorAddress;
    }

    public long getIdSensorLatestTimeStamp()
    {
        return this.mIdSensorLatestTimeStamp;
    }

    public int getIdSensorRssi()
    {
        return this.mIdSensorRssi;
    }

    public String getImgUrl()
    {
        if (this.mImgUrl != null)
            return this.mImgUrl;
        if (SA_TYPE_NAME.get(this.mTypeCode) != null)
            return ((String[])SA_TYPE_NAME.get(this.mTypeCode))[2];
        return IMG_qxt_default;
    }

    public String getMotionAddr1st()
    {
        return this.mMotionAddr1st;
    }

    public String getMotionAddr2nd()
    {
        return this.mMotionAddr2nd;
    }

    public BluetoothDevice getMotionDevice1st()
    {
        return this.mMotionDevice1st;
    }

    public BluetoothDevice getMotionDevice2nd()
    {
        return this.mMotionDevice2nd;
    }

    public String getMotionName1st()
    {
        if (((this.mDeviceName1st == null) || (this.mDeviceName1st.equals(DEFAULT_NAME))) && (SA_TYPE_NAME.get(this.mTypeCode) != null))
            return ((String[])SA_TYPE_NAME.get(this.mTypeCode))[0];
        return this.mDeviceName1st;
    }

    public double[] getMotionUParams()
    {
        return this.mMotionUParams;
    }

    public double getRssiInstantLP()
    {
        return this.mRssiInstantLP;
    }

    public String getTagCode()
    {
        if (SA_TYPE_NAME.get(this.mTypeCode) != null)
        {
            String str = ((String[])SA_TYPE_NAME.get(this.mTypeCode))[1];
            if (this.mTagCode != null)
            {
                if (str == null)
                    str = this.mTagCode;
            }
            else
                return str;
            if (this.mTagCode.startsWith(str))
                return this.mTagCode;
            return str.concat("-").concat(this.mTagCode);
        }
        return this.mTagCode;
    }

    public int getTypeCode()
    {
        return this.mTypeCode;
    }

    public String getWeightAddr()
    {
        return this.mWeightAddr;
    }

    public BluetoothDevice getWeightDevice()
    {
        return this.mWeightDevice;
    }

    public boolean isRssiUpdated()
    {
        return this.mIdRssiUpdated;
    }

    public void setDeviceName1st(String paramString)
    {
        this.mDeviceName1st = paramString;
    }

    public void setDeviceName2nd(String paramString)
    {
        this.mDeviceName2nd = paramString;
    }

    public void setIdRssiUpdated(boolean paramBoolean)
    {
        this.mIdRssiUpdated = paramBoolean;
    }

    public void setIdSensorAddress(String paramString)
    {
        this.mIdSensorAddress = paramString;
    }

    public void setIdSensorLatestTimeStamp(long paramLong)
    {
        this.mIdSensorLatestTimeStamp = paramLong;
    }

    public void setIdSensorRssi(int paramInt)
    {
        this.mIdSensorRssi = paramInt;
    }

    public void setImgUrl(String paramString)
    {
        this.mImgUrl = paramString;
    }

    public void setMotionAddr1st(String paramString)
    {
        this.mMotionAddr1st = paramString;
    }

    public void setMotionAddr2nd(String paramString)
    {
        this.mMotionAddr2nd = paramString;
    }

    public void setMotionDevice1st(BluetoothDevice paramBluetoothDevice)
    {
        this.mMotionDevice1st = paramBluetoothDevice;
    }

    public void setMotionDevice2nd(BluetoothDevice paramBluetoothDevice)
    {
        this.mMotionDevice2nd = paramBluetoothDevice;
    }

    public void setMotionUParams(double[] paramArrayOfDouble)
    {
        this.mMotionUParams = paramArrayOfDouble;
    }

    public void setRssiInstantLP(double paramDouble)
    {
        this.mRssiInstantLP = paramDouble;
    }

    public void setTagCode(String paramString)
    {
        this.mTagCode = paramString;
    }

    public void setTypeCode(int paramInt)
    {
        this.mTypeCode = paramInt;
    }

    public void setWeightDevice(BluetoothDevice paramBluetoothDevice)
    {
        this.mWeightDevice = paramBluetoothDevice;
    }
}