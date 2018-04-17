package com.wukong.main.widgets;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.ScreenUtils;

public class AppDialog extends Dialog
{
    private int SHOW = -1;
    private Button bottombtn;
    private Context context;
    private EditText editinfo;
    private LayoutInflater inflater;
    private LinearLayout layout;
    private Button leftbtn;
    private String leftstr;
    private Button rightbtn;
    private String rightstr;
    private String showmsg;
    private TextView textinfo;
    private String title;
    private TextView titleinfo;

    public AppDialog(Context paramContext, int paramInt)
    {
        super(paramContext);
        this.context = paramContext;
        this.SHOW = paramInt;
        this.inflater = LayoutInflater.from(this.context);
        switch (this.SHOW)
        {
            default:
            case 0:
            case 1:
            case 2:
        }
        while (true)
        {
            setCanceledOnTouchOutside(false);
            return;
            EditDialog();
            continue;
            MsgDialog();
        }
    }

    private void EditDialog()
    {
        View localView = this.inflater.inflate(2130968635, null);
        this.editinfo = ((EditText)localView.findViewById(2131558590));
        this.leftbtn = ((Button)localView.findViewById(2131558591));
        this.rightbtn = ((Button)localView.findViewById(2131558592));
        requestWindowFeature(1);
        setContentView(localView);
    }

    private void MsgDialog()
    {
        View localView = this.inflater.inflate(2130968636, null);
        this.titleinfo = ((TextView)localView.findViewById(2131558593));
        this.textinfo = ((TextView)localView.findViewById(2131558594));
        this.layout = ((LinearLayout)localView.findViewById(2131558595));
        this.leftbtn = ((Button)localView.findViewById(2131558596));
        this.rightbtn = ((Button)localView.findViewById(2131558597));
        this.bottombtn = ((Button)localView.findViewById(2131558598));
        switch (this.SHOW)
        {
            default:
            case 1:
            case 2:
        }
        while (true)
        {
            requestWindowFeature(1);
            setContentView(localView);
            return;
            this.bottombtn.setVisibility(0);
            this.layout.setVisibility(8);
            continue;
            this.bottombtn.setVisibility(8);
            this.layout.setVisibility(0);
        }
    }

    public String getEditStr()
    {
        return this.editinfo.getText().toString();
    }

    public void setBottombtnListener(View.OnClickListener paramOnClickListener)
    {
        this.bottombtn.setOnClickListener(paramOnClickListener);
    }

    public void setBtnText(String paramString1, String paramString2)
    {
        if (Commons.strIsNull(paramString1))
            this.leftbtn.setText(paramString1);
        if (Commons.strIsNull(paramString2))
            this.rightbtn.setText(paramString2);
    }

    public void setContentView(View paramView)
    {
        super.setContentView(paramView);
    }

    public void setDialogWidth(int paramInt)
    {
        WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
        localLayoutParams.width = (ScreenUtils.getScreenWidth(this.context) - paramInt);
        getWindow().setAttributes(localLayoutParams);
    }

    public void setLeftbtnListener(View.OnClickListener paramOnClickListener)
    {
        this.leftbtn.setOnClickListener(paramOnClickListener);
    }

    public void setRightbtnListener(View.OnClickListener paramOnClickListener)
    {
        this.rightbtn.setOnClickListener(paramOnClickListener);
    }

    public void setTitleMsg(String paramString1, String paramString2)
    {
        if (paramString1 != null)
            this.titleinfo.setText(paramString1);
        this.textinfo.setText(paramString2);
    }
}