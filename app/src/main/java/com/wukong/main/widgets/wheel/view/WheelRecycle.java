package com.wukong.main.widgets.wheel.view;

import android.view.View;
import android.widget.LinearLayout;
import java.util.LinkedList;
import java.util.List;

public class WheelRecycle
{
    private List<View> emptyItems;
    private List<View> items;
    private WheelView wheel;

    public WheelRecycle(WheelView paramWheelView)
    {
        this.wheel = paramWheelView;
    }

    private List<View> addView(View paramView, List<View> paramList)
    {
        if (paramList == null)
            paramList = new LinkedList();
        paramList.add(paramView);
        return paramList;
    }

    private View getCachedView(List<View> paramList)
    {
        if ((paramList != null) && (paramList.size() > 0))
        {
            View localView = (View)paramList.get(0);
            paramList.remove(0);
            return localView;
        }
        return null;
    }

    private void recycleView(View paramView, int paramInt)
    {
        int i = this.wheel.getViewAdapter().getItemsCount();
        if (((paramInt < 0) || (paramInt >= i)) && (!this.wheel.isCyclic()))
        {
            this.emptyItems = addView(paramView, this.emptyItems);
            return;
        }
        while (paramInt < 0)
            paramInt += i;
        (paramInt % i);
        this.items = addView(paramView, this.items);
    }

    public void clearAll()
    {
        if (this.items != null)
            this.items.clear();
        if (this.emptyItems != null)
            this.emptyItems.clear();
    }

    public View getEmptyItem()
    {
        return getCachedView(this.emptyItems);
    }

    public View getItem()
    {
        return getCachedView(this.items);
    }

    public int recycleItems(LinearLayout paramLinearLayout, int paramInt, ItemsRange paramItemsRange)
    {
        int i = paramInt;
        int j = 0;
        if (j < paramLinearLayout.getChildCount())
        {
            if (!paramItemsRange.contains(i))
            {
                recycleView(paramLinearLayout.getChildAt(j), i);
                paramLinearLayout.removeViewAt(j);
                if (j == 0)
                    paramInt++;
            }
            while (true)
            {
                i++;
                break;
                j++;
            }
        }
        return paramInt;
    }
}