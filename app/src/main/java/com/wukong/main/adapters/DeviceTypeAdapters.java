package com.wukong.main.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wukong.main.R;
import com.wukong.main.beans.DeviceTypesBean;

import java.util.List;

public class DeviceTypeAdapters extends BaseAdapter {
    private ViewHolder holder;
    private LayoutInflater inflater;
    private List<DeviceTypesBean> list;

    public DeviceTypeAdapters(Context paramContext, List<DeviceTypesBean> paramList) {
        this.inflater = LayoutInflater.from(paramContext);
        this.list = paramList;
    }

    public int getCount() {
        return this.list.size();
    }

    public Object getItem(int paramInt) {
        return this.list.get(paramInt);
    }

    public long getItemId(int paramInt) {
        return paramInt;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        if (paramView == null) {
            paramView = this.inflater.inflate(R.layout.item_input, null);
            this.holder = new ViewHolder();
            this.holder.text = ((TextView) paramView.findViewById(R.id.item_text));
            paramView.setTag(this.holder);
        }
        while (true) {
            DeviceTypesBean localDeviceTypesBean = (DeviceTypesBean) this.list.get(paramInt);
            this.holder.text.setText(localDeviceTypesBean.getName());
            return paramView;
            this.holder = ((ViewHolder) paramView.getTag());
        }
    }

    class ViewHolder {
        TextView text;

        ViewHolder() {
        }
    }
}