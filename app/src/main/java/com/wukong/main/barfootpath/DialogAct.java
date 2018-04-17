package com.wukong.main.barfootpath;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.wukong.main.R;
import com.wukong.main.utils.ScreenUtils;

public class DialogAct extends Activity
{
    private ImageView closebtn;
    private ImageView mImgBackRun;
    private LinearLayout mLlGoSetting;
    private TextView mTvGoSettting;

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_dialog);
        this.mImgBackRun = ((ImageView)findViewById(R.id.img_back_run));
        this.mLlGoSetting = ((LinearLayout)findViewById(R.id.llgosetting));
        this.mTvGoSettting = ((TextView)findViewById(R.id.gosetting));
        if (Build.VERSION.SDK_INT >= 21)
            this.mLlGoSetting.setVisibility(View.GONE);
        while (true)
        {
            this.mTvGoSettting.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    Intent localIntent = new Intent();
                    localIntent.setAction("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS");
                    DialogAct.this.startActivity(localIntent);
                }
            });
            Window localWindow = getWindow();
            localWindow.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
            localLayoutParams.height = (5 * ScreenUtils.getScreenHeight(getApplicationContext()) / 6);
            localLayoutParams.width = -1;
            localLayoutParams.gravity = 17;
            localWindow.setAttributes(localLayoutParams);
            findViewById(R.id.dialog_close).setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    DialogAct.this.finish();
                }
            });
            return;
            //this.mImgBackRun.setImageResource(2130903045);
        }
    }
}