package com.wukong.main.widgets.wheel.adapter;

import android.content.Context;
import com.wukong.main.widgets.wheel.view.WheelAdapter;

import com.wukong.main.widgets.wheel.adapter.AbstractWheelTextAdapter;

public class AdapterWheel extends AbstractWheelTextAdapter
{
    private WheelAdapter adapter;

    public AdapterWheel(Context paramContext, WheelAdapter paramWheelAdapter)
    {
        super(paramContext);
        this.adapter = paramWheelAdapter;
    }

    public WheelAdapter getAdapter()
    {
        return this.adapter;
    }

    protected CharSequence getItemText(int paramInt)
    {
        return this.adapter.getItem(paramInt);
    }

    public int getItemsCount()
    {
        return this.adapter.getItemsCount();
    }
}