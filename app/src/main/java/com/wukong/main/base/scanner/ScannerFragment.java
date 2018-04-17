package com.wukong.main.base.scanner;

import android.app.Activity;
import android.app.Dialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelUuid;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.DialogFragment;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter.Builder;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;
import no.nordicsemi.android.support.v18.scanner.ScanSettings.Builder;

public class ScannerFragment extends DialogFragment
{
    private static final boolean IS_SHOWN = false;
    private static final String PARAM_UUID = "param_uuid";
    private static final int REQUEST_PERMISSION_REQ_CODE = 34;
    private static final long SCAN_DURATION = 30000L;
    private static ExtendedBluetoothDevice SELECTED_BLE_DEVICE = null;
    private static final String TAG = "ScannerFragment";
    private TextView deviceinfo;
    private DeviceListAdapter mAdapter;
    private String mBatteryV = " --％";
    private BluetoothAdapter mBluetoothAdapter;
    private String mDeviceName = " --";
    private int mDeviceType = 0;
    private View mDialogView;
    private final Handler mHandler = new Handler();
    private boolean mIsScanning = false;
    private OnDeviceSelectedListener mListener;
    private String mNameFilter;
    private View mPermissionRationale;
    private String mScanDeviceType = "undefined";
    private ParcelUuid mUuid;
    private ScanCallback scanCallback = new ScanCallback()
    {
        public void onBatchScanResults(List<ScanResult> paramAnonymousList)
        {
            Log.i("ScannerFragment", "onBatchScanResults" + ScannerFragment.this.mNameFilter);
            if ((ScannerFragment.this.mNameFilter == null) || (ScannerFragment.this.mNameFilter.equals("")))
            {
                ScannerFragment.this.mAdapter.update(paramAnonymousList);
                return;
            }
            ScannerFragment.this.mAdapter.update(paramAnonymousList, ScannerFragment.this.mNameFilter);
        }

        public void onScanFailed(int paramAnonymousInt)
        {
        }

        public void onScanResult(int paramAnonymousInt, ScanResult paramAnonymousScanResult)
        {
        }
    };

    private void addBondedDevices()
    {
    }

    public static ScannerFragment getInstance(UUID paramUUID)
    {
        ScannerFragment localScannerFragment = new ScannerFragment();
        Bundle localBundle = new Bundle();
        if (paramUUID != null)
            localBundle.putParcelable("param_uuid", new ParcelUuid(paramUUID));
        localScannerFragment.setArguments(localBundle);
        return localScannerFragment;
    }

    private void startScan()
    {
        if (ContextCompat.checkSelfPermission(getContext(), "android.permission.ACCESS_COARSE_LOCATION") != 0)
        {
            if ((ActivityCompat.shouldShowRequestPermissionRationale(getActivity(), "android.permission.ACCESS_COARSE_LOCATION")) && (this.mPermissionRationale.getVisibility() == 8))
            {
                this.mPermissionRationale.setVisibility(0);
                return;
            }
            requestPermissions(new String[] { "android.permission.ACCESS_COARSE_LOCATION" }, 34);
            return;
        }
        if (this.mPermissionRationale != null)
            this.mPermissionRationale.setVisibility(8);
        this.mAdapter.clearDevices();
        BluetoothLeScannerCompat localBluetoothLeScannerCompat = BluetoothLeScannerCompat.getScanner();
        ScanSettings localScanSettings = new ScanSettings.Builder().setScanMode(2).setReportDelay(1000L).setUseHardwareBatchingIfSupported(false).build();
        ArrayList localArrayList = new ArrayList();
        if (this.mUuid != null)
        {
            localArrayList.add(new ScanFilter.Builder().setServiceUuid(this.mUuid).build());
            localBluetoothLeScannerCompat.startScan(localArrayList, localScanSettings, this.scanCallback);
        }
        while (true)
        {
            this.mIsScanning = true;
            this.mHandler.postDelayed(new Runnable()
                                      {
                                          public void run()
                                          {
                                              if (ScannerFragment.this.mIsScanning)
                                                  ScannerFragment.this.stopScan();
                                          }
                                      }
                    , 30000L);
            return;
            localBluetoothLeScannerCompat.startScan(null, localScanSettings, this.scanCallback);
        }
    }

    private void stopScan()
    {
        if (this.mIsScanning)
        {
            BluetoothLeScannerCompat.getScanner().stopScan(this.scanCallback);
            this.mIsScanning = false;
        }
    }

    public void onAttach(Activity paramActivity)
    {
        super.onAttach(paramActivity);
        try
        {
            this.mListener = ((OnDeviceSelectedListener)paramActivity);
            return;
        }
        catch (ClassCastException localClassCastException)
        {
        }
        throw new ClassCastException(paramActivity.toString() + " must implement OnDeviceSelectedListener");
    }

    public void onCancel(DialogInterface paramDialogInterface)
    {
        super.onCancel(paramDialogInterface);
        this.mListener.onDialogCanceled();
    }

    public void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        getArguments();
        this.mBluetoothAdapter = ((BluetoothManager)getActivity().getSystemService("bluetooth")).getAdapter();
    }

    @NonNull
    public Dialog onCreateDialog(Bundle paramBundle)
    {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
        this.mDialogView = LayoutInflater.from(getActivity()).inflate(2130968638, null);
        ListView localListView = (ListView)this.mDialogView.findViewById(16908298);
        localListView.setEmptyView(this.mDialogView.findViewById(16908292));
        DeviceListAdapter localDeviceListAdapter = new DeviceListAdapter(getActivity());
        this.mAdapter = localDeviceListAdapter;
        localListView.setAdapter(localDeviceListAdapter);
        final AlertDialog localAlertDialog = localBuilder.setView(this.mDialogView).create();
        localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
            public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
                ScannerFragment.this.stopScan();
                localAlertDialog.dismiss();
                ExtendedBluetoothDevice localExtendedBluetoothDevice = (ExtendedBluetoothDevice)ScannerFragment.this.mAdapter.getItem(paramAnonymousInt);
                ScannerFragment.access$202(localExtendedBluetoothDevice);
                ScannerFragment.this.mListener.onDeviceSelected(localExtendedBluetoothDevice.device, localExtendedBluetoothDevice.name, ScannerFragment.this.mDeviceType);
            }
        });
        this.mPermissionRationale = this.mDialogView.findViewById(2131558600);
        this.deviceinfo = ((TextView)this.mDialogView.findViewById(2131558601));
        this.deviceinfo.setText(this.mScanDeviceType);
        addBondedDevices();
        if (paramBundle == null)
            startScan();
        return localAlertDialog;
    }

    public void onDestroyView()
    {
        stopScan();
        super.onDestroyView();
    }

    public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfInt)
    {
        switch (paramInt)
        {
            default:
                return;
            case 34:
        }
        if (paramArrayOfInt[0] == 0)
        {
            startScan();
            return;
        }
        this.mPermissionRationale.setVisibility(0);
        Toast.makeText(getActivity(), 2131165312, 0).show();
    }

    public void setConnectedDeviceName(String paramString)
    {
        this.mDeviceName = paramString;
    }

    public void setDeviceBatteryV(String paramString)
    {
        this.mBatteryV = paramString;
    }

    public void setDeviceDisconnected()
    {
        this.mDeviceName = " --";
        this.mBatteryV = " --％";
    }

    public void setFilter(UUID paramUUID)
    {
        if (paramUUID != null)
            this.mUuid = new ParcelUuid(paramUUID);
    }

    public void setNameFilter(String paramString)
    {
        this.mNameFilter = paramString;
    }

    public void setScanDeviceType(String paramString, int paramInt)
    {
        this.mScanDeviceType = paramString;
        this.mDeviceType = paramInt;
    }

    public static abstract interface OnDeviceSelectedListener
    {
        public abstract void onDeviceSelected(BluetoothDevice paramBluetoothDevice, String paramString, int paramInt);

        public abstract void onDialogCanceled();
    }
}