package com.wukong.main;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;

import com.wukong.main.utils.Commons;


public class Loading extends Activity
{
    private String token;

    private void checkVersion()
    {
        String str1 = Commons.getVersion(getApplicationContext());
        String str2 = Commons.getTime();
        String str3 = Commons.sign(new Object[] { str1, "USER", str2 });
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("v", str1);
        localRequestParams.addQueryStringParameter("appName", "USER");
        localRequestParams.addQueryStringParameter("time", str2);
        localRequestParams.addQueryStringParameter("sign", str3);
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.CHECK_VERSION, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
                Loading.this.goToHomeUI();
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + (String)paramAnonymousResponseInfo.result);
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                if (localJsonData.getCode().equals(Configs.isSuccess))
                {
                    VersionBean localVersionBean = (VersionBean)JSONObject.parseObject(localJsonData.getData(), VersionBean.class);
                    if (localVersionBean.getIsLatest().equals("false"))
                        Loading.this.showDialog(localVersionBean.getUrl());
                }
                else
                {
                    return;
                }
                Loading.this.goToHomeUI();
            }
        });
    }

    private void goToHomeUI()
    {
        new Thread(new Runnable()
        {
            public void run()
            {
                try
                {
                    Thread.sleep(500L);
                    Intent localIntent = new Intent();
                    if (!Commons.strIsNull(Loading.this.token))
                        localIntent.setClass(Loading.this, LoginAct.class);
                    while (true)
                    {
                        Loading.this.startActivity(localIntent);
                        Loading.this.finish();
                        return;
                        localIntent.setClass(Loading.this, HomeUIAct.class);
                    }
                }
                catch (InterruptedException localInterruptedException)
                {
                    localInterruptedException.printStackTrace();
                }
            }
        }).start();
    }

    private void showDialog(final String paramString)
    {
        final AppDialog localAppDialog = new AppDialog(this, 2);
        localAppDialog.setTitleMsg("新版本提示", getString(2131165375));
        localAppDialog.setLeftbtnListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                localAppDialog.dismiss();
                Loading.this.goToHomeUI();
            }
        });
        localAppDialog.setRightbtnListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
                Loading.this.startActivity(localIntent);
            }
        });
        localAppDialog.setDialogWidth(160);
        localAppDialog.show();
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(2130968607);
        this.token = Commons.getPreference(Configs.token);
        if (Commons.strIsNull(this.token))
        {
            if (Commons.isConnectNet(getApplicationContext()))
            {
                checkVersion();
                return;
            }
            goToHomeUI();
            return;
        }
        startActivity(new Intent(this, LoginAct.class));
        finish();
    }
}