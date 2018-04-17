package com.wukong.main.widgets;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;

public class MoveScorllView extends ScrollView
{
    private static final int ANIM_TIME = 100;
    private static final float MOVE_FACTOR = 0.5F;
    private static final String TAG = "ElasticScrollView";
    private boolean canPullDown = false;
    private boolean canPullUp = false;
    private View contentView;
    private boolean isMoved = false;
    private Rect originalRect = new Rect();
    private float startY;

    public MoveScorllView(Context paramContext)
    {
        super(paramContext);
    }

    public MoveScorllView(Context paramContext, AttributeSet paramAttributeSet)
    {
        super(paramContext, paramAttributeSet);
    }

    public MoveScorllView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
        super(paramContext, paramAttributeSet, paramInt);
    }

    private boolean isCanPullDown()
    {
        return (getScrollY() == 0) || (this.contentView.getHeight() < getHeight() + getScrollY());
    }

    private boolean isCanPullUp()
    {
        return this.contentView.getHeight() <= getHeight() + getScrollY();
    }

    public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
    {
        if (this.contentView == null)
            return super.dispatchTouchEvent(paramMotionEvent);
        switch (paramMotionEvent.getAction())
        {
            default:
            case 0:
            case 1:
            case 2:
        }
        while (true)
        {
            return super.dispatchTouchEvent(paramMotionEvent);
            this.canPullDown = isCanPullDown();
            this.canPullUp = isCanPullUp();
            this.startY = paramMotionEvent.getY();
            continue;
            if (this.isMoved)
            {
                TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, this.contentView.getTop(), this.originalRect.top);
                localTranslateAnimation.setDuration(100L);
                this.contentView.startAnimation(localTranslateAnimation);
                this.contentView.layout(this.originalRect.left, this.originalRect.top, this.originalRect.right, this.originalRect.bottom);
                this.canPullDown = false;
                this.canPullUp = false;
                this.isMoved = false;
                continue;
                if ((!this.canPullDown) && (!this.canPullUp))
                {
                    this.startY = paramMotionEvent.getY();
                    this.canPullDown = isCanPullDown();
                    this.canPullUp = isCanPullUp();
                }
                else
                {
                    int i = (int)(paramMotionEvent.getY() - this.startY);
                    int j;
                    if (((!this.canPullDown) || (i <= 0)) && ((!this.canPullUp) || (i >= 0)))
                    {
                        boolean bool1 = this.canPullUp;
                        j = 0;
                        if (bool1)
                        {
                            boolean bool2 = this.canPullDown;
                            j = 0;
                            if (!bool2);
                        }
                    }
                    else
                    {
                        j = 1;
                    }
                    if (j != 0)
                    {
                        int k = (int)(0.5F * i);
                        this.contentView.layout(this.originalRect.left, k + this.originalRect.top, this.originalRect.right, k + this.originalRect.bottom);
                        this.isMoved = true;
                    }
                }
            }
        }
    }

    protected void onFinishInflate()
    {
        if (getChildCount() > 0)
            this.contentView = getChildAt(0);
        super.onFinishInflate();
    }

    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
        super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
        if (this.contentView == null)
            return;
        this.originalRect.set(this.contentView.getLeft(), this.contentView.getTop(), this.contentView.getRight(), this.contentView.getBottom());
    }
}