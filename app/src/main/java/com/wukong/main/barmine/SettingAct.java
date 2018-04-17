package com.wukong.main.barmine;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.wukong.main.base.BaseUIAct;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;

public class SettingAct extends BaseUIAct
{
    private Switch mIsPathManDetect;
    private Switch mManualConn;
    private TextView myinfo;
    private TextView nbleft;
    private TextView nbtitle;

    private void initFunctionSets()
    {
        Long localLong = Long.valueOf(Commons.getPreferenceLong(Configs.FunctionSet));
        if ((0x2 & localLong.longValue()) == 0L)
            this.mManualConn.setVisibility(8);
        if ((0x4 & localLong.longValue()) == 0L)
            this.mIsPathManDetect.setVisibility(8);
    }

    private void initViews()
    {
        this.nbleft = ((TextView)findViewById(2131558664));
        this.nbtitle = ((TextView)findViewById(2131558665));
        this.myinfo = ((TextView)findViewById(2131558526));
        this.nbleft.setText(getString(2131165223));
        this.nbtitle.setText(getString(2131165345));
        this.nbleft.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                SettingAct.this.finish();
            }
        });
        this.myinfo.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(SettingAct.this, MyselfAct.class);
                SettingAct.this.startActivity(localIntent);
            }
        });
        this.mManualConn = ((Switch)findViewById(2131558527));
        this.mManualConn.setChecked(Commons.getPreferenceBoolean(Configs.IsManualConn));
        this.mManualConn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
            public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
            {
                Commons.setPreference(Configs.IsManualConn, paramAnonymousBoolean);
                SettingAct.this.runOnUiThread(new Runnable()
                {
                    public void run()
                    {
                        Toast.makeText(SettingAct.this, "该设置需要重启APP才能生效", 1).show();
                    }
                });
            }
        });
        this.mIsPathManDetect = ((Switch)findViewById(2131558528));
        this.mIsPathManDetect.setChecked(Commons.getPreferenceBoolean(Configs.IsPathManDetect));
        this.mIsPathManDetect.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
            public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
            {
                Commons.setPreference(Configs.IsPathManDetect, paramAnonymousBoolean);
                SettingAct.this.runOnUiThread(new Runnable()
                {
                    public void run()
                    {
                        Toast.makeText(SettingAct.this, "设置已生效", 0).show();
                    }
                });
            }
        });
        initFunctionSets();
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(2130968613);
        initViews();
    }
}