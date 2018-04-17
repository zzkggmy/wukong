package com.wukong.main.barroute;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.alibaba.fastjson.JSONObject;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.base.BleProfileNonFuncActivity;
import com.wukong.main.beans.JsonData;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.main.utils.UrlConfig;

public class ShowResultAct extends BleProfileNonFuncActivity
{
    private static final String TAG = "SingleReportAct";
    private TextView leftbtn;
    private String mCal;
    private String mDeviceName;
    private TTSService mTTSService;
    private String mTimeElapse;
    private String mTtlItem1;
    private String mTtlItem2;
    private String mTtlItem3;
    private TextView mTvCal;
    private TextView mTvDviceName;
    private TextView mTvEnd;
    private TextView mTvTimeElapse;
    private TextView mTvTtlItem1;
    private TextView mTvTtlItem2;
    private TextView mTvTtlItem3;
    private TextView mTvValItem1;
    private TextView mTvValItem2;
    private TextView mTvValItem3;
    private String mValItem1;
    private String mValItem2;
    private String mValItem3;
    private TextView title;

    private void initViews()
    {
        this.mTvEnd = ((TextView)findViewById(2131558581));
        this.mTvEnd.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                ShowResultAct.this.finish();
            }
        });
        this.mTvDviceName = ((TextView)findViewById(2131558573));
        this.mTvTtlItem1 = ((TextView)findViewById(2131558574));
        this.mTvTtlItem2 = ((TextView)findViewById(2131558576));
        this.mTvTtlItem3 = ((TextView)findViewById(2131558578));
        this.mTvValItem1 = ((TextView)findViewById(2131558575));
        this.mTvValItem2 = ((TextView)findViewById(2131558577));
        this.mTvValItem3 = ((TextView)findViewById(2131558579));
        this.mTvTimeElapse = ((TextView)findViewById(2131558580));
        this.mTvCal = ((TextView)findViewById(2131558566));
        this.mTvDviceName.setText(getIntent().getStringExtra("DeviceName"));
        this.mTvTtlItem1.setText(getIntent().getStringExtra("TtlItem1"));
        this.mTvTtlItem2.setText(getIntent().getStringExtra("TtlItem2"));
        this.mTvTtlItem3.setText(getIntent().getStringExtra("TtlItem3"));
        this.mTvValItem1.setText(getIntent().getStringExtra("ValItem1"));
        this.mTvValItem2.setText(getIntent().getStringExtra("ValItem2"));
        this.mTvValItem3.setText(getIntent().getStringExtra("ValItem3"));
        this.mTvTimeElapse.setText(getIntent().getStringExtra("TimeElapse").concat("分钟"));
        this.mTvCal.setText(getIntent().getStringExtra("Cal").concat("大卡"));
        this.mTTSService = new TTSService(this);
        this.mTTSService.ttsStop();
        this.mTTSService.ttsPlay("锻炼结束！");
        this.mTTSService.ttsPlay("您已使用：".concat(getIntent().getStringExtra("DeviceName")).concat("："));
        this.mTTSService.ttsPlay(getIntent().getStringExtra("TimeElapse").concat("分钟。已消耗：").concat(getIntent().getStringExtra("Cal")).concat("大卡"));
        float f = Commons.getPreferenceFloat(Configs.TotalCal) + Float.valueOf(getIntent().getStringExtra("Cal")).floatValue();
        Commons.setPreference(Configs.TotalCal, f);
        saveTotalDays();
    }

    private void setReuslt()
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("token", str);
        localRequestParams.addBodyParameter("itemId", "");
        localRequestParams.addBodyParameter("times", "");
        localRequestParams.addBodyParameter("groupTimes", "");
        localRequestParams.addBodyParameter("averageFrequency", "");
        localRequestParams.addBodyParameter("averageSpeed", "");
        localRequestParams.addBodyParameter("averageAmplitude", "");
        localRequestParams.addBodyParameter("kcal", "");
        localRequestParams.addBodyParameter("startTime", "");
        localRequestParams.addBodyParameter("duration", "");
        localRequestParams.addBodyParameter("endTime", "");
        localRequestParams.addBodyParameter("rotationCount", "");
        localRequestParams.addBodyParameter("averageRotationalSpeed", "");
        localRequestParams.addBodyParameter("maxRotationalSpeed", "");
        localRequestParams.addBodyParameter("heartrate", "");
        localRequestParams.addBodyParameter("hrTime", "");
        localRequestParams.addBodyParameter("steps", "");
        localRequestParams.addBodyParameter("distance", "");
        localRequestParams.addBodyParameter("laps", "");
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.USAGEDATA, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                ((JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class));
            }
        });
    }

    protected void onCreateView(Bundle paramBundle)
    {
        setContentView(2130968630);
        initViews();
    }
}