package com.wukong.main.base;

import android.app.FragmentTransaction;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.IdRes;
import android.view.KeyEvent;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.fragments.FootPathFragment;
import com.wukong.main.fragments.MineFragment;
import com.wukong.main.fragments.RankFragment;
import com.wukong.main.fragments.RouteBaseFragment;
import com.wukong.main.fragments.RouteFragment;
import com.wukong.main.fragments.RouteManualFragment;
import com.wukong.main.fragments.TestFragment;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.TTSService;
import com.wukong.main.utils.UrlConfig;
import com.wukong.services.ble.BleProfileService.LocalBinder;
import com.wukong.services.gym.gymevent.GymRealTimeEvent;
import java.util.Timer;
import java.util.TimerTask;

public class HomeUIAct extends BleProfileNonFuncActivity
{
    private static final String Beijing_Pop = "全民健身";
    private static final String Factory_GoodFmly = "好家庭";
    private static final String Factory_Jiamei = "佳美";
    private static final String Factory_Orient = "澳瑞特";
    private static final String Factory_Shuhua = "舒华";
    private static final String Factory_Wande = "万德";
    private static final String SmartRoute = "智能路径";
    private static final String SmartTrail = "智能步道";
    private static final String TAG = "HomeUIAct";
    private FootPathFragment footPathFragment;
    private Handler handler = new Handler()
    {
        public void handleMessage(Message paramAnonymousMessage)
        {
            super.handleMessage(paramAnonymousMessage);
        }
    };
    private int item = 0;
    private long mExitTime;
    private long mFactorySet;
    private long mFunctionSet;
    private long mGovSet;
    private boolean mIsManualConn = false;
    private MineFragment mineFragment;
    private RankFragment rankFragment;
    private RadioButton rbMenu1;
    private RadioButton rbMenu2;
    private RadioButton rbMenu3;
    private RadioButton rbMenu4;
    private RouteBaseFragment routeBaseFragment;
    private RadioGroup tabgroup;
    private TestFragment testFragment;
    private Timer timer;
    private TimerTask timerTask;

    private void hideAllFragments(FragmentTransaction paramFragmentTransaction)
    {
        if (this.mineFragment != null)
            paramFragmentTransaction.hide(this.mineFragment);
        if (this.footPathFragment != null)
            paramFragmentTransaction.hide(this.footPathFragment);
        if (this.routeBaseFragment != null)
            paramFragmentTransaction.hide(this.routeBaseFragment);
        if (this.rankFragment != null)
            paramFragmentTransaction.hide(this.rankFragment);
        if (this.testFragment != null)
            paramFragmentTransaction.hide(this.testFragment);
    }

    private void initFunctionSets()
    {
        if ((1L & this.mFunctionSet) == 0L)
            findViewById(2131558495).setVisibility(8);
        if ((0x2 & this.mFunctionSet) == 0L)
            findViewById(2131558496).setVisibility(8);
        if ((0x4 & this.mFunctionSet) == 0L)
            findViewById(2131558497).setVisibility(8);
        if ((0x8 & this.mFunctionSet) == 0L)
            findViewById(2131558498).setVisibility(8);
        if ((0x10 & this.mFunctionSet) == 0L)
            findViewById(2131558499).setVisibility(8);
    }

    private void initViews()
    {
        this.tabgroup = ((RadioGroup)findViewById(2131558494));
        this.rbMenu1 = ((RadioButton)findViewById(2131558495));
        initFunctionSets();
        if (this.mineFragment == null)
        {
            FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
            this.mineFragment = new MineFragment();
            localFragmentTransaction.add(2131558501, this.mineFragment);
            localFragmentTransaction.commit();
        }
        this.rbMenu1.setChecked(true);
        setTabGroupListener();
        this.mHandler.postDelayed(new Runnable()
                                  {
                                      public void run()
                                      {
                                          HomeUIAct.this.mTTSService.ttsStop();
                                          String str1 = "全民健身";
                                          String str2 = "智能步道";
                                          if ((0x2 & Commons.getPreferenceLong(Configs.FunctionSet)) != 0L)
                                              str2 = "智能路径";
                                          if ((1L & Commons.getPreferenceLong(Configs.FactorySet)) != 0L)
                                              str1 = "澳瑞特";
                                          if ((1L & Commons.getPreferenceLong(Configs.GovSet)) != 0L)
                                              str1 = "全民健身";
                                          String str3 = "欢迎使用".concat(str1).concat(str2).concat("！");
                                          HomeUIAct.this.mTTSService.ttsPlay(str3);
                                          HomeUIAct.this.showToastLong(str3);
                                      }
                                  }
                , 500L);
        this.timer = new Timer();
        this.timerTask = new TimerTask()
        {
            public void run()
            {
                HomeUIAct.this.handler.sendEmptyMessage(0);
            }
        };
        this.timer.schedule(this.timerTask, 1000L, 60000L);
    }

    private void sendHeartBeat()
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("token", str);
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.HEART_BEAT, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + (String)paramAnonymousResponseInfo.result);
            }
        });
    }

    protected void checkActiveFragId(int paramInt)
    {
        Configs.deactiveAll();
        switch (paramInt)
        {
            default:
                Configs.deactiveAll();
                return;
            case 2131558495:
                Configs.isMe = true;
                return;
            case 2131558496:
                Configs.isRoute = true;
                return;
            case 2131558497:
                Configs.isPath = true;
                return;
            case 2131558498:
                Configs.isRank = true;
                return;
            case 2131558499:
        }
        Configs.isRank = true;
    }

    protected void onCreateView(Bundle paramBundle)
    {
        Commons.VersionException();
        super.onCreateView(paramBundle);
        requestWindowFeature(1);
        setContentView(2130968603);
        this.isMainActivity = true;
        this.mAutoConnect = false;
        this.mAutoBind = false;
        this.mAutoScan = false;
        this.mDisconnectDeviceWhenFinishing = true;
        this.mDisableSeviceWhenFinishing = true;
        this.mIsManualConn = Commons.getPreferenceBoolean(Configs.IsManualConn);
        this.mGovSet = Commons.getPreferenceLong(Configs.GovSet);
        if (this.mGovSet == 0L)
        {
            this.mGovSet = 1L;
            Commons.setPreference(Configs.GovSet, this.mGovSet);
        }
        this.mFactorySet = Commons.getPreferenceLong(Configs.FactorySet);
        if (this.mFactorySet == 0L)
        {
            this.mFactorySet = 1L;
            Commons.setPreference(Configs.FactorySet, this.mFactorySet);
        }
        this.mFunctionSet = Commons.getPreferenceLong(Configs.FunctionSet);
        this.mFunctionSet = 7L;
        Commons.setPreference(Configs.FunctionSet, this.mFunctionSet);
        if (!getNowTimeDateStr().equals(Commons.getPreference(Configs.TodayDate, "")))
        {
            Commons.setPreference(Configs.DefaultScreenBrightness, getSystemBrightness());
            Commons.setPreference(Configs.DefaultScreenOffTimeOut, getSystemScreenOffTimeout());
        }
        initViews();
    }

    public void onGymRealTimeEvent(GymRealTimeEvent paramGymRealTimeEvent)
    {
        super.onGymRealTimeEvent(paramGymRealTimeEvent);
        if (this.routeBaseFragment != null)
            this.routeBaseFragment.tryConnectingRouteDevice(paramGymRealTimeEvent.getPMRevXYZAvedevLP(), paramGymRealTimeEvent.getPAType());
    }

    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
        if (paramInt == 4)
        {
            if (System.currentTimeMillis() - this.mExitTime > 2000L)
            {
                Toast.makeText(this, "再按一次退出程序", 0).show();
                this.mExitTime = System.currentTimeMillis();
            }
            while (true)
            {
                return true;
                finish();
                if (this.mTTSService != null)
                    this.mTTSService.ttsStop();
            }
        }
        return super.onKeyDown(paramInt, paramKeyEvent);
    }

    protected void onServiceBinded(BleProfileService.LocalBinder paramLocalBinder)
    {
        paramLocalBinder.setServiceCallback_(this);
    }

    public void setTabGroupListener()
    {
        this.tabgroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener()
        {
            public void onCheckedChanged(RadioGroup paramAnonymousRadioGroup, @IdRes int paramAnonymousInt)
            {
                if (HomeUIAct.this.item == paramAnonymousInt)
                    return;
                HomeUIAct.access$102(HomeUIAct.this, paramAnonymousInt);
                FragmentTransaction localFragmentTransaction = HomeUIAct.this.getFragmentManager().beginTransaction();
                HomeUIAct.this.hideAllFragments(localFragmentTransaction);
                HomeUIAct.this.checkActiveFragId(paramAnonymousInt);
                switch (paramAnonymousInt)
                {
                    default:
                    case 2131558495:
                    case 2131558496:
                    case 2131558497:
                    case 2131558498:
                    case 2131558499:
                }
                while (true)
                {
                    localFragmentTransaction.commit();
                    return;
                    if (HomeUIAct.this.mineFragment == null)
                    {
                        HomeUIAct.access$302(HomeUIAct.this, new MineFragment());
                        localFragmentTransaction.add(2131558501, HomeUIAct.this.mineFragment);
                    }
                    while (true)
                    {
                        HomeUIAct.this.mineFragment.updateToday();
                        if (!Configs.isPathDataUpdated)
                            break;
                        HomeUIAct.this.mineFragment.getMyInfo();
                        break;
                        localFragmentTransaction.show(HomeUIAct.this.mineFragment);
                    }
                    if (HomeUIAct.this.routeBaseFragment == null)
                    {
                        if (HomeUIAct.this.mIsManualConn)
                            HomeUIAct.access$402(HomeUIAct.this, new RouteManualFragment());
                        while (true)
                        {
                            localFragmentTransaction.add(2131558501, HomeUIAct.this.routeBaseFragment);
                            break;
                            HomeUIAct.access$402(HomeUIAct.this, new RouteFragment());
                        }
                    }
                    localFragmentTransaction.show(HomeUIAct.this.routeBaseFragment);
                    HomeUIAct.this.routeBaseFragment.onRouteFragment();
                    continue;
                    if (HomeUIAct.this.footPathFragment == null)
                    {
                        HomeUIAct.access$602(HomeUIAct.this, new FootPathFragment());
                        localFragmentTransaction.add(2131558501, HomeUIAct.this.footPathFragment);
                    }
                    else
                    {
                        localFragmentTransaction.show(HomeUIAct.this.footPathFragment);
                        HomeUIAct.this.footPathFragment.onFootPathFragment();
                        continue;
                        if (HomeUIAct.this.rankFragment == null)
                        {
                            HomeUIAct.access$702(HomeUIAct.this, new RankFragment());
                            localFragmentTransaction.add(2131558501, HomeUIAct.this.rankFragment);
                        }
                        else
                        {
                            localFragmentTransaction.show(HomeUIAct.this.rankFragment);
                            continue;
                            if (HomeUIAct.this.testFragment == null)
                            {
                                HomeUIAct.access$802(HomeUIAct.this, new TestFragment());
                                localFragmentTransaction.add(2131558501, HomeUIAct.this.testFragment);
                            }
                            else
                            {
                                localFragmentTransaction.show(HomeUIAct.this.testFragment);
                            }
                        }
                    }
                }
            }
        });
    }
}