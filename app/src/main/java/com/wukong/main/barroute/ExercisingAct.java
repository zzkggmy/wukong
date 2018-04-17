package com.wukong.main.barroute;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ExercisingAct extends Activity
{
    private RelativeLayout barlayout;
    private TextView nblleft;
    private TextView nblright;
    private TextView nbltitle;

    private void initViews()
    {
        this.barlayout = ((RelativeLayout)findViewById(2131558502));
        this.nblleft = ((TextView)findViewById(2131558659));
        this.nbltitle = ((TextView)findViewById(2131558661));
        this.nblright = ((TextView)findViewById(2131558662));
        this.barlayout.setBackgroundColor(getResources().getColor(2131427391));
        Drawable localDrawable = getResources().getDrawable(2130903044);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        this.nblleft.setCompoundDrawables(localDrawable, null, null, null);
        this.nbltitle.setTextColor(getResources().getColor(2131427417));
        this.nbltitle.setText(getString(2131165261));
        this.nblright.setBackgroundResource(2130903192);
        this.nblright.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(ExercisingAct.this, ShowResultAct.class);
                ExercisingAct.this.startActivity(localIntent);
                ExercisingAct.this.finish();
            }
        });
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(2130968604);
        initViews();
    }
}