package com.wukong.main.widgets.wheel.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class WheelView extends View
{
    private static final int DEF_VISIBLE_ITEMS = 5;
    private static final int ITEM_OFFSET_PERCENT = 0;
    private static final int PADDING = 10;
    private int[] SHADOWS_COLORS = { 15329769, 15329769, 15329769 };
    private GradientDrawable bottomShadow;
    private Drawable centerDrawable;
    private List<OnWheelChangedListener> changingListeners = new LinkedList();
    private List<OnWheelClickedListener> clickingListeners = new LinkedList();
    private int currentItem = 0;
    private DataSetObserver dataObserver = new DataSetObserver()
    {
        public void onChanged()
        {
            WheelView.this.invalidateWheel(false);
        }

        public void onInvalidated()
        {
            WheelView.this.invalidateWheel(true);
        }
    };
    private boolean drawShadows = true;
    private int firstItem;
    boolean isCyclic = false;
    private boolean isScrollingPerformed;
    private int itemHeight = 0;
    private LinearLayout itemsLayout;
    private WheelRecycle recycle = new WheelRecycle(this);
    private WheelScroller scroller;
    WheelScroller.ScrollingListener scrollingListener = new WheelScroller.ScrollingListener()
    {
        public void onFinished()
        {
            if (WheelView.this.isScrollingPerformed)
            {
                WheelView.this.notifyScrollingListenersAboutEnd();
                WheelView.access$002(WheelView.this, false);
            }
            WheelView.access$202(WheelView.this, 0);
            WheelView.this.invalidate();
        }

        public void onJustify()
        {
            if (Math.abs(WheelView.this.scrollingOffset) > 1)
                WheelView.this.scroller.scroll(WheelView.this.scrollingOffset, 0);
        }

        public void onScroll(int paramAnonymousInt)
        {
            WheelView.this.doScroll(paramAnonymousInt);
            int i = WheelView.this.getHeight();
            if (WheelView.this.scrollingOffset > i)
            {
                WheelView.access$202(WheelView.this, i);
                WheelView.this.scroller.stopScrolling();
            }
            while (WheelView.this.scrollingOffset >= -i)
                return;
            WheelView.access$202(WheelView.this, -i);
            WheelView.this.scroller.stopScrolling();
        }

        public void onStarted()
        {
            WheelView.access$002(WheelView.this, true);
            WheelView.this.notifyScrollingListenersAboutStart();
        }
    };
    private List<OnWheelScrollListener> scrollingListeners = new LinkedList();
    private int scrollingOffset;
    private GradientDrawable topShadow;
    private WheelViewAdapter viewAdapter;
    private int visibleItems = 5;
    private int wheelBackground = 2130837603;
    private int wheelForeground = 2130837604;

    public WheelView(Context paramContext)
    {
        super(paramContext);
        initData(paramContext);
    }

    public WheelView(Context paramContext, AttributeSet paramAttributeSet)
    {
        super(paramContext, paramAttributeSet);
        initData(paramContext);
    }

    public WheelView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
        super(paramContext, paramAttributeSet, paramInt);
        initData(paramContext);
    }

    private boolean addViewItem(int paramInt, boolean paramBoolean)
    {
        View localView = getItemView(paramInt);
        boolean bool = false;
        if (localView != null)
        {
            if (!paramBoolean)
                break label32;
            this.itemsLayout.addView(localView, 0);
        }
        while (true)
        {
            bool = true;
            return bool;
            label32: this.itemsLayout.addView(localView);
        }
    }

    private void buildViewForMeasuring()
    {
        if (this.itemsLayout != null)
            this.recycle.recycleItems(this.itemsLayout, this.firstItem, new ItemsRange());
        while (true)
        {
            int i = this.visibleItems / 2;
            for (int j = i + this.currentItem; j >= this.currentItem - i; j--)
                if (addViewItem(j, true))
                    this.firstItem = j;
            createItemsLayout();
        }
    }

    private int calculateLayoutWidth(int paramInt1, int paramInt2)
    {
        initResourcesIfNecessary();
        this.itemsLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.itemsLayout.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int i = this.itemsLayout.getMeasuredWidth();
        if (paramInt2 == 1073741824);
        for (int j = paramInt1; ; j = paramInt1)
            do
            {
                this.itemsLayout.measure(View.MeasureSpec.makeMeasureSpec(j - 20, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                return j;
                j = Math.max(i + 20, getSuggestedMinimumWidth());
            }
            while ((paramInt2 != -2147483648) || (paramInt1 >= j));
    }

    private void createItemsLayout()
    {
        if (this.itemsLayout == null)
        {
            this.itemsLayout = new LinearLayout(getContext());
            this.itemsLayout.setOrientation(1);
        }
    }

    private void doScroll(int paramInt)
    {
        this.scrollingOffset = (paramInt + this.scrollingOffset);
        int i = getItemHeight();
        int j = this.scrollingOffset / i;
        int k = this.currentItem - j;
        int m = this.viewAdapter.getItemsCount();
        int n = this.scrollingOffset % i;
        if (Math.abs(n) <= i / 2)
            n = 0;
        int i1;
        if ((this.isCyclic) && (m > 0))
        {
            if (n > 0)
            {
                k--;
                j++;
            }
            while (k < 0)
            {
                k += m;
                continue;
                if (n < 0)
                {
                    k++;
                    j--;
                }
            }
            k %= m;
            i1 = this.scrollingOffset;
            if (k == this.currentItem)
                break label268;
            setCurrentItem(k, false);
        }
        while (true)
        {
            this.scrollingOffset = (i1 - j * i);
            if (this.scrollingOffset > getHeight())
                this.scrollingOffset = (this.scrollingOffset % getHeight() + getHeight());
            return;
            if (k < 0)
            {
                j = this.currentItem;
                k = 0;
                break;
            }
            if (k >= m)
            {
                j = 1 + (this.currentItem - m);
                k = m - 1;
                break;
            }
            if ((k > 0) && (n > 0))
            {
                k--;
                j++;
                break;
            }
            if ((k >= m - 1) || (n >= 0))
                break;
            k++;
            j--;
            break;
            label268: invalidate();
        }
    }

    private void drawCenterRect(Canvas paramCanvas)
    {
        int i = getHeight() / 2;
        int j = (int)(1.2D * (getItemHeight() / 2));
        Paint localPaint = new Paint();
        localPaint.setColor(getResources().getColor(2131427401));
        localPaint.setStrokeWidth(3.0F);
        paramCanvas.drawLine(0.0F, i - j, getWidth(), i - j, localPaint);
        paramCanvas.drawLine(0.0F, i + j, getWidth(), i + j, localPaint);
    }

    private void drawItems(Canvas paramCanvas)
    {
        paramCanvas.save();
        paramCanvas.translate(10.0F, -((this.currentItem - this.firstItem) * getItemHeight() + (getItemHeight() - getHeight()) / 2) + this.scrollingOffset);
        this.itemsLayout.draw(paramCanvas);
        paramCanvas.restore();
    }

    private void drawShadows(Canvas paramCanvas)
    {
        int i = 3 * getItemHeight();
        this.topShadow.setBounds(0, 0, getWidth(), i);
        this.topShadow.draw(paramCanvas);
        this.bottomShadow.setBounds(0, getHeight() - i, getWidth(), getHeight());
        this.bottomShadow.draw(paramCanvas);
    }

    private int getDesiredHeight(LinearLayout paramLinearLayout)
    {
        if ((paramLinearLayout != null) && (paramLinearLayout.getChildAt(0) != null))
            this.itemHeight = paramLinearLayout.getChildAt(0).getMeasuredHeight();
        return Math.max(this.itemHeight * this.visibleItems - 0 * this.itemHeight / 50, getSuggestedMinimumHeight());
    }

    private int getItemHeight()
    {
        if (this.itemHeight != 0)
            return this.itemHeight;
        if ((this.itemsLayout != null) && (this.itemsLayout.getChildAt(0) != null))
        {
            this.itemHeight = this.itemsLayout.getChildAt(0).getHeight();
            return this.itemHeight;
        }
        return getHeight() / this.visibleItems;
    }

    private View getItemView(int paramInt)
    {
        if ((this.viewAdapter == null) || (this.viewAdapter.getItemsCount() == 0))
            return null;
        int i = this.viewAdapter.getItemsCount();
        if (!isValidItemIndex(paramInt))
            return this.viewAdapter.getEmptyItem(this.recycle.getEmptyItem(), this.itemsLayout);
        while (paramInt < 0)
            paramInt += i;
        int j = paramInt % i;
        return this.viewAdapter.getItem(j, this.recycle.getItem(), this.itemsLayout);
    }

    private ItemsRange getItemsRange()
    {
        if (getItemHeight() == 0)
            return null;
        int i = this.currentItem;
        for (int j = 1; j * getItemHeight() < getHeight(); j += 2)
            i--;
        if (this.scrollingOffset != 0)
        {
            if (this.scrollingOffset > 0)
                i--;
            int k = j + 1;
            int m = this.scrollingOffset / getItemHeight();
            i -= m;
            j = (int)(k + Math.asin(m));
        }
        return new ItemsRange(i, j);
    }

    private void initData(Context paramContext)
    {
        this.scroller = new WheelScroller(getContext(), this.scrollingListener);
    }

    private void initResourcesIfNecessary()
    {
        if (this.centerDrawable == null)
            this.centerDrawable = getContext().getResources().getDrawable(this.wheelForeground);
        if (this.topShadow == null)
            this.topShadow = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.SHADOWS_COLORS);
        if (this.bottomShadow == null)
            this.bottomShadow = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, this.SHADOWS_COLORS);
        setBackgroundResource(this.wheelBackground);
    }

    private boolean isValidItemIndex(int paramInt)
    {
        return (this.viewAdapter != null) && (this.viewAdapter.getItemsCount() > 0) && ((this.isCyclic) || ((paramInt >= 0) && (paramInt < this.viewAdapter.getItemsCount())));
    }

    private void layout(int paramInt1, int paramInt2)
    {
        int i = paramInt1 - 20;
        this.itemsLayout.layout(0, 0, i, paramInt2);
    }

    private boolean rebuildItems()
    {
        ItemsRange localItemsRange = getItemsRange();
        boolean bool;
        label47: label78: int k;
        if (this.itemsLayout != null)
        {
            int m = this.recycle.recycleItems(this.itemsLayout, this.firstItem, localItemsRange);
            if (this.firstItem != m)
            {
                bool = true;
                this.firstItem = m;
                if (!bool)
                {
                    if ((this.firstItem == localItemsRange.getFirst()) && (this.itemsLayout.getChildCount() == localItemsRange.getCount()))
                        break label198;
                    bool = true;
                }
                if ((this.firstItem <= localItemsRange.getFirst()) || (this.firstItem > localItemsRange.getLast()))
                    break label215;
                k = -1 + this.firstItem;
                label108: if ((k >= localItemsRange.getFirst()) && (addViewItem(k, true)))
                    break label203;
            }
        }
        int i;
        while (true)
        {
            i = this.firstItem;
            for (int j = this.itemsLayout.getChildCount(); j < localItemsRange.getCount(); j++)
                if ((!addViewItem(j + this.firstItem, false)) && (this.itemsLayout.getChildCount() == 0))
                    i++;
            bool = false;
            break;
            createItemsLayout();
            bool = true;
            break label47;
            label198: bool = false;
            break label78;
            label203: this.firstItem = k;
            k--;
            break label108;
            label215: this.firstItem = localItemsRange.getFirst();
        }
        this.firstItem = i;
        return bool;
    }

    private void updateView()
    {
        if (rebuildItems())
        {
            calculateLayoutWidth(getWidth(), 1073741824);
            layout(getWidth(), getHeight());
        }
    }

    public void addChangingListener(OnWheelChangedListener paramOnWheelChangedListener)
    {
        this.changingListeners.add(paramOnWheelChangedListener);
    }

    public void addClickingListener(OnWheelClickedListener paramOnWheelClickedListener)
    {
        this.clickingListeners.add(paramOnWheelClickedListener);
    }

    public void addScrollingListener(OnWheelScrollListener paramOnWheelScrollListener)
    {
        this.scrollingListeners.add(paramOnWheelScrollListener);
    }

    public boolean drawShadows()
    {
        return this.drawShadows;
    }

    public int getCurrentItem()
    {
        return this.currentItem;
    }

    public WheelViewAdapter getViewAdapter()
    {
        return this.viewAdapter;
    }

    public int getVisibleItems()
    {
        return this.visibleItems;
    }

    public void invalidateWheel(boolean paramBoolean)
    {
        if (paramBoolean)
        {
            this.recycle.clearAll();
            if (this.itemsLayout != null)
                this.itemsLayout.removeAllViews();
            this.scrollingOffset = 0;
        }
        while (true)
        {
            invalidate();
            return;
            if (this.itemsLayout != null)
                this.recycle.recycleItems(this.itemsLayout, this.firstItem, new ItemsRange());
        }
    }

    public boolean isCyclic()
    {
        return this.isCyclic;
    }

    protected void notifyChangingListeners(int paramInt1, int paramInt2)
    {
        Iterator localIterator = this.changingListeners.iterator();
        while (localIterator.hasNext())
            ((OnWheelChangedListener)localIterator.next()).onChanged(this, paramInt1, paramInt2);
    }

    protected void notifyClickListenersAboutClick(int paramInt)
    {
        Iterator localIterator = this.clickingListeners.iterator();
        while (localIterator.hasNext())
            ((OnWheelClickedListener)localIterator.next()).onItemClicked(this, paramInt);
    }

    protected void notifyScrollingListenersAboutEnd()
    {
        Iterator localIterator = this.scrollingListeners.iterator();
        while (localIterator.hasNext())
            ((OnWheelScrollListener)localIterator.next()).onScrollingFinished(this);
    }

    protected void notifyScrollingListenersAboutStart()
    {
        Iterator localIterator = this.scrollingListeners.iterator();
        while (localIterator.hasNext())
            ((OnWheelScrollListener)localIterator.next()).onScrollingStarted(this);
    }

    protected void onDraw(Canvas paramCanvas)
    {
        super.onDraw(paramCanvas);
        if ((this.viewAdapter != null) && (this.viewAdapter.getItemsCount() > 0))
        {
            updateView();
            drawItems(paramCanvas);
            drawCenterRect(paramCanvas);
        }
        if (this.drawShadows)
            drawShadows(paramCanvas);
    }

    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
        layout(paramInt3 - paramInt1, paramInt4 - paramInt2);
    }

    protected void onMeasure(int paramInt1, int paramInt2)
    {
        int i = View.MeasureSpec.getMode(paramInt1);
        int j = View.MeasureSpec.getMode(paramInt2);
        int k = View.MeasureSpec.getSize(paramInt1);
        int m = View.MeasureSpec.getSize(paramInt2);
        buildViewForMeasuring();
        int n = calculateLayoutWidth(k, i);
        int i1;
        if (j == 1073741824)
            i1 = m;
        while (true)
        {
            setMeasuredDimension(n, i1);
            return;
            i1 = getDesiredHeight(this.itemsLayout);
            if (j == -2147483648)
                i1 = Math.min(i1, m);
        }
    }

    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
        if ((!isEnabled()) || (getViewAdapter() == null))
            return true;
        switch (paramMotionEvent.getAction())
        {
            default:
            case 2:
            case 1:
        }
        do
            while (true)
            {
                return this.scroller.onTouchEvent(paramMotionEvent);
                if (getParent() != null)
                    getParent().requestDisallowInterceptTouchEvent(true);
            }
        while (this.isScrollingPerformed);
        int i = (int)paramMotionEvent.getY() - getHeight() / 2;
        if (i > 0);
        for (int j = i + getItemHeight() / 2; ; j = i - getItemHeight() / 2)
        {
            int k = j / getItemHeight();
            if ((k == 0) || (!isValidItemIndex(k + this.currentItem)))
                break;
            notifyClickListenersAboutClick(k + this.currentItem);
            break;
        }
    }

    public void removeChangingListener(OnWheelChangedListener paramOnWheelChangedListener)
    {
        this.changingListeners.remove(paramOnWheelChangedListener);
    }

    public void removeClickingListener(OnWheelClickedListener paramOnWheelClickedListener)
    {
        this.clickingListeners.remove(paramOnWheelClickedListener);
    }

    public void removeScrollingListener(OnWheelScrollListener paramOnWheelScrollListener)
    {
        this.scrollingListeners.remove(paramOnWheelScrollListener);
    }

    public void scroll(int paramInt1, int paramInt2)
    {
        int i = paramInt1 * getItemHeight() - this.scrollingOffset;
        this.scroller.scroll(i, paramInt2);
    }

    public void setCurrentItem(int paramInt)
    {
        setCurrentItem(paramInt, false);
    }

    public void setCurrentItem(int paramInt, boolean paramBoolean)
    {
        if ((this.viewAdapter == null) || (this.viewAdapter.getItemsCount() == 0));
        int i;
        do
        {
            do
            {
                return;
                i = this.viewAdapter.getItemsCount();
                if ((paramInt >= 0) && (paramInt < i))
                    break;
            }
            while (!this.isCyclic);
            while (paramInt < 0)
                paramInt += i;
            paramInt %= i;
        }
        while (paramInt == this.currentItem);
        if (paramBoolean)
        {
            int k = paramInt - this.currentItem;
            int m;
            if (this.isCyclic)
            {
                m = i + Math.min(paramInt, this.currentItem) - Math.max(paramInt, this.currentItem);
                if (m < Math.abs(k))
                    if (k >= 0)
                        break label136;
            }
            label136: for (k = m; ; k = -m)
            {
                scroll(k, 0);
                return;
            }
        }
        this.scrollingOffset = 0;
        int j = this.currentItem;
        this.currentItem = paramInt;
        notifyChangingListeners(j, this.currentItem);
        invalidate();
    }

    public void setCyclic(boolean paramBoolean)
    {
        this.isCyclic = paramBoolean;
        invalidateWheel(false);
    }

    public void setDrawShadows(boolean paramBoolean)
    {
        this.drawShadows = paramBoolean;
    }

    public void setInterpolator(Interpolator paramInterpolator)
    {
        this.scroller.setInterpolator(paramInterpolator);
    }

    public void setShadowColor(int paramInt1, int paramInt2, int paramInt3)
    {
        this.SHADOWS_COLORS = new int[] { paramInt1, paramInt2, paramInt3 };
    }

    public void setViewAdapter(WheelViewAdapter paramWheelViewAdapter)
    {
        if (this.viewAdapter != null)
            this.viewAdapter.unregisterDataSetObserver(this.dataObserver);
        this.viewAdapter = paramWheelViewAdapter;
        if (this.viewAdapter != null)
            this.viewAdapter.registerDataSetObserver(this.dataObserver);
        invalidateWheel(true);
    }

    public void setVisibleItems(int paramInt)
    {
        this.visibleItems = paramInt;
    }

    public void setWheelBackground(int paramInt)
    {
        this.wheelBackground = paramInt;
        setBackgroundResource(this.wheelBackground);
    }

    public void setWheelForeground(int paramInt)
    {
        this.wheelForeground = paramInt;
        this.centerDrawable = getContext().getResources().getDrawable(this.wheelForeground);
    }

    public void stopScrolling()
    {
        this.scroller.stopScrolling();
    }
}