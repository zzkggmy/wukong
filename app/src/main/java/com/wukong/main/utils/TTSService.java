package com.wukong.main.utils;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import com.baidu.tts.answer.auth.AuthInfo;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.client.SpeechError;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.client.SpeechSynthesizerListener;
import com.baidu.tts.client.TtsMode;
import java.io.File;

public class TTSService
        implements SpeechSynthesizerListener
{
    private static final String ApiKey = "xDQxgTL18EFhPyw0lXxXQa27";
    private static final String AppId = "9724673";
    private static final String ENGLISH_SPEECH_FEMALE_MODEL_NAME = "bd_etts_speech_female_en.dat";
    private static final String ENGLISH_SPEECH_MALE_MODEL_NAME = "bd_etts_speech_male_en.dat";
    private static final String ENGLISH_TEXT_MODEL_NAME = "bd_etts_text_en.dat";
    private static final String LICENSE_FILE_NAME = "temp_license.txt";
    private static final String SAMPLE_DIR_NAME = "XZWK";
    private static final String SPEECH_FEMALE_MODEL_NAME = "bd_etts_speech_female.dat";
    private static final String SPEECH_MALE_MODEL_NAME = "bd_etts_speech_male.dat";
    private static final String SecretKey = "51317eab22f3d672a2442a14b564dd1b";
    private static final String TEXT_MODEL_NAME = "bd_etts_text.dat";
    private static final String lengthD = "lengthD";
    private Context context;
    private String mSampleDirPath = null;
    private SpeechSynthesizer mSpeechSynthesizer;

    public TTSService(Context paramContext)
    {
        this.context = paramContext;
        initialEnv();
        initialTts();
    }

    // ERROR //
    private void copyFromAssetsToSdcard(boolean paramBoolean, String paramString1, String paramString2)
    {
        // Byte code:
        //   0: new 74	java/io/File
        //   3: dup
        //   4: aload_3
        //   5: invokespecial 77	java/io/File:<init>	(Ljava/lang/String;)V
        //   8: astore 4
        //   10: iload_1
        //   11: ifne +15 -> 26
        //   14: iload_1
        //   15: ifne +109 -> 124
        //   18: aload 4
        //   20: invokevirtual 81	java/io/File:exists	()Z
        //   23: ifne +101 -> 124
        //   26: aconst_null
        //   27: astore 5
        //   29: aconst_null
        //   30: astore 6
        //   32: aload_0
        //   33: getfield 56	com/wukong/main/utils/TTSService:context	Landroid/content/Context;
        //   36: invokevirtual 87	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
        //   39: aload_2
        //   40: invokevirtual 93	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
        //   43: astore 5
        //   45: new 95	java/io/FileOutputStream
        //   48: dup
        //   49: aload_3
        //   50: invokespecial 96	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
        //   53: astore 16
        //   55: sipush 1024
        //   58: newarray byte
        //   60: astore 17
        //   62: aload 5
        //   64: aload 17
        //   66: iconst_0
        //   67: sipush 1024
        //   70: invokevirtual 102	java/io/InputStream:read	([BII)I
        //   73: istore 18
        //   75: iload 18
        //   77: iflt +48 -> 125
        //   80: aload 16
        //   82: aload 17
        //   84: iconst_0
        //   85: iload 18
        //   87: invokevirtual 106	java/io/FileOutputStream:write	([BII)V
        //   90: goto -28 -> 62
        //   93: astore 7
        //   95: aload 16
        //   97: astore 6
        //   99: aload 7
        //   101: invokevirtual 109	java/io/FileNotFoundException:printStackTrace	()V
        //   104: aload 6
        //   106: ifnull +8 -> 114
        //   109: aload 6
        //   111: invokevirtual 112	java/io/FileOutputStream:close	()V
        //   114: aload 5
        //   116: ifnull +8 -> 124
        //   119: aload 5
        //   121: invokevirtual 113	java/io/InputStream:close	()V
        //   124: return
        //   125: aload 16
        //   127: ifnull +8 -> 135
        //   130: aload 16
        //   132: invokevirtual 112	java/io/FileOutputStream:close	()V
        //   135: aload 5
        //   137: ifnull -13 -> 124
        //   140: aload 5
        //   142: invokevirtual 113	java/io/InputStream:close	()V
        //   145: return
        //   146: astore 19
        //   148: aload 19
        //   150: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   153: return
        //   154: astore 20
        //   156: aload 20
        //   158: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   161: goto -26 -> 135
        //   164: astore 12
        //   166: aload 12
        //   168: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   171: goto -57 -> 114
        //   174: astore 11
        //   176: aload 11
        //   178: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   181: return
        //   182: astore 13
        //   184: aload 13
        //   186: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   189: aload 6
        //   191: ifnull +8 -> 199
        //   194: aload 6
        //   196: invokevirtual 112	java/io/FileOutputStream:close	()V
        //   199: aload 5
        //   201: ifnull -77 -> 124
        //   204: aload 5
        //   206: invokevirtual 113	java/io/InputStream:close	()V
        //   209: return
        //   210: astore 14
        //   212: aload 14
        //   214: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   217: return
        //   218: astore 15
        //   220: aload 15
        //   222: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   225: goto -26 -> 199
        //   228: astore 8
        //   230: aload 6
        //   232: ifnull +8 -> 240
        //   235: aload 6
        //   237: invokevirtual 112	java/io/FileOutputStream:close	()V
        //   240: aload 5
        //   242: ifnull +8 -> 250
        //   245: aload 5
        //   247: invokevirtual 113	java/io/InputStream:close	()V
        //   250: aload 8
        //   252: athrow
        //   253: astore 10
        //   255: aload 10
        //   257: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   260: goto -20 -> 240
        //   263: astore 9
        //   265: aload 9
        //   267: invokevirtual 114	java/io/IOException:printStackTrace	()V
        //   270: goto -20 -> 250
        //   273: astore 8
        //   275: aload 16
        //   277: astore 6
        //   279: goto -49 -> 230
        //   282: astore 13
        //   284: aload 16
        //   286: astore 6
        //   288: goto -104 -> 184
        //   291: astore 7
        //   293: aconst_null
        //   294: astore 6
        //   296: goto -197 -> 99
        //
        // Exception table:
        //   from	to	target	type
        //   55	62	93	java/io/FileNotFoundException
        //   62	75	93	java/io/FileNotFoundException
        //   80	90	93	java/io/FileNotFoundException
        //   140	145	146	java/io/IOException
        //   130	135	154	java/io/IOException
        //   109	114	164	java/io/IOException
        //   119	124	174	java/io/IOException
        //   32	55	182	java/io/IOException
        //   204	209	210	java/io/IOException
        //   194	199	218	java/io/IOException
        //   32	55	228	finally
        //   99	104	228	finally
        //   184	189	228	finally
        //   235	240	253	java/io/IOException
        //   245	250	263	java/io/IOException
        //   55	62	273	finally
        //   62	75	273	finally
        //   80	90	273	finally
        //   55	62	282	java/io/IOException
        //   62	75	282	java/io/IOException
        //   80	90	282	java/io/IOException
        //   32	55	291	java/io/FileNotFoundException
    }

    private void initialEnv()
    {
        if (this.mSampleDirPath == null)
        {
            String str = Environment.getExternalStorageDirectory().toString();
            this.mSampleDirPath = (str + "/" + "XZWK");
        }
        makeDir(this.mSampleDirPath);
        copyFromAssetsToSdcard(false, "bd_etts_speech_female.dat", this.mSampleDirPath + "/" + "bd_etts_speech_female.dat");
        copyFromAssetsToSdcard(false, "bd_etts_speech_male.dat", this.mSampleDirPath + "/" + "bd_etts_speech_male.dat");
        copyFromAssetsToSdcard(false, "bd_etts_text.dat", this.mSampleDirPath + "/" + "bd_etts_text.dat");
        copyFromAssetsToSdcard(false, "temp_license.txt", this.mSampleDirPath + "/" + "temp_license.txt");
        copyFromAssetsToSdcard(false, "english/bd_etts_speech_female_en.dat", this.mSampleDirPath + "/" + "bd_etts_speech_female_en.dat");
        copyFromAssetsToSdcard(false, "english/bd_etts_speech_male_en.dat", this.mSampleDirPath + "/" + "bd_etts_speech_male_en.dat");
        copyFromAssetsToSdcard(false, "english/bd_etts_text_en.dat", this.mSampleDirPath + "/" + "bd_etts_text_en.dat");
        makeDir(this.mSampleDirPath + "/SeverLog/D");
        copyFromAssetsToSdcard(false, "lengthD", this.mSampleDirPath + "/SeverLog/D/lengthD");
    }

    private void initialTts()
    {
        this.mSpeechSynthesizer = SpeechSynthesizer.getInstance();
        this.mSpeechSynthesizer.setContext(this.context);
        this.mSpeechSynthesizer.setSpeechSynthesizerListener(this);
        this.mSpeechSynthesizer.setParam(SpeechSynthesizer.PARAM_TTS_TEXT_MODEL_FILE, this.mSampleDirPath + "/" + "bd_etts_text.dat");
        this.mSpeechSynthesizer.setParam(SpeechSynthesizer.PARAM_TTS_SPEECH_MODEL_FILE, this.mSampleDirPath + "/" + "bd_etts_speech_female.dat");
        this.mSpeechSynthesizer.setAppId("9724673");
        this.mSpeechSynthesizer.setApiKey("xDQxgTL18EFhPyw0lXxXQa27", "51317eab22f3d672a2442a14b564dd1b");
        AuthInfo localAuthInfo = this.mSpeechSynthesizer.auth(TtsMode.MIX);
        if (localAuthInfo.isSuccess())
        {
            this.mSpeechSynthesizer.setParam(SpeechSynthesizer.PARAM_SPEAKER, SpeechSynthesizer.SPEAKER_FEMALE);
            this.mSpeechSynthesizer.initTts(TtsMode.MIX);
            return;
        }
        String str = localAuthInfo.getTtsError().getDetailMessage();
        Log.i("TAG", "=======================" + str);
    }

    private void makeDir(String paramString)
    {
        File localFile = new File(paramString);
        if (!localFile.exists())
            localFile.mkdirs();
    }

    public void onError(String paramString, SpeechError paramSpeechError)
    {
    }

    public void onSpeechFinish(String paramString)
    {
    }

    public void onSpeechProgressChanged(String paramString, int paramInt)
    {
    }

    public void onSpeechStart(String paramString)
    {
    }

    public void onSynthesizeDataArrived(String paramString, byte[] paramArrayOfByte, int paramInt)
    {
    }

    public void onSynthesizeFinish(String paramString)
    {
    }

    public void onSynthesizeStart(String paramString)
    {
    }

    public void ttsPlay(final String paramString)
    {
        new Thread(new Runnable()
        {
            public void run()
            {
                TTSService.this.mSpeechSynthesizer.speak(paramString);
            }
        }).start();
    }

    public void ttsStop()
    {
        this.mSpeechSynthesizer.stop();
    }
}