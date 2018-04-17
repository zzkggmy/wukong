package com.wukong.main.barfootpath;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.TextView;
import com.wukong.main.R;
import com.wukong.main.adapters.MoreFootPathAdapters;
import com.wukong.main.base.BaseUIAct;
import com.wukong.main.beans.JsonData;
import com.wukong.main.beans.MoreFPListBean;
import com.wukong.main.beans.MoreFootpathBean;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import java.util.ArrayList;
import java.util.List;

public class MoreFootpathAct extends BaseUIAct
{
    private MoreFootPathAdapters adapters;
    private TextView back;
    private GridView gridview;
    String latitude;
    private List<MoreFootpathBean> list;
    private ListView listview;
    String lontitude;
    private TextView title;

    private void getNearWalk()
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("token", str);
        localRequestParams.addQueryStringParameter("lng", this.lontitude);
        localRequestParams.addQueryStringParameter("lat", this.latitude);
        localRequestParams.addQueryStringParameter("radius", "20");
        localRequestParams.addQueryStringParameter("limit", "10");
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.GET_WALK, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + (String)paramAnonymousResponseInfo.result);
                JsonData localJsonData = (JsonData)JSONObject.parseObject((String)paramAnonymousResponseInfo.result, JsonData.class);
                if (localJsonData.getCode().equals(Configs.isSuccess))
                {
                    MoreFPListBean localMoreFPListBean = (MoreFPListBean)JSONObject.parseObject(localJsonData.getData(), MoreFPListBean.class);
                    MoreFootpathAct.access$002(MoreFootpathAct.this, JSONArray.parseArray(localMoreFPListBean.getItems(), MoreFootpathBean.class));
                    LOG.i("list size = " + MoreFootpathAct.this.list.size());
                    MoreFootpathAct.access$102(MoreFootpathAct.this, new MoreFootPathAdapters(MoreFootpathAct.this.getApplicationContext(), MoreFootpathAct.this.list));
                    MoreFootpathAct.this.listview.setAdapter(MoreFootpathAct.this.adapters);
                }
            }
        });
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(R.layout.act_more_footpath);
        this.title = ((TextView)findViewById(R.id.nbl_center));
        this.back = ((TextView)findViewById(R.id.nbl_left));
        this.title.setText(getString(R.string.morefootpath));
        this.back.setText(getString(R.string.back));
        this.gridview = ((GridView)findViewById(R.id.mf_gridview));
        this.list = new ArrayList();
        int[] arrayOfInt = { 2130903127, 2130903128, 2130903129, 2130903130, 2130903131, 2130903132, 2130903133, 2130903134, 2130903135, 2130903136, 2130903137, 2130903138, 2130903139, 2130903140, 2130903141, 2130903142, 2130903143, 2130903144, 2130903145, 2130903146, 2130903147, 2130903148, 2130903149, 2130903150, 2130903151, 2130903152, 2130903153, 2130903154, 2130903155, 2130903156, 2130903158 };
        String[] arrayOfString = getResources().getStringArray(2131492869);
        for (int i = 0; i < arrayOfInt.length; i++)
        {
            MoreFootpathBean localMoreFootpathBean = new MoreFootpathBean();
            localMoreFootpathBean.setDistance(arrayOfString[i]);
            localMoreFootpathBean.setImageID(arrayOfInt[i]);
            this.list.add(localMoreFootpathBean);
        }
        this.adapters = new MoreFootPathAdapters(getApplicationContext(), this.list);
        this.gridview.setAdapter(this.adapters);
        this.gridview.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
            public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
            }
        });
        this.back.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                MoreFootpathAct.this.finish();
            }
        });
    }
}