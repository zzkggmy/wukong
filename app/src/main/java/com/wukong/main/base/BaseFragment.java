package com.wukong.main.base;

import android.app.Fragment;
import android.content.Intent;
import android.os.Handler;
import com.wukong.main.utils.TTSService;

public class BaseFragment extends Fragment
{
    protected static final int REQUEST_ENABLE_BT = 2;
    protected Handler mHandler;
    protected TTSService mTTSService;

    private boolean isBLEEnabled()
    {
        return ((BleProfileBaseActivity)getActivity()).isBLEEnabled();
    }

    private void showBLEDialog()
    {
        ((BleProfileBaseActivity)getActivity()).showBLEDialog();
    }

    protected final void checkBLE()
    {
        if (!isBLEEnabled())
            showBLEDialog();
    }

    protected String getFirstNChars(double paramDouble, int paramInt)
    {
        return ((BleProfileNonFuncActivity)getActivity()).getFirstNChars(paramDouble, paramInt);
    }

    protected String getNowTimeDateStr()
    {
        return ((BleProfileNonFuncActivity)getActivity()).getNowTimeDateStr();
    }

    protected String getNumWithNAfterDot(double paramDouble, int paramInt)
    {
        return ((BleProfileNonFuncActivity)getActivity()).getNumWithNAfterDot(paramDouble, paramInt);
    }

    protected void initUtil()
    {
        this.mHandler = ((BleProfileBaseActivity)getActivity()).mHandler;
        this.mTTSService = ((BleProfileBaseActivity)getActivity()).mTTSService;
    }

    public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    {
        if ((paramInt1 == 2) && (paramInt2 == 0))
            getActivity().finish();
    }

    public void onHiddenChanged(boolean paramBoolean)
    {
        super.onHiddenChanged(paramBoolean);
        if (isHidden())
        {
            if (this.mTTSService != null)
                this.mTTSService.ttsStop();
            return;
        }
        checkBLE();
    }

    protected void saveTotalDays()
    {
        ((BleProfileNonFuncActivity)getActivity()).saveTotalDays();
    }

    protected final void showToastLong(String paramString)
    {
        ((BleProfileBaseActivity)getActivity()).showToastLong(paramString);
    }

    protected final void showToastShort(String paramString)
    {
        ((BleProfileBaseActivity)getActivity()).showToastShort(paramString);
    }
}