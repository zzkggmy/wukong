package com.wukong.main.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import junit.framework.Assert;

public class Util
{
    public static String ACTION_OPEN_DOCUMENT = "android.intent.action.OPEN_DOCUMENT";
    public static int Build_VERSION_KITKAT = 0;
    private static final int MAX_DECODE_PICTURE_SIZE = 2764800;
    private static final String PATH_DOCUMENT = "document";
    private static final String TAG = "SDK_Sample.Util";
    private static String hexString = "0123456789ABCDEF";
    private static Dialog mProgressDialog;
    private static Toast mToast;

    public static byte[] bmpToByteArray(Bitmap paramBitmap, boolean paramBoolean)
    {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
        if ((paramBoolean) && (!paramBitmap.isRecycled()))
            paramBitmap.recycle();
        byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
        try
        {
            localByteArrayOutputStream.close();
            return arrayOfByte;
        }
        catch (Exception localException)
        {
            localException.printStackTrace();
        }
        return arrayOfByte;
    }

    public static String bytesToHexString(byte[] paramArrayOfByte)
    {
        StringBuilder localStringBuilder = new StringBuilder("");
        if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
            return null;
        for (int i = 0; i < paramArrayOfByte.length; i++)
        {
            String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
            if (str.length() < 2)
                localStringBuilder.append(0);
            localStringBuilder.append(str);
        }
        return localStringBuilder.toString();
    }

    private static byte charToByte(char paramChar)
    {
        return (byte)"0123456789ABCDEF".indexOf(paramChar);
    }

    private static int computeInitialSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
    {
        double d1 = paramOptions.outWidth;
        double d2 = paramOptions.outHeight;
        int i;
        int j;
        if (paramInt2 == -1)
        {
            i = 1;
            if (paramInt1 != -1)
                break label60;
            j = 128;
            label31: if (j >= i)
                break label84;
        }
        label60: label84:
        do
        {
            return i;
            i = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
            break;
            j = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
            break label31;
            if ((paramInt2 == -1) && (paramInt1 == -1))
                return 1;
        }
        while (paramInt1 == -1);
        return j;
    }

    public static int computeSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
    {
        int i = computeInitialSampleSize(paramOptions, paramInt1, paramInt2);
        if (i <= 8)
        {
            j = 1;
            while (j < i)
                j <<= 1;
        }
        int j = 8 * ((i + 7) / 8);
        return j;
    }

    public static final void dismissDialog()
    {
        if (mProgressDialog != null)
        {
            mProgressDialog.dismiss();
            mProgressDialog = null;
        }
    }

    public static Bitmap extractThumbNail(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
    {
        boolean bool;
        BitmapFactory.Options localOptions;
        double d1;
        double d2;
        double d3;
        label191: Object localObject;
        if ((paramString != null) && (!paramString.equals("")) && (paramInt1 > 0) && (paramInt2 > 0))
        {
            bool = true;
            Assert.assertTrue(bool);
            localOptions = new BitmapFactory.Options();
            try
            {
                localOptions.inJustDecodeBounds = true;
                Bitmap localBitmap1 = BitmapFactory.decodeFile(paramString, localOptions);
                if ((localBitmap1 != null) && (!localBitmap1.isRecycled()))
                    localBitmap1.recycle();
                Log.d("SDK_Sample.Util", "extractThumbNail: round=" + paramInt2 + "x" + paramInt1 + ", crop=" + paramBoolean);
                d1 = 1.0D * localOptions.outHeight / paramInt1;
                d2 = 1.0D * localOptions.outWidth / paramInt2;
                Log.d("SDK_Sample.Util", "extractThumbNail: extract beX = " + d2 + ", beY = " + d1);
                if (paramBoolean)
                    if (d1 > d2)
                    {
                        d3 = d2;
                        localOptions.inSampleSize = ((int)d3);
                        if (localOptions.inSampleSize <= 1);
                        for (localOptions.inSampleSize = 1; localOptions.outHeight * localOptions.outWidth / localOptions.inSampleSize > 2764800; localOptions.inSampleSize = (1 + localOptions.inSampleSize));
                    }
            }
            catch (OutOfMemoryError localOutOfMemoryError)
            {
                Log.e("SDK_Sample.Util", "decode bitmap failed: " + localOutOfMemoryError.getMessage());
                localObject = null;
            }
        }
        Bitmap localBitmap3;
        do
        {
            do
            {
                return localObject;
                bool = false;
                break;
                d3 = d1;
                break label191;
                if (d1 < d2)
                {
                    d3 = d2;
                    break label191;
                }
                d3 = d1;
                break label191;
                int i = paramInt1;
                int j = paramInt2;
                if (paramBoolean)
                    if (d1 > d2)
                    {
                        double d4 = 1.0D * j;
                        i = (int)(d4 * localOptions.outHeight / localOptions.outWidth);
                    }
                while (true)
                {
                    localOptions.inJustDecodeBounds = false;
                    Log.i("SDK_Sample.Util", "bitmap required size=" + j + "x" + i + ", orig=" + localOptions.outWidth + "x" + localOptions.outHeight + ", sample=" + localOptions.inSampleSize);
                    localObject = BitmapFactory.decodeFile(paramString, localOptions);
                    if (localObject != null)
                        break;
                    Log.e("SDK_Sample.Util", "bitmap decode failed");
                    return null;
                    j = (int)(1.0D * i * localOptions.outWidth / localOptions.outHeight);
                    continue;
                    if (d1 < d2)
                        i = (int)(1.0D * j * localOptions.outHeight / localOptions.outWidth);
                    else
                        j = (int)(1.0D * i * localOptions.outWidth / localOptions.outHeight);
                }
                Log.i("SDK_Sample.Util", "bitmap decoded size=" + ((Bitmap)localObject).getWidth() + "x" + ((Bitmap)localObject).getHeight());
                Bitmap localBitmap2 = Bitmap.createScaledBitmap((Bitmap)localObject, j, i, true);
                if ((localBitmap2 != null) && (!((Bitmap)localObject).isRecycled()))
                {
                    ((Bitmap)localObject).recycle();
                    localObject = localBitmap2;
                }
            }
            while (!paramBoolean);
            localBitmap3 = Bitmap.createBitmap((Bitmap)localObject, ((Bitmap)localObject).getWidth() - paramInt2 >> 1, ((Bitmap)localObject).getHeight() - paramInt1 >> 1, paramInt2, paramInt1);
        }
        while (localBitmap3 == null);
        if (!((Bitmap)localObject).isRecycled())
            ((Bitmap)localObject).recycle();
        Log.i("SDK_Sample.Util", "bitmap croped size=" + localBitmap3.getWidth() + "x" + localBitmap3.getHeight());
        return localBitmap3;
    }

    public static String getDataColumn(Context paramContext, Uri paramUri, String paramString, String[] paramArrayOfString)
    {
        Cursor localCursor = null;
        String[] arrayOfString = { "_data" };
        try
        {
            localCursor = paramContext.getContentResolver().query(paramUri, arrayOfString, paramString, paramArrayOfString, null);
            if ((localCursor != null) && (localCursor.moveToFirst()))
            {
                String str = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
                return str;
            }
            return null;
        }
        finally
        {
            if (localCursor != null)
                localCursor.close();
        }
    }

    private static String getDocumentId(Uri paramUri)
    {
        List localList = paramUri.getPathSegments();
        if (localList.size() < 2)
            throw new IllegalArgumentException("Not a document: " + paramUri);
        if (!"document".equals(localList.get(0)))
            throw new IllegalArgumentException("Not a document: " + paramUri);
        return (String)localList.get(1);
    }

    // ERROR //
    public static byte[] getHtmlByteArray(String paramString)
    {
        // Byte code:
        //   0: new 304	java/net/URL
        //   3: dup
        //   4: aload_0
        //   5: invokespecial 305	java/net/URL:<init>	(Ljava/lang/String;)V
        //   8: astore_1
        //   9: aload_1
        //   10: invokevirtual 309	java/net/URL:openConnection	()Ljava/net/URLConnection;
        //   13: checkcast 311	java/net/HttpURLConnection
        //   16: astore 5
        //   18: aload 5
        //   20: invokevirtual 314	java/net/HttpURLConnection:getResponseCode	()I
        //   23: istore 6
        //   25: aconst_null
        //   26: astore_3
        //   27: iload 6
        //   29: sipush 200
        //   32: if_icmpne +13 -> 45
        //   35: aload 5
        //   37: invokevirtual 318	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
        //   40: astore 7
        //   42: aload 7
        //   44: astore_3
        //   45: aload_3
        //   46: invokestatic 322	com/wukong/main/utils/Util:inputStreamToByte	(Ljava/io/InputStream;)[B
        //   49: areturn
        //   50: astore_2
        //   51: aload_2
        //   52: invokevirtual 323	java/net/MalformedURLException:printStackTrace	()V
        //   55: aconst_null
        //   56: astore_3
        //   57: goto -12 -> 45
        //   60: astore 4
        //   62: aload 4
        //   64: invokevirtual 324	java/io/IOException:printStackTrace	()V
        //   67: aconst_null
        //   68: astore_3
        //   69: goto -24 -> 45
        //   72: astore 4
        //   74: goto -12 -> 62
        //   77: astore_2
        //   78: goto -27 -> 51
        //
        // Exception table:
        //   from	to	target	type
        //   0	9	50	java/net/MalformedURLException
        //   0	9	60	java/io/IOException
        //   9	25	72	java/io/IOException
        //   35	42	72	java/io/IOException
        //   9	25	77	java/net/MalformedURLException
        //   35	42	77	java/net/MalformedURLException
    }

    public static String getPath(Context paramContext, Uri paramUri)
    {
        int i;
        String str1;
        if (Build.VERSION.SDK_INT >= 19)
        {
            i = 1;
            if ((i == 0) || (!isDocumentUri(paramContext, paramUri)))
                break label256;
            if (!isExternalStorageDocument(paramUri))
                break label100;
            String[] arrayOfString3 = getDocumentId(paramUri).split(":");
            boolean bool4 = "primary".equalsIgnoreCase(arrayOfString3[0]);
            str1 = null;
            if (bool4)
                str1 = Environment.getExternalStorageDirectory() + "/" + arrayOfString3[1];
        }
        label100: boolean bool1;
        label256:
        do
        {
            boolean bool2;
            do
            {
                return str1;
                i = 0;
                break;
                if (isDownloadsDocument(paramUri))
                {
                    String str3 = getDocumentId(paramUri);
                    return getDataColumn(paramContext, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(str3).longValue()), null, null);
                }
                bool2 = isMediaDocument(paramUri);
                str1 = null;
            }
            while (!bool2);
            String[] arrayOfString1 = getDocumentId(paramUri).split(":");
            String str2 = arrayOfString1[0];
            Uri localUri;
            if ("image".equals(str2))
                localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            while (true)
            {
                String[] arrayOfString2 = new String[1];
                arrayOfString2[0] = arrayOfString1[1];
                return getDataColumn(paramContext, localUri, "_id=?", arrayOfString2);
                if ("video".equals(str2))
                {
                    localUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                }
                else
                {
                    boolean bool3 = "audio".equals(str2);
                    localUri = null;
                    if (bool3)
                        localUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
            }
            if ("content".equalsIgnoreCase(paramUri.getScheme()))
            {
                if (isGooglePhotosUri(paramUri))
                    return paramUri.getLastPathSegment();
                return getDataColumn(paramContext, paramUri, null, null);
            }
            bool1 = "file".equalsIgnoreCase(paramUri.getScheme());
            str1 = null;
        }
        while (!bool1);
        return paramUri.getPath();
    }

    public static Bitmap getbitmap(String paramString)
    {
        Log.v("SDK_Sample.Util", "getbitmap:" + paramString);
        try
        {
            HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
            localHttpURLConnection.setDoInput(true);
            localHttpURLConnection.connect();
            InputStream localInputStream = localHttpURLConnection.getInputStream();
            Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream);
            localInputStream.close();
            Log.v("SDK_Sample.Util", "image download finished." + paramString);
            return localBitmap;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
            localOutOfMemoryError.printStackTrace();
            return null;
        }
        catch (IOException localIOException)
        {
            localIOException.printStackTrace();
            Log.v("SDK_Sample.Util", "getbitmap bmp fail---");
        }
        return null;
    }

    public static byte[] hexStringToBytes(String paramString)
    {
        byte[] arrayOfByte;
        if ((paramString == null) || (paramString.equals("")))
            arrayOfByte = null;
        while (true)
        {
            return arrayOfByte;
            String str = paramString.toUpperCase();
            int i = str.length() / 2;
            char[] arrayOfChar = str.toCharArray();
            arrayOfByte = new byte[i];
            for (int j = 0; j < i; j++)
            {
                int k = j * 2;
                arrayOfByte[j] = ((byte)(charToByte(arrayOfChar[k]) << 4 | charToByte(arrayOfChar[(k + 1)])));
            }
        }
    }

    public static String hexToString(String paramString)
    {
        if ("0x".equals(paramString.substring(0, 2)))
            paramString = paramString.substring(2);
        byte[] arrayOfByte = new byte[paramString.length() / 2];
        int i = 0;
        while (true)
            if (i < arrayOfByte.length)
            {
                int j = i * 2;
                int k = 2 + i * 2;
                try
                {
                    arrayOfByte[i] = ((byte)(0xFF & Integer.parseInt(paramString.substring(j, k), 16)));
                    i++;
                }
                catch (Exception localException2)
                {
                    while (true)
                        localException2.printStackTrace();
                }
            }
        try
        {
            String str = new String(arrayOfByte, "utf-8");
            return str;
        }
        catch (Exception localException1)
        {
            localException1.printStackTrace();
        }
        return paramString;
    }

    public static byte[] inputStreamToByte(InputStream paramInputStream)
    {
        ByteArrayOutputStream localByteArrayOutputStream;
        try
        {
            localByteArrayOutputStream = new ByteArrayOutputStream();
            while (true)
            {
                int i = paramInputStream.read();
                if (i == -1)
                    break;
                localByteArrayOutputStream.write(i);
            }
        }
        catch (Exception localException)
        {
            localException.printStackTrace();
            return null;
        }
        byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
        localByteArrayOutputStream.close();
        return arrayOfByte;
    }

    private static boolean isDocumentUri(Context paramContext, Uri paramUri)
    {
        List localList = paramUri.getPathSegments();
        if (localList.size() < 2);
        while (!"document".equals(localList.get(0)))
            return false;
        return true;
    }

    public static boolean isDownloadsDocument(Uri paramUri)
    {
        return "com.android.providers.downloads.documents".equals(paramUri.getAuthority());
    }

    public static boolean isExternalStorageDocument(Uri paramUri)
    {
        return "com.android.externalstorage.documents".equals(paramUri.getAuthority());
    }

    public static boolean isFRota(int paramInt)
    {
        return paramInt % 1000000 / 100000 == 3;
    }

    public static boolean isGooglePhotosUri(Uri paramUri)
    {
        return "com.google.android.apps.photos.content".equals(paramUri.getAuthority());
    }

    public static boolean isMediaDocument(Uri paramUri)
    {
        return "com.android.providers.media.documents".equals(paramUri.getAuthority());
    }

    public static boolean isSwyBi(int paramInt)
    {
        return paramInt % 1000000 / 100000 == 2;
    }

    public static boolean isSwySi(int paramInt)
    {
        return paramInt % 1000000 / 100000 == 1;
    }

    public static Bitmap readBitmap(String paramString)
    {
        try
        {
            FileInputStream localFileInputStream = new FileInputStream(new File(paramString + "test.jpg"));
            BitmapFactory.Options localOptions = new BitmapFactory.Options();
            localOptions.inSampleSize = 8;
            localOptions.inPurgeable = true;
            localOptions.inInputShareable = true;
            Bitmap localBitmap = BitmapFactory.decodeStream(localFileInputStream, null, localOptions);
            return localBitmap;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
            return null;
        }
        catch (Exception localException)
        {
        }
        return null;
    }

    public static byte[] readFromFile(String paramString, int paramInt1, int paramInt2)
    {
        if (paramString == null)
            return null;
        File localFile = new File(paramString);
        if (!localFile.exists())
        {
            Log.i("SDK_Sample.Util", "readFromFile: file not found");
            return null;
        }
        if (paramInt2 == -1)
            paramInt2 = (int)localFile.length();
        Log.d("SDK_Sample.Util", "readFromFile : offset = " + paramInt1 + " len = " + paramInt2 + " offset + len = " + (paramInt1 + paramInt2));
        if (paramInt1 < 0)
        {
            Log.e("SDK_Sample.Util", "readFromFile invalid offset:" + paramInt1);
            return null;
        }
        if (paramInt2 <= 0)
        {
            Log.e("SDK_Sample.Util", "readFromFile invalid len:" + paramInt2);
            return null;
        }
        if (paramInt1 + paramInt2 > (int)localFile.length())
        {
            Log.e("SDK_Sample.Util", "readFromFile invalid file len:" + localFile.length());
            return null;
        }
        byte[] arrayOfByte = null;
        try
        {
            RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramString, "r");
            arrayOfByte = new byte[paramInt2];
            localRandomAccessFile.seek(paramInt1);
            localRandomAccessFile.readFully(arrayOfByte);
            localRandomAccessFile.close();
            return arrayOfByte;
        }
        catch (Exception localException)
        {
            Log.e("SDK_Sample.Util", "readFromFile : errMsg = " + localException.getMessage());
            localException.printStackTrace();
        }
        return arrayOfByte;
    }

    public static void release()
    {
        mProgressDialog = null;
        mToast = null;
    }

    public static AlertDialog showConfirmCancelDialog(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener)
    {
        AlertDialog localAlertDialog = new AlertDialog.Builder(paramContext).setMessage(paramString2).setPositiveButton("确认", paramOnClickListener).setNegativeButton("取消", null).create();
        localAlertDialog.setCanceledOnTouchOutside(false);
        localAlertDialog.show();
        return localAlertDialog;
    }

    public static final void showProgressDialog(Context paramContext, String paramString1, String paramString2)
    {
        dismissDialog();
        if (TextUtils.isEmpty(paramString1))
            paramString1 = "请稍候";
        if (TextUtils.isEmpty(paramString2))
            paramString2 = "正在加载...";
        mProgressDialog = ProgressDialog.show(paramContext, paramString1, paramString2);
    }

    public static final void showResultDialog(Context paramContext, String paramString1, String paramString2)
    {
        if (paramString1 == null)
            return;
        String str = paramString1.replace(",", "\n");
        Log.d("Util", str);
        new AlertDialog.Builder(paramContext).setTitle(paramString2).setMessage(str).setNegativeButton("知道了", null).create().show();
    }

    public static String toHexString(String paramString)
    {
        try
        {
            byte[] arrayOfByte2 = paramString.getBytes("UTF-8");
            arrayOfByte1 = arrayOfByte2;
            if (arrayOfByte1 == null)
                return null;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
            byte[] arrayOfByte1;
            while (true)
            {
                localUnsupportedEncodingException.printStackTrace();
                arrayOfByte1 = null;
            }
            StringBuilder localStringBuilder = new StringBuilder(2 * arrayOfByte1.length);
            for (int i = 0; i < arrayOfByte1.length; i++)
            {
                localStringBuilder.append(hexString.charAt((0xF0 & arrayOfByte1[i]) >> 4));
                localStringBuilder.append(hexString.charAt((0xF & arrayOfByte1[i]) >> 0));
            }
            return localStringBuilder.toString();
        }
    }

    public static final void toastMessage(Activity paramActivity, String paramString)
    {
        toastMessage(paramActivity, paramString, null);
    }

    public static final void toastMessage(Activity paramActivity, final String paramString1, String paramString2)
    {
        if ("w".equals(paramString2))
            Log.w("sdkDemo", paramString1);
        while (true)
        {
            paramActivity.runOnUiThread(new Runnable()
            {
                public void run()
                {
                    if (Util.mToast != null)
                    {
                        Util.mToast.cancel();
                        Util.access$002(null);
                    }
                    Util.access$002(Toast.makeText(this.val$activity, paramString1, 0));
                    Util.mToast.show();
                }
            });
            return;
            if ("e".equals(paramString2))
                Log.e("sdkDemo", paramString1);
            else
                Log.d("sdkDemo", paramString1);
        }
    }
}