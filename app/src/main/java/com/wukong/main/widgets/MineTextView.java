package com.wukong.main.widgets;

import android.content.Context;
import android.graphics.Typeface;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.TextView;

public class MineTextView extends TextView
{
    String fongUrl = "myfont.ttf";
    Typeface tf;

    public MineTextView(Context paramContext)
    {
        super(paramContext);
    }

    public MineTextView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
    {
        super(paramContext, paramAttributeSet);
    }

    public MineTextView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
    {
        super(paramContext, paramAttributeSet, paramInt);
    }

    private void init(Context paramContext)
    {
        setTypeface(setFont(paramContext));
    }

    private Typeface setFont(Context paramContext)
    {
        if (this.tf == null)
            this.tf = Typeface.createFromAsset(paramContext.getAssets(), this.fongUrl);
        return this.tf;
    }
}