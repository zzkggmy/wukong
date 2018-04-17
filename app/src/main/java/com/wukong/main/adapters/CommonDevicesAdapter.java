
package com.wukong.main.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.wukong.main.R;
import com.wukong.main.beans.CommonDevicesBean;
import com.wukong.main.utils.Commons;

import java.util.List;

public class CommonDevicesAdapter extends BaseAdapter {
    private LayoutInflater inflater;
    private List<CommonDevicesBean> list;

    public CommonDevicesAdapter(Context paramContext, List<CommonDevicesBean> paramList) {
        this.list = paramList;
        this.inflater = LayoutInflater.from(paramContext);
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
        ViewHolder localViewHolder;
        if (paramView == null) {
            localViewHolder = new ViewHolder();
            paramView = this.inflater.inflate(R.layout.item_commondevice, null);
            localViewHolder.dImage = ((ImageView) paramView.findViewById(R.id.item_cd_img));
            localViewHolder.dname = ((TextView) paramView.findViewById(R.id.item_cd_tv));
            paramView.setTag(localViewHolder);
        }
        while (true) {
            CommonDevicesBean localCommonDevicesBean = (CommonDevicesBean) this.list.get(paramInt);
            if (Commons.strIsNull(localCommonDevicesBean.getMotionName1st()))
                localViewHolder.dname.setText(localCommonDevicesBean.getMotionName1st().concat(localCommonDevicesBean.getTagCode()));
            if (Commons.strIsNull(localCommonDevicesBean.getImgUrl()))
                localViewHolder.dImage.setImageResource(Integer.valueOf(localCommonDevicesBean.getImgUrl()).intValue());
            return paramView;
            localViewHolder = (ViewHolder) paramView.getTag();
        }
    }

    class ViewHolder {
        ImageView dImage;
        TextView dname;
        ViewHolder() {
        }
    }
}