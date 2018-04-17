package com.wukong.main.base;

import android.os.Bundle;
import android.util.Log;
import com.wukong.services.gym.GymServiceCallbacks;
import com.wukong.services.gym.LogService;

public abstract class BleProfileFuncActivity extends BleProfileNonFuncActivity
        implements GymServiceCallbacks
{
    static
    {
        Log.i("BleFuncActivity", "static-loading Shot Prints");
        new Thread(new Runnable()
        {
            public void run()
            {
                LogService.balanceTempLog();
            }
        }).start();
    }

    protected void onCreateView(Bundle paramBundle)
    {
        this.mDisableSeviceWhenFinishing = true;
    }
}