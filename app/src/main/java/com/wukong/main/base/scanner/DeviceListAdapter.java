package com.wukong.main.base.scanner;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import no.nordicsemi.android.support.v18.scanner.ScanRecord;
import no.nordicsemi.android.support.v18.scanner.ScanResult;

public class DeviceListAdapter extends BaseAdapter
{
    private static final int TYPE_EMPTY = 2;
    private static final int TYPE_ITEM = 1;
    private static final int TYPE_TITLE;
    private final Context mContext;
    private final ArrayList<ExtendedBluetoothDevice> mListBondedValues = new ArrayList();
    private final ArrayList<ExtendedBluetoothDevice> mListValues = new ArrayList();

    public DeviceListAdapter(Context paramContext)
    {
        this.mContext = paramContext;
    }

    private ExtendedBluetoothDevice findDevice(ScanResult paramScanResult)
    {
        Iterator localIterator1 = this.mListBondedValues.iterator();
        while (localIterator1.hasNext())
        {
            ExtendedBluetoothDevice localExtendedBluetoothDevice2 = (ExtendedBluetoothDevice)localIterator1.next();
            if (localExtendedBluetoothDevice2.matches(paramScanResult))
                return localExtendedBluetoothDevice2;
        }
        Iterator localIterator2 = this.mListValues.iterator();
        while (localIterator2.hasNext())
        {
            ExtendedBluetoothDevice localExtendedBluetoothDevice1 = (ExtendedBluetoothDevice)localIterator2.next();
            if (localExtendedBluetoothDevice1.matches(paramScanResult))
                return localExtendedBluetoothDevice1;
        }
        return null;
    }

    public void addBondedDevices(Set<BluetoothDevice> paramSet)
    {
        ArrayList localArrayList = this.mListBondedValues;
        Iterator localIterator = paramSet.iterator();
        while (localIterator.hasNext())
            localArrayList.add(new ExtendedBluetoothDevice((BluetoothDevice)localIterator.next()));
        notifyDataSetChanged();
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public void clearDevices()
    {
        this.mListValues.clear();
        notifyDataSetChanged();
    }

    public int getCount()
    {
        int i = 1 + this.mListBondedValues.size();
        if (this.mListValues.isEmpty());
        for (int j = 2; i == 1; j = 1 + this.mListValues.size())
            return j;
        return j + i;
    }

    public Object getItem(int paramInt)
    {
        int i = 1 + this.mListBondedValues.size();
        if (this.mListBondedValues.isEmpty())
        {
            if (paramInt == 0)
                return Integer.valueOf(2131165341);
            return this.mListValues.get(paramInt - 1);
        }
        if (paramInt == 0)
            return Integer.valueOf(2131165340);
        if (paramInt < i)
            return this.mListBondedValues.get(paramInt - 1);
        if (paramInt == i)
            return Integer.valueOf(2131165341);
        return this.mListValues.get(-1 + (paramInt - i));
    }

    public long getItemId(int paramInt)
    {
        return paramInt;
    }

    public int getItemViewType(int paramInt)
    {
        if (paramInt == 0);
        while ((!this.mListBondedValues.isEmpty()) && (paramInt == 1 + this.mListBondedValues.size()))
            return 0;
        if ((paramInt == -1 + getCount()) && (this.mListValues.isEmpty()))
            return 2;
        return 1;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
        LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
        int i = getItemViewType(paramInt);
        View localView = paramView;
        ViewHolder localViewHolder1;
        switch (i)
        {
            case 1:
            default:
                if (localView == null)
                {
                    localView = localLayoutInflater.inflate(2130968633, paramViewGroup, false);
                    ViewHolder localViewHolder2 = new ViewHolder(null);
                    ViewHolder.access$102(localViewHolder2, (TextView)localView.findViewById(2131558588));
                    ViewHolder.access$202(localViewHolder2, (TextView)localView.findViewById(2131558589));
                    ViewHolder.access$302(localViewHolder2, (ImageView)localView.findViewById(2131558587));
                    localView.setTag(localViewHolder2);
                }
                ExtendedBluetoothDevice localExtendedBluetoothDevice = (ExtendedBluetoothDevice)getItem(paramInt);
                localViewHolder1 = (ViewHolder)localView.getTag();
                localViewHolder1.name.setText(localExtendedBluetoothDevice.name);
                localViewHolder1.address.setText(localExtendedBluetoothDevice.device.getAddress() + " " + localExtendedBluetoothDevice.rssi);
                if ((!localExtendedBluetoothDevice.isBonded) || (localExtendedBluetoothDevice.rssi != -1000))
                {
                    Log.i("DeviceListAdapterUI", "rssi strength: " + localExtendedBluetoothDevice.rssi);
                    int j = (int)(100.0F * (127.0F + localExtendedBluetoothDevice.rssi) / 147.0F);
                    localViewHolder1.rssi.setImageLevel(j);
                    localViewHolder1.rssi.setVisibility(0);
                }
                break;
            case 2:
                do
                    return localView;
                while (localView != null);
                return localLayoutInflater.inflate(2130968632, paramViewGroup, false);
            case 0:
                if (localView == null)
                    localView = localLayoutInflater.inflate(2130968634, paramViewGroup, false);
                ((TextView)localView).setText(((Integer)getItem(paramInt)).intValue());
                return localView;
        }
        localViewHolder1.rssi.setVisibility(8);
        return localView;
    }

    public int getViewTypeCount()
    {
        return 3;
    }

    public boolean isEnabled(int paramInt)
    {
        return getItemViewType(paramInt) == 1;
    }

    public void update(List<ScanResult> paramList)
    {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
            ScanResult localScanResult = (ScanResult)localIterator.next();
            ExtendedBluetoothDevice localExtendedBluetoothDevice1 = findDevice(localScanResult);
            if (localExtendedBluetoothDevice1 == null)
            {
                ExtendedBluetoothDevice localExtendedBluetoothDevice2 = new ExtendedBluetoothDevice(localScanResult);
                Log.i("DeviceListAdapter", "Name: " + localExtendedBluetoothDevice2.name + " address: " + localExtendedBluetoothDevice2.device.getAddress());
                this.mListValues.add(localExtendedBluetoothDevice2);
            }
            else
            {
                if (localScanResult.getScanRecord() != null);
                for (String str = localScanResult.getScanRecord().getDeviceName(); ; str = null)
                {
                    localExtendedBluetoothDevice1.name = str;
                    localExtendedBluetoothDevice1.rssi = localScanResult.getRssi();
                    break;
                }
            }
        }
        notifyDataSetChanged();
    }

    public void update(List<ScanResult> paramList, String paramString)
    {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
            ScanResult localScanResult = (ScanResult)localIterator.next();
            ExtendedBluetoothDevice localExtendedBluetoothDevice1 = findDevice(localScanResult);
            if (localExtendedBluetoothDevice1 == null)
            {
                ExtendedBluetoothDevice localExtendedBluetoothDevice2 = new ExtendedBluetoothDevice(localScanResult);
                if ((localExtendedBluetoothDevice2.name != null) && (localExtendedBluetoothDevice2.name.contains(paramString)))
                {
                    Log.i("DeviceListAdapter", "Name: " + localExtendedBluetoothDevice2.name + " address: " + localExtendedBluetoothDevice2.device.getAddress());
                    this.mListValues.add(localExtendedBluetoothDevice2);
                }
            }
            else
            {
                if (localScanResult.getScanRecord() != null);
                for (String str = localScanResult.getScanRecord().getDeviceName(); ; str = null)
                {
                    localExtendedBluetoothDevice1.name = str;
                    localExtendedBluetoothDevice1.rssi = localScanResult.getRssi();
                    break;
                }
            }
        }
        notifyDataSetChanged();
    }

    private class ViewHolder
    {
        private TextView address;
        private TextView name;
        private ImageView rssi;

        private ViewHolder()
        {
        }
    }
}