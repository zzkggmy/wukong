package com.wukong.main.base.scanner;

import android.app.Activity;
import android.app.Dialog;
import android.bluetooth.BluetoothDevice;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import java.util.UUID;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanResult;

public class PauseFragment extends DialogFragment
{
    private static final String TAG = "PauseFragment";
    private View mDialogView;
    private final Handler mHandler = new Handler();
    private ScanCallback scanCallback = new ScanCallback()
    {
        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };

    public static PauseFragment getInstance(UUID paramUUID)
    {
        return new PauseFragment();
    }

    public void onAttach(Activity paramActivity)
    {
        super.onAttach(paramActivity);
    }

    public void onCancel(DialogInterface paramDialogInterface)
    {
        super.onCancel(paramDialogInterface);
    }

    public void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
    }

    @NonNull
    public Dialog onCreateDialog(Bundle paramBundle)
    {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
        this.mDialogView = LayoutInflater.from(getActivity()).inflate(2130968641, null);
        return localBuilder.setView(this.mDialogView).create();
    }

    public void onDestroyView()
    {
        super.onDestroyView();
    }

    public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfInt)
    {
    }

    public static abstract interface OnDeviceSelectedListener
    {
        public abstract void onDeviceSelected(BluetoothDevice paramBluetoothDevice, String paramString, int paramInt);

        public abstract void onDialogCanceled();
    }
}
