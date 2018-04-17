package com.wukong.main.fragments;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.wukong.main.barroute.IndoorGymUI;
import com.wukong.main.barroute.PopGymSwaySiUI;
import com.wukong.main.barroute.PopGymWaistTwistUI;
import com.wukong.main.base.BaseFragment;
import com.wukong.main.test.BatchDeviceSignalConnTestUI;
import com.wukong.main.test.BatchDeviceSignalTestUI;
import com.wukong.main.test.DeviceSignalAndDataTestUI;
import com.wukong.main.test.DeviceSignalUI;
import com.wukong.main.test.GetMotionDeviceParams;
import com.wukong.main.test.HeartRateTest;
import com.wukong.main.test.IndoorGymTuningUI;
import com.wukong.main.test.SelectDeviceTypeUI;

public class RankFragment extends BaseFragment
{
    private int mVisibility = 4;

    private void initView(View paramView)
    {
        TextView localTextView1 = (TextView)paramView.findViewById(2131558631);
        localTextView1.setText("室内力量");
        localTextView1.setVisibility(this.mVisibility);
        localTextView1.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), IndoorGymUI.class);
                localIntent.putExtra("WeightName", "YAXLwt[b5c0ed8");
                localIntent.putExtra("WeightAddress", "C2:2F:B5:C0:ED:83");
                localIntent.putExtra("DeviceName", "YAXLdzfn[3EFC3380");
                localIntent.putExtra("DeviceAddress", "C0:87:3E:FC:33:80");
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView2 = (TextView)paramView.findViewById(2131558632);
        localTextView2.setVisibility(this.mVisibility);
        localTextView2.setText("室外力量");
        localTextView2.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), PopGymSwaySiUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView3 = (TextView)paramView.findViewById(2131558633);
        localTextView3.setVisibility(this.mVisibility);
        localTextView3.setText("转腰器");
        localTextView3.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), PopGymWaistTwistUI.class);
                localIntent.putExtra("DeviceName", "YAXLdzfn[");
                localIntent.putExtra("DeviceAddress", "D3:54:E8:49:85:16");
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView4 = (TextView)paramView.findViewById(2131558634);
        localTextView4.setVisibility(this.mVisibility);
        localTextView4.setText("重量检测");
        localTextView4.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), IndoorGymTuningUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView5 = (TextView)paramView.findViewById(2131558635);
        localTextView5.setVisibility(this.mVisibility);
        localTextView5.setText("Test");
        localTextView5.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), IndoorGymUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView6 = (TextView)paramView.findViewById(2131558636);
        localTextView6.setVisibility(this.mVisibility);
        localTextView6.setText("心率测试仪Test");
        localTextView6.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), HeartRateTest.class);
                localIntent.putExtra("Type", "心率测试仪");
                RankFragment.this.startActivityForResult(localIntent, 1);
            }
        });
        TextView localTextView7 = (TextView)paramView.findViewById(2131558637);
        localTextView7.setVisibility(this.mVisibility);
        localTextView7.setText("信号检测");
        localTextView7.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), DeviceSignalUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView8 = (TextView)paramView.findViewById(2131558638);
        localTextView8.setVisibility(this.mVisibility);
        localTextView8.setText("批量信号测试");
        localTextView8.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), BatchDeviceSignalTestUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView9 = (TextView)paramView.findViewById(2131558639);
        localTextView9.setVisibility(this.mVisibility);
        localTextView9.setText("批量连接测试");
        localTextView9.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), BatchDeviceSignalConnTestUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView10 = (TextView)paramView.findViewById(2131558640);
        localTextView10.setVisibility(this.mVisibility);
        localTextView10.setText("调试运动传感器参数");
        localTextView10.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), SelectDeviceTypeUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView11 = (TextView)paramView.findViewById(2131558641);
        localTextView11.setVisibility(this.mVisibility);
        localTextView11.setText("获取运动传感器初始参数");
        localTextView11.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), GetMotionDeviceParams.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
        TextView localTextView12 = (TextView)paramView.findViewById(2131558642);
        localTextView12.setVisibility(this.mVisibility);
        localTextView12.setText("传感器性能测试");
        localTextView12.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                Intent localIntent = new Intent(RankFragment.this.getActivity(), DeviceSignalAndDataTestUI.class);
                RankFragment.this.getActivity().startActivity(localIntent);
            }
        });
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
        View localView = paramLayoutInflater.inflate(2130968642, paramViewGroup, false);
        initView(localView);
        return localView;
    }
}