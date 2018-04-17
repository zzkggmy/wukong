package com.wukong.main.barmine;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.alibaba.fastjson.JSONObject;
import com.lidroid.xutils.BitmapUtils;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.wukong.main.base.BaseUIAct;
import com.wukong.main.base.HomeUIAct;
import com.wukong.main.beans.JsonData;
import com.wukong.main.beans.UserGetBean;
import com.wukong.main.utils.Commons;
import com.wukong.main.utils.Configs;
import com.wukong.main.utils.LOG;
import com.wukong.main.utils.UrlConfig;
import com.wukong.main.widgets.CircleImageView;
import java.io.File;

public class MyselfAct extends BaseUIAct
{
    private static final int CAMERA_WITH_DATA = 0;
    private static final int PHOTO_CUT = 3;
    private static final int PHOTO_PICKED_WITH_DATA = 1;
    public final int MYCODE = 1;
    private TextView account;
    private String accountstr;
    private EditText address;
    private String addstr;
    private EditText birth;
    private String birthstr;
    private BitmapUtils bitmapUtils;
    private EditText email;
    private String emailstr;
    private String fileName;
    private String flag = "";
    private EditText height;
    private String heightstr;
    private String name;
    private TextView nbleft;
    private TextView nblright;
    private TextView nbtitle;
    private Bitmap photo = null;
    private String photopath;
    private String sexStr = "1";
    private TextView seximg;
    private CircleImageView userImg;
    private EditText username;
    private EditText weight;
    private String weightstr;
    private boolean whereFrom;

    private void CheckPermission()
    {
        if (Build.VERSION.SDK_INT >= 23)
        {
            if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0)
                ActivityCompat.requestPermissions(this, new String[] { "android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE" }, 1);
            return;
        }
        takePhotos();
    }

    private void chooseWay()
    {
        String[] arrayOfString = new String[2];
        arrayOfString[0] = getString(2131165359);
        arrayOfString[1] = getString(2131165380);
        new AlertDialog.Builder(this).setItems(arrayOfString, new DialogInterface.OnClickListener()
        {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
                switch (paramAnonymousInt)
                {
                    default:
                        return;
                    case 0:
                        MyselfAct.this.CheckPermission();
                        return;
                    case 1:
                }
                MyselfAct.this.getPhoto();
            }
        }).setNegativeButton(getString(2131165228), null).show();
    }

    private void finishAct()
    {
        if (this.whereFrom)
            startActivity(new Intent(this, HomeUIAct.class));
        finish();
    }

    private void getPhoto()
    {
        try
        {
            Intent localIntent = new Intent("android.intent.action.GET_CONTENT", null);
            localIntent.setType("image/*");
            startActivityForResult(localIntent, 1);
            return;
        }
        catch (Exception localException)
        {
            showToast(getString(2131165366));
        }
    }

    private void getServicePhoto()
    {
        String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.USER_PHOTO + str, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + (String)paramAnonymousResponseInfo.result);
                if (((JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class)).getCode().equals(Configs.isSuccess));
            }
        });
    }

    private void getUserInfo()
    {
        final String str = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addQueryStringParameter("token", str);
        new HttpUtils().send(HttpRequest.HttpMethod.GET, UrlConfig.GET_USER, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + (String)paramAnonymousResponseInfo.result);
                JsonData localJsonData = (JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class);
                UserGetBean localUserGetBean;
                if (localJsonData.getCode().equals(Configs.isSuccess))
                {
                    localUserGetBean = (UserGetBean)JSONObject.parseObject(localJsonData.getData(), UserGetBean.class);
                    if (!Commons.strIsNull(localUserGetBean.getHeadimg()))
                        break label244;
                    MyselfAct.this.bitmapUtils.display(MyselfAct.this.userImg, localUserGetBean.getHeadimg());
                }
                while (true)
                {
                    LOG.i(UrlConfig.USER_PHOTO + str);
                    if (Commons.strIsNull(localUserGetBean.getNickname()))
                        MyselfAct.this.username.setText(localUserGetBean.getNickname());
                    if (Commons.strIsNull(localUserGetBean.getWeight()))
                        MyselfAct.this.weight.setText(localUserGetBean.getWeight());
                    if (Commons.strIsNull(localUserGetBean.getHeight()))
                        MyselfAct.this.height.setText(localUserGetBean.getHeight());
                    if (Commons.strIsNull(localUserGetBean.getSex()))
                    {
                        if (!localUserGetBean.getSex().equals("1"))
                            break;
                        MyselfAct.this.seximg.setText(MyselfAct.this.getString(2131165227));
                    }
                    return;
                    label244: MyselfAct.this.bitmapUtils.display(MyselfAct.this.userImg, UrlConfig.USER_PHOTO + str);
                }
                MyselfAct.this.seximg.setText(MyselfAct.this.getString(2131165277));
            }
        });
    }

    private void initViews()
    {
        this.nbleft = ((TextView)findViewById(2131558664));
        this.nbtitle = ((TextView)findViewById(2131558665));
        this.nblright = ((TextView)findViewById(2131558666));
        this.userImg = ((CircleImageView)findViewById(2131558513));
        this.seximg = ((TextView)findViewById(2131558515));
        this.account = ((TextView)findViewById(2131558516));
        this.username = ((EditText)findViewById(2131558514));
        this.height = ((EditText)findViewById(2131558517));
        this.weight = ((EditText)findViewById(2131558518));
        this.birth = ((EditText)findViewById(2131558519));
        this.email = ((EditText)findViewById(2131558520));
        this.address = ((EditText)findViewById(2131558521));
        this.nbleft.setText(getString(2131165223));
        this.nbtitle.setText(getString(2131165307));
        if (Commons.isConnectNet(getApplicationContext()))
            getUserInfo();
        while (true)
        {
            this.whereFrom = false;
            String str1 = getIntent().getStringExtra("isFromLogin");
            if ((Commons.strIsNull(str1)) && (str1.equals("yes")))
                this.whereFrom = true;
            this.bitmapUtils = new BitmapUtils(getApplicationContext());
            if (Commons.strIsNull(this.photopath))
            {
                LOG.i("photopath=" + this.photopath);
                this.bitmapUtils.display(this.userImg, this.photopath);
            }
            String str2 = Commons.getPreference(Configs.token);
            this.bitmapUtils.display(this.userImg, UrlConfig.USER_PHOTO + str2);
            this.accountstr = Commons.getPreference(Configs.mobile);
            TextView localTextView = this.account;
            String str3 = getString(2131165367);
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = this.accountstr;
            localTextView.setText(String.format(str3, arrayOfObject));
            this.nblright.setText(getString(2131165334));
            this.nblright.setTextColor(getResources().getColor(2131427417));
            this.nbleft.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    MyselfAct.this.finishAct();
                }
            });
            this.nblright.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    MyselfAct.this.updateUser();
                }
            });
            this.userImg.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    MyselfAct.this.chooseWay();
                }
            });
            this.seximg.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    if (MyselfAct.this.seximg.getText().toString().equals(MyselfAct.this.getString(2131165227)))
                    {
                        MyselfAct.this.seximg.setText(MyselfAct.this.getString(2131165277));
                        MyselfAct.access$402(MyselfAct.this, "2");
                        return;
                    }
                    MyselfAct.this.seximg.setText(MyselfAct.this.getString(2131165227));
                    MyselfAct.access$402(MyselfAct.this, "1");
                }
            });
            this.birth.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    MyselfAct.access$502(MyselfAct.this, "birthday");
                    MyselfAct.this.toChoose();
                }
            });
            this.height.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    MyselfAct.access$502(MyselfAct.this, "height");
                    MyselfAct.this.toChoose();
                }
            });
            this.weight.setOnClickListener(new View.OnClickListener()
            {
                public void onClick(View paramAnonymousView)
                {
                    MyselfAct.access$502(MyselfAct.this, "weight");
                    MyselfAct.this.toChoose();
                }
            });
            return;
            this.heightstr = Commons.getPreference(Configs.height);
            this.weightstr = Commons.getPreference(Configs.weight);
            this.birthstr = Commons.getPreference(Configs.birthday);
            this.sexStr = Commons.getPreference(Configs.userSex);
            this.name = Commons.getPreference(Configs.nickname);
            this.photopath = Commons.getPreference(Configs.userHeade);
            this.addstr = Commons.getPreference(Configs.address);
            this.emailstr = Commons.getPreference(Configs.email);
            this.username.setText(this.name);
            this.height.setText(this.heightstr + " cm");
            this.weight.setText(this.weightstr + " kg");
            this.birth.setText(this.birthstr);
            this.address.setText(this.accountstr);
            this.email.setText(this.emailstr);
            if (this.sexStr.equals("1"))
                this.seximg.setText(getString(2131165227));
            else
                this.seximg.setText(getString(2131165277));
        }
    }

    // ERROR //
    private void saveCropPic(Bitmap paramBitmap)
    {
        // Byte code:
        //   0: new 458	java/io/ByteArrayOutputStream
        //   3: dup
        //   4: invokespecial 459	java/io/ByteArrayOutputStream:<init>	()V
        //   7: astore_2
        //   8: aconst_null
        //   9: astore_3
        //   10: aload_1
        //   11: getstatic 465	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
        //   14: bipush 100
        //   16: aload_2
        //   17: invokevirtual 471	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   20: pop
        //   21: getstatic 474	com/wukong/main/utils/Configs:SD_PATH	Ljava/lang/String;
        //   24: astore 9
        //   26: new 476	java/io/File
        //   29: dup
        //   30: aload 9
        //   32: invokespecial 478	java/io/File:<init>	(Ljava/lang/String;)V
        //   35: astore 10
        //   37: aload 10
        //   39: invokevirtual 482	java/io/File:exists	()Z
        //   42: istore 11
        //   44: aconst_null
        //   45: astore_3
        //   46: iload 11
        //   48: ifne +9 -> 57
        //   51: aload 10
        //   53: invokevirtual 485	java/io/File:mkdir	()Z
        //   56: pop
        //   57: aload_0
        //   58: new 243	java/lang/StringBuilder
        //   61: dup
        //   62: invokespecial 244	java/lang/StringBuilder:<init>	()V
        //   65: aload 9
        //   67: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   70: ldc_w 487
        //   73: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   76: invokestatic 493	java/lang/System:currentTimeMillis	()J
        //   79: invokevirtual 496	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
        //   82: ldc_w 498
        //   85: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   88: invokevirtual 257	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   91: putfield 500	com/wukong/main/barmine/MyselfAct:fileName	Ljava/lang/String;
        //   94: aload_0
        //   95: aload_0
        //   96: getfield 500	com/wukong/main/barmine/MyselfAct:fileName	Ljava/lang/String;
        //   99: putfield 148	com/wukong/main/barmine/MyselfAct:photopath	Ljava/lang/String;
        //   102: new 243	java/lang/StringBuilder
        //   105: dup
        //   106: invokespecial 244	java/lang/StringBuilder:<init>	()V
        //   109: ldc_w 502
        //   112: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   115: aload_0
        //   116: getfield 148	com/wukong/main/barmine/MyselfAct:photopath	Ljava/lang/String;
        //   119: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   122: invokevirtual 257	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   125: invokestatic 358	com/wukong/main/utils/LOG:i	(Ljava/lang/String;)V
        //   128: new 243	java/lang/StringBuilder
        //   131: dup
        //   132: invokespecial 244	java/lang/StringBuilder:<init>	()V
        //   135: ldc_w 504
        //   138: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   141: getstatic 474	com/wukong/main/utils/Configs:SD_PATH	Ljava/lang/String;
        //   144: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   147: invokevirtual 257	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   150: invokestatic 358	com/wukong/main/utils/LOG:i	(Ljava/lang/String;)V
        //   153: new 506	java/io/FileOutputStream
        //   156: dup
        //   157: new 476	java/io/File
        //   160: dup
        //   161: aload_0
        //   162: getfield 500	com/wukong/main/barmine/MyselfAct:fileName	Ljava/lang/String;
        //   165: invokespecial 478	java/io/File:<init>	(Ljava/lang/String;)V
        //   168: invokespecial 509	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
        //   171: astore 13
        //   173: aload 13
        //   175: aload_2
        //   176: invokevirtual 513	java/io/ByteArrayOutputStream:toByteArray	()[B
        //   179: invokevirtual 517	java/io/FileOutputStream:write	([B)V
        //   182: aload 13
        //   184: invokevirtual 520	java/io/FileOutputStream:flush	()V
        //   187: aload_2
        //   188: ifnull +7 -> 195
        //   191: aload_2
        //   192: invokevirtual 523	java/io/ByteArrayOutputStream:close	()V
        //   195: aload 13
        //   197: ifnull +8 -> 205
        //   200: aload 13
        //   202: invokevirtual 524	java/io/FileOutputStream:close	()V
        //   205: return
        //   206: astore 14
        //   208: aload 14
        //   210: invokevirtual 527	java/io/IOException:printStackTrace	()V
        //   213: return
        //   214: astore 7
        //   216: aload 7
        //   218: invokevirtual 528	java/lang/Exception:printStackTrace	()V
        //   221: aload_2
        //   222: ifnull +7 -> 229
        //   225: aload_2
        //   226: invokevirtual 523	java/io/ByteArrayOutputStream:close	()V
        //   229: aload_3
        //   230: ifnull -25 -> 205
        //   233: aload_3
        //   234: invokevirtual 524	java/io/FileOutputStream:close	()V
        //   237: return
        //   238: astore 8
        //   240: aload 8
        //   242: invokevirtual 527	java/io/IOException:printStackTrace	()V
        //   245: return
        //   246: astore 5
        //   248: aload_2
        //   249: ifnull +7 -> 256
        //   252: aload_2
        //   253: invokevirtual 523	java/io/ByteArrayOutputStream:close	()V
        //   256: aload_3
        //   257: ifnull +7 -> 264
        //   260: aload_3
        //   261: invokevirtual 524	java/io/FileOutputStream:close	()V
        //   264: aload 5
        //   266: athrow
        //   267: astore 6
        //   269: aload 6
        //   271: invokevirtual 527	java/io/IOException:printStackTrace	()V
        //   274: goto -10 -> 264
        //   277: astore 5
        //   279: aload 13
        //   281: astore_3
        //   282: goto -34 -> 248
        //   285: astore 7
        //   287: aload 13
        //   289: astore_3
        //   290: goto -74 -> 216
        //
        // Exception table:
        //   from	to	target	type
        //   191	195	206	java/io/IOException
        //   200	205	206	java/io/IOException
        //   21	44	214	java/lang/Exception
        //   51	57	214	java/lang/Exception
        //   57	173	214	java/lang/Exception
        //   225	229	238	java/io/IOException
        //   233	237	238	java/io/IOException
        //   21	44	246	finally
        //   51	57	246	finally
        //   57	173	246	finally
        //   216	221	246	finally
        //   252	256	267	java/io/IOException
        //   260	264	267	java/io/IOException
        //   173	187	277	finally
        //   173	187	285	java/lang/Exception
    }

    private void setPicToView(Intent paramIntent)
    {
        Bundle localBundle = paramIntent.getExtras();
        if (localBundle != null)
        {
            Bitmap localBitmap = (Bitmap)localBundle.getParcelable("data");
            this.userImg.setImageBitmap(localBitmap);
            saveCropPic(localBitmap);
        }
    }

    private void showToast(String paramString)
    {
        Toast.makeText(getApplicationContext(), paramString, 0).show();
    }

    private void startPhotoZoom(Uri paramUri, int paramInt)
    {
        Intent localIntent = new Intent("com.android.camera.action.CROP");
        localIntent.setDataAndType(paramUri, "image/*");
        localIntent.putExtra("crop", true);
        localIntent.putExtra("aspectX", 1);
        localIntent.putExtra("aspectY", 1);
        localIntent.putExtra("outputX", paramInt);
        localIntent.putExtra("outputY", paramInt);
        localIntent.putExtra("return-data", true);
        startActivityForResult(localIntent, 3);
    }

    private void takePhotos()
    {
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            startActivityForResult(new Intent("android.media.action.IMAGE_CAPTURE"), 0);
            return;
        }
        showToast(getString(2131165316));
    }

    private void toChoose()
    {
        Intent localIntent = new Intent(getApplicationContext(), UserDataChoose.class);
        localIntent.putExtra("usercenterFLAG", this.flag);
        startActivity(localIntent);
    }

    private void updateUser()
    {
        final String str1 = Commons.getEditInfo(this.username);
        String str2 = Commons.getEditInfo(this.email);
        String str3 = Commons.getPreference(Configs.token);
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.addBodyParameter("token", str3);
        if (Commons.strIsNull(this.photopath))
            localRequestParams.addBodyParameter("photo", new File(this.photopath));
        localRequestParams.addBodyParameter("username", this.accountstr);
        localRequestParams.addBodyParameter("nickname", str1);
        localRequestParams.addBodyParameter("sex", this.sexStr);
        localRequestParams.addBodyParameter("birthday", this.birthstr);
        localRequestParams.addBodyParameter("email", str2);
        localRequestParams.addBodyParameter("height", this.heightstr);
        localRequestParams.addBodyParameter("weight", this.weightstr);
        new HttpUtils().send(HttpRequest.HttpMethod.POST, UrlConfig.USER_UPDATE, localRequestParams, new RequestCallBack()
        {
            public void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString)
            {
            }

            public void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo)
            {
                LOG.i("onSuccess" + ((String)paramAnonymousResponseInfo.result).toString());
                String str = Commons.getEditInfo(MyselfAct.this.address);
                if (Commons.strIsNull(str))
                    Commons.setPreference(Configs.address, str);
                if (Commons.strIsNull(MyselfAct.this.photopath))
                    Commons.setPreference(Configs.userHeade, MyselfAct.this.photopath);
                Commons.setPreference(Configs.userSex, MyselfAct.this.sexStr);
                Commons.setPreference(Configs.nickname, str1);
                Commons.setPreference(Configs.weight, MyselfAct.this.weightstr);
                Commons.setPreference(Configs.height, MyselfAct.this.heightstr);
                if (((JsonData)JSONObject.parseObject(((String)paramAnonymousResponseInfo.result).toString(), JsonData.class)).getCode().equals(Configs.isSuccess))
                    MyselfAct.this.finishAct();
            }
        });
    }

    protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    {
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        if (paramInt2 != -1);
        do
        {
            do
            {
                Bundle localBundle;
                do
                {
                    return;
                    switch (paramInt1)
                    {
                        case 2:
                        default:
                            return;
                        case 0:
                            localBundle = paramIntent.getExtras();
                        case 1:
                        case 3:
                    }
                }
                while (localBundle == null);
                this.photo = ((Bitmap)localBundle.get("data"));
                saveCropPic(this.photo);
                this.userImg.setImageBitmap(this.photo);
                return;
            }
            while (paramIntent == null);
            startPhotoZoom(paramIntent.getData(), 100);
            return;
        }
        while (paramIntent == null);
        setPicToView(paramIntent);
    }

    protected void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        setContentView(2130968611);
        initViews();
    }

    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
        if (paramInt == 4)
            finishAct();
        return super.onKeyDown(paramInt, paramKeyEvent);
    }

    public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
        super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
        switch (paramInt)
        {
            default:
                return;
            case 1:
        }
        takePhotos();
    }

    protected void onResume()
    {
        super.onResume();
        String str1 = Commons.getPreference("CHOOSEVALUE");
        String str2 = this.flag;
        int i = -1;
        switch (str2.hashCode())
        {
            default:
            case -1221029593:
            case -791592328:
            case 1069376125:
        }
        while (true)
            switch (i)
            {
                default:
                    return;
                if (str2.equals("height"))
                {
                    i = 0;
                    continue;
                    if (str2.equals("weight"))
                    {
                        i = 1;
                        continue;
                        if (str2.equals("birthday"))
                            i = 2;
                    }
                }
                break;
                case 0:
                case 1:
                case 2:
            }
        this.heightstr = str1;
        this.height.setText(str1 + " cm");
        return;
        this.weightstr = str1;
        this.weight.setText(str1 + " kg");
        return;
        this.birthstr = str1;
        this.birth.setText(str1);
    }
}
