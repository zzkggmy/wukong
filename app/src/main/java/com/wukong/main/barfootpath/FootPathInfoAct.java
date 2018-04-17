package com.wukong.main.barfootpath;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.wukong.main.R;
import com.wukong.main.base.BaseUIAct;
import com.wukong.main.utils.Commons;
import java.io.IOException;
import java.io.InputStream;

public class FootPathInfoAct extends BaseUIAct
{
    private TextView back;
    private ImageView image;
    private TextView info;
    private TextView name;
    private TextView title;

    private String getTxtInfo(String paramString)
    {
        try
        {
            InputStream localInputStream = getAssets().open("path/" + paramString + ".txt");
            byte[] arrayOfByte = new byte[localInputStream.available()];
            localInputStream.read(arrayOfByte);
            localInputStream.close();
            String str = new String(arrayOfByte);
            return str;
        }
        catch (IOException localIOException)
        {
            localIOException.printStackTrace();
        }
        return null;
    }

    private void initViews()
    {
        this.title = ((TextView)findViewById(R.id.nbl_center));
        this.back = ((TextView)findViewById(R.id.nbl_left));
        this.name = ((TextView)findViewById(R.id.fpm_name));
        this.info = ((TextView)findViewById(R.id.fpm_info));
        this.image = ((ImageView)findViewById(R.id.fp_infoimg));
        this.back.setText(getString());
        Intent localIntent = getIntent();
        String str1 = localIntent.getStringExtra("FootPathName");
        int i = localIntent.getIntExtra("FootPathImage", 2130903159);
        if (Commons.strIsNull(str1))
        {
            this.title.setText(str1);
            String str2 = getTxtInfo(str1);
            if (Commons.strIsNull(str2))
                this.info.setText(str2);
        }
        this.image.setImageResource(i);
        this.back.setOnClickListener(new View.OnClickListener()
        {
            public void onClick(View paramAnonymousView)
            {
                FootPathInfoAct.this.finish();
            }
        });
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(R.layout.activity_foot_path_info);
        initViews();
    }
}