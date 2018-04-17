package com.wukong.main.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import java.io.IOException;

public class WXEntryActivity extends Activity
        implements IWXAPIEventHandler
{
    private IWXAPI api;

    private String getWXToken(String paramString)
    {
        HttpGet localHttpGet = new HttpGet(paramString);
        try
        {
            HttpResponse localHttpResponse = new DefaultHttpClient().execute(localHttpGet);
            if (localHttpResponse.getStatusLine().getStatusCode() == 200)
            {
                String str2 = EntityUtils.toString(localHttpResponse.getEntity(), "UTF-8");
                str1 = str2;
                return str1;
            }
            return null;
        }
        catch (ClientProtocolException localClientProtocolException)
        {
            while (true)
            {
                localClientProtocolException.printStackTrace();
                str1 = null;
            }
        }
        catch (IOException localIOException)
        {
            while (true)
            {
                localIOException.printStackTrace();
                str1 = null;
            }
        }
        catch (Exception localException)
        {
            while (true)
            {
                localException.printStackTrace();
                String str1 = null;
            }
        }
    }

    private void handleIntent(Intent paramIntent)
    {
        LoginAct.api.handleIntent(paramIntent, this);
    }

    private void loginThird(String paramString1, String paramString2, String paramString3)
    {
        String str1 = Commons.getIMEI(getApplicationContext());
        String str2 = Commons.getTime();
        String str3 = String.valueOf(3);
        String str4 = Commons.sign(new Object[] { paramString1, paramString2, paramString3, "0", str3, str1, str2 });
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("openid", paramString1);
        localRequestParams.addBodyParameter("nickname", paramString2);
        localRequestParams.addBodyParameter("headimg", paramString3);
        localRequestParams.addBodyParameter("osType", "0");
        localRequestParams.addBodyParameter("thirdparty", str3);
        localRequestParams.addBodyParameter("imei", str1);
        localRequestParams.addBodyParameter("time", str2);
        localRequestParams.addBodyParameter("sign", str4);
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.LOGIN_THIRD, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("WX onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                Intent localIntent;
                if ((localJsonData.getCode().equals(Configs.isSuccess)) && (Commons.strIsNull(localJsonData.getData())))
                {
                    LoginBean localLoginBean = (LoginBean)JSONObject.parseObject(localJsonData.getData(), LoginBean.class);
                    Commons.setPreference(Configs.token, localLoginBean.getToken());
                    UserBean localUserBean = (UserBean)JSONObject.parseObject(localLoginBean.getUser(), UserBean.class);
                    Commons.setPreference(Configs.birthday, localUserBean.getBirthday());
                    Commons.setPreference(Configs.userHeade, localUserBean.getHeadimg());
                    Commons.setPreference(Configs.userSex, localUserBean.getSex());
                    Commons.setPreference(Configs.nickname, localUserBean.getNickname());
                    Commons.setPreference(Configs.mobile, localUserBean.getMobile());
                    Commons.setPreference(Configs.weight, localUserBean.getWeight());
                    Commons.setPreference(Configs.height, localUserBean.getHeight());
                    localIntent = new Intent();
                    if (!Commons.valueNull(localUserBean.getNickname()))
                        break label239;
                    localIntent.setClass(WXEntryActivity.this.getApplicationContext(), HomeUIAct.class);
                }
                while (true)
                {
                    WXEntryActivity.this.startActivity(localIntent);
                    WXEntryActivity.this.finish();
                    return;
                    label239: localIntent.setClass(WXEntryActivity.this.getApplicationContext(), MyselfAct.class);
                    localIntent.putExtra("isFromLogin", "yes");
                }
            }
        });
    }

    protected void onCreate(Bundle paramBundle)
    {
        Commons.VersionException();
        super.onCreate(paramBundle);
        this.api = WXAPIFactory.createWXAPI(this, Configs.appID_Wechat, true);
        this.api.handleIntent(getIntent(), this);
    }

    protected void onNewIntent(Intent paramIntent)
    {
        super.onNewIntent(paramIntent);
        setIntent(paramIntent);
        handleIntent(paramIntent);
    }

    public void onReq(BaseReq paramBaseReq)
    {
    }

    public void onResp(BaseResp paramBaseResp)
    {
        switch (paramBaseResp.errCode)
        {
            case -4:
            case -3:
            case -2:
            case -1:
            default:
            case 0:
        }
        while (true)
        {
            finish();
            return;
            String str1 = ((SendAuth.Resp)paramBaseResp).code;
            LOG.i("TAG", "微信确认登录返回的code：" + str1);
            String str2 = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + Configs.appID_Wechat + "&secret=" + Configs.appID_WXSecret + "&code=" + str1 + "&grant_type=authorization_code";
            String str3 = getWXToken(str2);
            LOG.i("uriAPI ========" + str2);
            LOG.i("result ========" + str3);
            if (str3 != null)
            {
                WXTokenBean localWXTokenBean = (WXTokenBean)JSONObject.parseObject(str3, WXTokenBean.class);
                String str4 = getWXToken("https://api.weixin.qq.com/sns/userinfo?access_token=" + localWXTokenBean.getAccess_token() + "&openid=" + localWXTokenBean.getOpenid());
                LOG.i("resinfo ========" + str3);
                WXUserInfoBean localWXUserInfoBean = (WXUserInfoBean)JSONObject.parseObject(str4, WXUserInfoBean.class);
                Commons.setPreference(Configs.userSex, localWXUserInfoBean.getSex());
                loginThird(localWXUserInfoBean.getUnionid(), localWXUserInfoBean.getNickname(), localWXUserInfoBean.getHeadimgurl());
            }
        }
    }
}