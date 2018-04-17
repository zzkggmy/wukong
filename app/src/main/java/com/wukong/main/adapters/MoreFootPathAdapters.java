package com.wukong.main.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.wukong.main.R;
import com.wukong.main.beans.MoreFootpathBean;
import java.text.DecimalFormat;
import java.util.List;

public class MoreFootPathAdapters extends BaseAdapter
{
    private Context context;
    private ViewHolder holder;
    private LayoutInflater inflater;
    private List<MoreFootpathBean> l;

    public MoreFootPathAdapters(Context paramContext, List<MoreFootpathBean> paramList)
    {
        this.l = paramList;
        this.inflater = LayoutInflater.from(paramContext);
    }

    private String getFormatNum(String paramString)
    {
        double d = Double.valueOf(paramString).doubleValue();
        return String.valueOf(new DecimalFormat("#.#").format(d));
    }

    public int getCount()
    {
        return this.l.size();
    }

    public Object getItem(int paramInt)
    {
        return this.l.get(paramInt);
    }

    public long getItemId(int paramInt)
    {
        return paramInt;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
        this.holder = new ViewHolder();
        if (paramView == null)
        {
            paramView = this.inflater.inflate(R.layout.item_more_footpath, null);
            this.holder.distance = ((TextView)paramView.findViewById(R.id.item_mf_address));
            this.holder.image = ((ImageView)paramView.findViewById(R.id.item_mf_distance));
            paramView.setTag(this.holder);
        }
        while (true)
        {
            MoreFootpathBean localMoreFootpathBean = (MoreFootpathBean)this.l.get(paramInt);
            this.holder.distance.setText(localMoreFootpathBean.getDistance());
            this.holder.image.setImageResource(localMoreFootpathBean.getImageID());
            return paramView;
            this.holder = ((ViewHolder)paramView.getTag());
        }
    }

    class ViewHolder
    {
        TextView address;
        TextView distance;
        ImageView image;

        ViewHolder()
        {
        }
    }
}