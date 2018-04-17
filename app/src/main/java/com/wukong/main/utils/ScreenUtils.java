package com.wukong.main.utils;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;

public class ScreenUtils
{
    private ScreenUtils()
    {
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    public static int getDensityDpi(Context paramContext)
    {
        return paramContext.getApplicationContext().getResources().getDisplayMetrics().densityDpi;
    }

    public static float getScreenDensity(Context paramContext)
    {
        WindowManager localWindowManager = (WindowManager)paramContext.getSystemService("window");
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
        return localDisplayMetrics.density;
    }

    public static int getScreenDpi(Context paramContext)
    {
        WindowManager localWindowManager = (WindowManager)paramContext.getSystemService("window");
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
        return localDisplayMetrics.densityDpi;
    }

    public static int getScreenHeight(Context paramContext)
    {
        WindowManager localWindowManager = (WindowManager)paramContext.getSystemService("window");
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
        return localDisplayMetrics.heightPixels;
    }

    public static int getScreenWidth(Context paramContext)
    {
        WindowManager localWindowManager = (WindowManager)paramContext.getSystemService("window");
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
        return localDisplayMetrics.widthPixels;
    }

    public static int getStatusHeight(Context paramContext)
    {
        try
        {
            Class localClass = Class.forName("com.android.internal.R$dimen");
            Object localObject = localClass.newInstance();
            int i = Integer.parseInt(localClass.getField("status_bar_height").get(localObject).toString());
            int j = paramContext.getResources().getDimensionPixelSize(i);
            return j;
        }
        catch (Exception localException)
        {
            localException.printStackTrace();
        }
        return -1;
    }

    public static Bitmap snapShotWithStatusBar(Activity paramActivity)
    {
        View localView = paramActivity.getWindow().getDecorView();
        localView.setDrawingCacheEnabled(true);
        localView.buildDrawingCache();
        Bitmap localBitmap = Bitmap.createBitmap(localView.getDrawingCache(), 0, 0, getScreenWidth(paramActivity), getScreenHeight(paramActivity));
        localView.destroyDrawingCache();
        return localBitmap;
    }

    public static Bitmap snapShotWithoutStatusBar(Activity paramActivity)
    {
        View localView = paramActivity.getWindow().getDecorView();
        localView.setDrawingCacheEnabled(true);
        localView.buildDrawingCache();
        Bitmap localBitmap1 = localView.getDrawingCache();
        Rect localRect = new Rect();
        paramActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
        int i = localRect.top;
        Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, i, getScreenWidth(paramActivity), getScreenHeight(paramActivity) - i);
        localView.destroyDrawingCache();
        return localBitmap2;
    }
}