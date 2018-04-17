package com.wukong.main.widgets.wheel.view;

public class ItemsRange
{
    private int count;
    private int first;

    public ItemsRange()
    {
        this(0, 0);
    }

    public ItemsRange(int paramInt1, int paramInt2)
    {
        this.first = paramInt1;
        this.count = paramInt2;
    }

    public boolean contains(int paramInt)
    {
        return (paramInt >= getFirst()) && (paramInt <= getLast());
    }

    public int getCount()
    {
        return this.count;
    }

    public int getFirst()
    {
        return this.first;
    }

    public int getLast()
    {
        return -1 + (getFirst() + getCount());
    }
}