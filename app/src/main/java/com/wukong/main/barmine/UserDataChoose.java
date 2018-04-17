package com.wukong.main.barmine;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AnticipateOvershootInterpolator;
import android.widget.Button;
import com.wukong.main.utils.Commons;
import com.wukong.main.widgets.wheel.adapter.ArrayWheelAdapter;
import com.wukong.main.widgets.wheel.view.OnWheelChangedListener;
import com.wukong.main.widgets.wheel.view.WheelView;

public class UserDataChoose extends Activity
        implements OnWheelChangedListener
{
    private String[] arrData;
    private String[] arrDay;
    private String[] arrMonth;
    private Button cancle;
    private Button confirm;
    private String flag;
    private WheelView wv1;
    private WheelView wv2;
    private WheelView wv3;

    private void getChooseValue()
    {
        String str = this.flag;
        int i = -1;
        switch (str.hashCode())
        {
            default:
            case 1069376125:
            case -1221029593:
            case -791592328:
        }
        while (true)
            switch (i)
            {
                default:
                    return;
                if (str.equals("birthday"))
                {
                    i = 0;
                    continue;
                    if (str.equals("height"))
                    {
                        i = 1;
                        continue;
                        if (str.equals("weight"))
                            i = 2;
                    }
                }
                break;
                case 0:
                case 1:
                case 2:
            }
        Commons.setPreference("CHOOSEVALUE", this.arrData[this.wv1.getCurrentItem()] + "-" + this.arrMonth[this.wv2.getCurrentItem()] + "-" + this.arrDay[this.wv3.getCurrentItem()]);
        return;
        Commons.setPreference("CHOOSEVALUE", this.arrData[this.wv1.getCurrentItem()]);
    }

    private void initViews()
    {
        this.cancle = ((Button)findViewById(2131558694));
        this.confirm = ((Button)findViewById(2131558695));
        this.wv1 = ((WheelView)findViewById(2131558696));
        this.wv2 = ((WheelView)findViewById(2131558697));
        this.wv3 = ((WheelView)findViewById(2131558698));
        this.wv1.setCyclic(false);
        this.flag = getIntent().getStringExtra("usercenterFLAG");
        String str = this.flag;
        int i = -1;
        switch (str.hashCode())
        {
            default:
                switch (i)
                {
                    default:
                    case 0:
                    case 1:
                    case 2:
                }
                break;
            case -1221029593:
            case -791592328:
            case 1069376125:
        }
        while (true)
        {
            this.wv1.setViewAdapter(new ArrayWheelAdapter(this, this.arrData));
            this.wv1.setInterpolator(new AnticipateOvershootInterpolator());
            wheelSetValue();
            this.cancle.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    UserDataChoose.this.getChooseValue();
                    UserDataChoose.this.finish();
                }
            });
            this.confirm.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    UserDataChoose.this.getChooseValue();
                    UserDataChoose.this.finish();
                }
            });
            return;
            if (!str.equals("height"))
                break;
            i = 0;
            break;
            if (!str.equals("weight"))
                break;
            i = 1;
            break;
            if (!str.equals("birthday"))
                break;
            i = 2;
            break;
            this.arrData = getResources().getStringArray(2131492865);
            continue;
            this.arrData = getResources().getStringArray(2131492867);
            continue;
            this.wv2.setVisibility(0);
            this.wv3.setVisibility(0);
            this.arrData = getResources().getStringArray(2131492868);
            this.arrMonth = getResources().getStringArray(2131492866);
            this.arrDay = getResources().getStringArray(2131492864);
            this.wv2.addChangingListener(this);
        }
    }

    private void wheelSetValue()
    {
        String str = this.flag;
        int i = -1;
        switch (str.hashCode())
        {
            default:
            case -1221029593:
            case -791592328:
            case 1069376125:
        }
        while (true)
            switch (i)
            {
                default:
                    return;
                if (str.equals("height"))
                {
                    i = 0;
                    continue;
                    if (str.equals("weight"))
                    {
                        i = 1;
                        continue;
                        if (str.equals("birthday"))
                            i = 2;
                    }
                }
                break;
                case 0:
                case 1:
                case 2:
            }
        this.wv1.setCurrentItem(95);
        return;
        this.wv1.setCurrentItem(40);
        return;
        this.wv1.setCurrentItem(5);
        this.wv2.setViewAdapter(new ArrayWheelAdapter(this, this.arrMonth));
        this.wv3.setViewAdapter(new ArrayWheelAdapter(this, this.arrDay));
        this.wv2.setCurrentItem(6);
        this.wv2.setCyclic(false);
        this.wv1.setVisibleItems(5);
        this.wv2.setInterpolator(new AnticipateOvershootInterpolator());
        this.wv3.setCurrentItem(6);
        this.wv3.setCyclic(false);
        this.wv1.setVisibleItems(5);
        this.wv3.setInterpolator(new AnticipateOvershootInterpolator());
    }

    public void onChanged(WheelView paramWheelView, int paramInt1, int paramInt2)
    {
        String str1 = this.flag;
        int i = -1;
        switch (str1.hashCode())
        {
            default:
                switch (i)
                {
                    default:
                    case 0:
                }
                break;
            case 1069376125:
        }
        do
        {
            return;
            if (!str1.equals("birthday"))
                break;
            i = 0;
            break;
        }
        while ((paramWheelView != this.wv1) && (paramWheelView != this.wv2));
        if (this.arrData[this.wv1.getCurrentItem()] == null)
            this.arrData[this.wv1.getCurrentItem()] = "1965";
        String str2 = this.arrData[this.wv1.getCurrentItem()];
        if (!Commons.strIsNull(str2))
            str2 = "1990";
        this.arrDay = Commons.getDaysOfMonth(str2, 1 + this.wv2.getCurrentItem(), getResources().getStringArray(2131492864));
        this.wv3.setViewAdapter(new ArrayWheelAdapter(this, this.arrDay));
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(2130968672);
    }

    protected void onResume()
    {
        super.onResume();
        initViews();
    }
}