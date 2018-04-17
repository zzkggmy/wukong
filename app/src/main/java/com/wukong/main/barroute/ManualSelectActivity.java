package com.wukong.main.barroute;

import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Toast;
import com.wukong.main.base.BleProfileNonFuncActivity;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;

public class ManualSelectActivity extends BleProfileNonFuncActivity
{
    private static final String TAG = "CommonDevicesAct2";
    private CheckBox mCkbSetManualDefault;

    private void initViews()
    {
        this.mCkbSetManualDefault = ((CheckBox)findViewById(2131558534));
        this.mCkbSetManualDefault.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
            public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
            {
                Commons.setPreference(Configs.IsManualConn, paramAnonymousBoolean);
                if (paramAnonymousBoolean)
                    ManualSelectActivity.this.runOnUiThread(new Runnable()
                    {
                        public void run()
                        {
                            Toast.makeText(ManualSelectActivity.this, "该设置需要重启APP才能生效\n您可以在设置中打开或关闭该选项", 1).show();
                        }
                    });
            }
        });
    }

    protected void onCreateView(Bundle paramBundle)
    {
        super.onCreateView(paramBundle);
        setContentView(2130968616);
        initViews();
    }
}