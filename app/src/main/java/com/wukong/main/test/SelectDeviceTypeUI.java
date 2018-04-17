package com.wukong.main.test;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.adapters.DeviceTypeAdapters;
import com.wukong.main.beans.DeviceTypesBean;
import com.wukong.main.beans.JsonData;
import com.wukong.main.beans.TypeDataBean;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.UrlConfig;
import java.util.ArrayList;
import java.util.List;

public class SelectDeviceTypeUI extends Activity
{
    private static final String TAG = "SelectDeviceTypeUI";
    private DeviceTypeAdapters mAdapters;
    private List<DeviceTypesBean> mList;
    private ListView mListview;

    private void getEquipTypes()
    {
        String str1 = Commons.getTime();
        String str2 = Commons.sign(new Object[] { str1 });
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("time", str1);
        localRequestParams.addQueryStringParameter("sign", str2);
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.getEquipTypes, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                Log.i("SelectDeviceTypeUI", "getEquipTypes onSuccess" + (String)paramAnonymousResponseInfo.result);
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                if (localJsonData.getCode().equals(Configs.isSuccess))
                {
                    TypeDataBean localTypeDataBean = (TypeDataBean)JSONObject.parseObject(localJsonData.getData(), TypeDataBean.class);
                    SelectDeviceTypeUI.access$002(SelectDeviceTypeUI.this, JSONArray.parseArray(localTypeDataBean.getEquipTypes(), DeviceTypesBean.class));
                    LOG.i("size = " + SelectDeviceTypeUI.this.mList.size());
                    SelectDeviceTypeUI.access$102(SelectDeviceTypeUI.this, new DeviceTypeAdapters(SelectDeviceTypeUI.this.getApplicationContext(), SelectDeviceTypeUI.this.mList));
                    SelectDeviceTypeUI.this.mListview.setAdapter(SelectDeviceTypeUI.this.mAdapters);
                }
            }
        });
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(2130968629);
        this.mListview = ((ListView)findViewById(2131558572));
        this.mList = new ArrayList();
        this.mListview.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
            public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
                DeviceTypesBean localDeviceTypesBean = (DeviceTypesBean)SelectDeviceTypeUI.this.mList.get(paramAnonymousInt);
                Intent localIntent = new Intent(SelectDeviceTypeUI.this, TuneMotionDeviceParams.class);
                localIntent.putExtra("equipTypesBean_name", localDeviceTypesBean.getName());
                localIntent.putExtra("equipTypesBean_code", localDeviceTypesBean.getEquipTypeCode());
                SelectDeviceTypeUI.this.startActivity(localIntent);
            }
        });
        getEquipTypes();
    }
}