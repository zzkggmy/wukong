package com.wukong.main.base;

import android.app.Activity;
import android.os.Bundle;

public class BaseUIAct extends Activity
{
    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        requestWindowFeature(1);
    }
}