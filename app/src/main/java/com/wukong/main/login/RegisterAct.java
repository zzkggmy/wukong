package com.wukong.main.login;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.alibaba.fastjson.JSONObject;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.beans.CodeBean;
import com.wukong.main.beans.JsonData;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.SignUtil;
import com.wukong.main.utils.UrlConfig;

public class RegisterAct extends AppCompatActivity
{
    private TextView codebtn;
    private EditText codeedit;
    private String getcode = "1111";
    private Handler handler = new Handler()
    {
        public void handleMessage(Message paramAnonymousMessage)
        {
            super.handleMessage(paramAnonymousMessage);
            switch (paramAnonymousMessage.what)
            {
                default:
                    return;
                case 1:
            }
            if (RegisterAct.this.second <= 0)
            {
                RegisterAct.access$102(RegisterAct.this, false);
                RegisterAct.access$302(RegisterAct.this, 120);
                RegisterAct.this.codebtn.setEnabled(true);
                RegisterAct.this.codebtn.setText(RegisterAct.this.getString(2131165276));
                return;
            }
            RegisterAct.this.codebtn.setText(RegisterAct.this.second + "s");
        }
    };
    private String imei;
    private boolean isTime = false;
    private TextView nblleft;
    private TextView nblright;
    private TextView nbltitle;
    private EditText phonenum;
    private ImageView qq;
    private EditText regpwd;
    private int second = 120;
    private String sendPhone;
    private ImageView sina;
    private ImageView wechat;

    private void getCode()
    {
        if (!Commons.editIsNull(this.phonenum))
        {
            showToast(getString(2131165320));
            return;
        }
        String str1 = Commons.getTime();
        String str2 = Commons.getEditInfo(this.phonenum);
        this.sendPhone = str2;
        String str3 = Commons.getSign(new String[] { str2, str1 });
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("mobile", str2);
        localRequestParams.addBodyParameter("time", str1);
        localRequestParams.addBodyParameter("sign", str3);
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.getCode, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess = " + (String)paramAnonymousResponseInfo.result);
                RegisterAct.this.codebtn.setEnabled(false);
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                if (Commons.strIsNull(localJsonData.getData()))
                {
                    CodeBean localCodeBean = (CodeBean)JSONObject.parseObject(localJsonData.getData(), CodeBean.class);
                    RegisterAct.access$502(RegisterAct.this, localCodeBean.getToken());
                }
            }
        });
    }

    private void initViews()
    {
        this.nblleft = ((TextView)findViewById(2131558659));
        this.nbltitle = ((TextView)findViewById(2131558661));
        this.nblright = ((TextView)findViewById(2131558662));
        this.phonenum = ((EditText)findViewById(2131558522));
        this.codeedit = ((EditText)findViewById(2131558523));
        this.regpwd = ((EditText)findViewById(2131558525));
        this.codebtn = ((TextView)findViewById(2131558524));
        this.wechat = ((ImageView)findViewById(2131558691));
        this.qq = ((ImageView)findViewById(2131558692));
        this.sina = ((ImageView)findViewById(2131558693));
        Drawable localDrawable = getResources().getDrawable(2130903043);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        this.nblleft.setCompoundDrawables(localDrawable, null, null, null);
        this.nblleft.setText(getString(2131165223));
        this.nbltitle.setText(getString(2131165299));
        this.nblright.setText(getString(2131165327));
        this.nblleft.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                RegisterAct.this.finish();
            }
        });
        this.nblright.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                RegisterAct.this.regAccout();
            }
        });
        this.codebtn.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                RegisterAct.access$102(RegisterAct.this, true);
                new RegisterAct.timeManager(RegisterAct.this).start();
                RegisterAct.this.getCode();
            }
        });
        this.wechat.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Configs.isFromReg = true;
                Configs.loginType = 3;
                RegisterAct.this.finish();
            }
        });
        this.sina.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Configs.isFromReg = true;
                Configs.loginType = 2;
                RegisterAct.this.finish();
            }
        });
        this.qq.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Configs.isFromReg = true;
                Configs.loginType = 1;
                RegisterAct.this.finish();
            }
        });
    }

    private boolean islacksOfPermission()
    {
        if ((Build.VERSION.SDK_INT >= 23) && (ContextCompat.checkSelfPermission(this, "android.permission.READ_PHONE_STATE") != 0))
            ActivityCompat.requestPermissions(this, new String[] { "android.permission.READ_PHONE_STATE" }, 1);
        return false;
    }

    private void regAccout()
    {
        if (!Commons.editIsNull(this.phonenum))
        {
            showToast(getString(2131165320));
            return;
        }
        if (!Commons.editIsNull(this.codeedit))
        {
            showToast(getString(2131165233));
            return;
        }
        if (!Commons.editIsNull(this.regpwd))
        {
            showToast(getString(2131165323));
            return;
        }
        String str1 = Commons.getEditInfo(this.codeedit);
        if (!this.getcode.equals(str1))
            showToast(getString(2131165232));
        String str2 = Commons.getEditInfo(this.phonenum);
        String str3 = Commons.getEditInfo(this.regpwd);
        this.imei = Commons.getIMEI(getApplicationContext());
        String str4 = Commons.getTime();
        Object[] arrayOfObject1 = new Object[5];
        arrayOfObject1[0] = str2;
        arrayOfObject1[1] = str3;
        arrayOfObject1[2] = "0";
        arrayOfObject1[3] = this.imei;
        arrayOfObject1[4] = str4;
        String str5 = Commons.sign(arrayOfObject1);
        Object[] arrayOfObject2 = new Object[5];
        arrayOfObject2[0] = str2;
        arrayOfObject2[1] = str3;
        arrayOfObject2[2] = "0";
        arrayOfObject2[3] = this.imei;
        arrayOfObject2[4] = str4;
        SignUtil.verifySign(str5, arrayOfObject2);
        LOG.i(UrlConfig.REGISTER);
        LOG.i(str5);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("mobile", str2);
        localRequestParams.addBodyParameter("password", str3);
        localRequestParams.addBodyParameter("osType", "0");
        localRequestParams.addBodyParameter("imei", this.imei);
        localRequestParams.addBodyParameter("time", str4);
        localRequestParams.addBodyParameter("sign", str5);
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.REGISTER, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                if (localJsonData.getCode().equals(Configs.isSuccess))
                {
                    RegisterAct.this.finish();
                    return;
                }
                RegisterAct.this.showToast(localJsonData.getMsg());
            }
        });
    }

    private void showToast(String paramString)
    {
        Toast.makeText(getApplicationContext(), paramString, 0).show();
    }

    protected void onCreate(Bundle paramBundle)
    {
        Commons.VersionException();
        super.onCreate(paramBundle);
        setContentView(2130968612);
        initViews();
    }

    public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfInt)
    {
        super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
        if (paramInt == 1)
            this.imei = Commons.getIMEI(getApplicationContext());
    }

    protected void onResume()
    {
        super.onResume();
        islacksOfPermission();
    }

    class timeManager extends Thread
    {
        timeManager()
        {
        }

        public void run()
        {
            super.run();
            try
            {
                while (RegisterAct.this.isTime)
                {
                    RegisterAct.access$310(RegisterAct.this);
                    Message localMessage = new Message();
                    localMessage.what = 1;
                    RegisterAct.this.handler.sendMessage(localMessage);
                    Thread.sleep(1000L);
                }
            }
            catch (Exception localException)
            {
                localException.printStackTrace();
            }
        }
    }
}