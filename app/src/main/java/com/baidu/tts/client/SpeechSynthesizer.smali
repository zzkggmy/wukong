.class public Lcom/baidu/tts/client/SpeechSynthesizer;
.super Ljava/lang/Object;
.source "SpeechSynthesizer.java"


# static fields
.field public static final AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_BV_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

.field public static final AUDIO_ENCODE_AMR:Ljava/lang/String;

.field public static final AUDIO_ENCODE_BV:Ljava/lang/String;

.field public static final AUDIO_ENCODE_OPUS:Ljava/lang/String;

.field public static final ERROR_APP_ID_IS_INVALID:I

.field public static final ERROR_LIST_IS_TOO_LONG:I

.field public static final ERROR_QUEUE_IS_FULL:I

.field public static final ERROR_TEXT_ENCODE_IS_WRONG:I

.field public static final ERROR_TEXT_IS_EMPTY:I

.field public static final ERROR_TEXT_IS_TOO_LONG:I

.field public static final LANGUAGE_EN:Ljava/lang/String;

.field public static final LANGUAGE_ZH:Ljava/lang/String;

.field public static final MAX_LIST_SIZE:I = 0x64

.field public static final MAX_QUEUE_SIZE:I = 0x3e8

.field public static final MIX_MODE_DEFAULT:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

.field public static final PARAM_AUDIO_ENCODE:Ljava/lang/String;

.field public static final PARAM_AUDIO_RATE:Ljava/lang/String;

.field public static final PARAM_CUSTOM_SYNTH:Ljava/lang/String;

.field public static final PARAM_LANGUAGE:Ljava/lang/String;

.field public static final PARAM_MIX_MODE:Ljava/lang/String;

.field public static final PARAM_OPEN_XML:Ljava/lang/String;

.field public static final PARAM_PITCH:Ljava/lang/String;

.field public static final PARAM_PRODUCT_ID:Ljava/lang/String;

.field public static final PARAM_SPEAKER:Ljava/lang/String;

.field public static final PARAM_SPEED:Ljava/lang/String;

.field public static final PARAM_TEXT_ENCODE:Ljava/lang/String;

.field public static final PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

.field public static final PARAM_VOLUME:Ljava/lang/String;

.field public static final SPEAKER_FEMALE:Ljava/lang/String;

.field public static final SPEAKER_MALE:Ljava/lang/String;

.field public static final SPEAKER_MALE_EMOTION:Ljava/lang/String;

.field public static final SPEAKER_MALE_HIGH:Ljava/lang/String;

.field public static final TEXT_ENCODE_BIG5:Ljava/lang/String;

.field public static final TEXT_ENCODE_GBK:Ljava/lang/String;

.field public static final TEXT_ENCODE_UTF8:Ljava/lang/String;

.field private static volatile a:Lcom/baidu/tts/client/SpeechSynthesizer;


# instance fields
.field private b:Lcom/baidu/tts/m/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/tts/e/o;->L:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    .line 30
    sget-object v0, Lcom/baidu/tts/e/o;->M:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    .line 32
    sget-object v0, Lcom/baidu/tts/e/o;->G:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_EMPTY:I

    .line 34
    sget-object v0, Lcom/baidu/tts/e/o;->H:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_TOO_LONG:I

    .line 36
    sget-object v0, Lcom/baidu/tts/e/o;->I:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_ENCODE_IS_WRONG:I

    .line 38
    sget-object v0, Lcom/baidu/tts/e/o;->O:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    .line 46
    sget-object v0, Lcom/baidu/tts/e/g;->D:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/baidu/tts/e/g;->F:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PITCH:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/baidu/tts/e/g;->E:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOLUME:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/baidu/tts/e/g;->P:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/baidu/tts/e/g;->Q:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/baidu/tts/e/g;->R:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/baidu/tts/e/g;->U:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/baidu/tts/e/g;->S:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_CUSTOM_SYNTH:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/baidu/tts/e/g;->T:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_OPEN_XML:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/baidu/tts/e/g;->O:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PRODUCT_ID:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/baidu/tts/e/g;->G:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_LANGUAGE:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/baidu/tts/e/g;->H:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TEXT_ENCODE:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/baidu/tts/e/g;->J:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_ENCODE:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/baidu/tts/e/g;->K:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_RATE:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/baidu/tts/e/g;->L:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEAKER:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/baidu/tts/e/g;->x:Lcom/baidu/tts/e/g;

    invoke-static {v0}, Lcom/baidu/tts/e/g;->a(Lcom/baidu/tts/e/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/baidu/tts/e/j;->a:Lcom/baidu/tts/e/j;

    invoke-virtual {v0}, Lcom/baidu/tts/e/j;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_DEFAULT:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/baidu/tts/e/j;->b:Lcom/baidu/tts/e/j;

    invoke-virtual {v0}, Lcom/baidu/tts/e/j;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/baidu/tts/e/h;->a:Lcom/baidu/tts/e/h;

    invoke-virtual {v0}, Lcom/baidu/tts/e/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_ZH:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/baidu/tts/e/h;->b:Lcom/baidu/tts/e/h;

    invoke-virtual {v0}, Lcom/baidu/tts/e/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_EN:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/baidu/tts/e/d;->a:Lcom/baidu/tts/e/d;

    invoke-virtual {v0}, Lcom/baidu/tts/e/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_GBK:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/baidu/tts/e/d;->b:Lcom/baidu/tts/e/d;

    invoke-virtual {v0}, Lcom/baidu/tts/e/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_BIG5:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/baidu/tts/e/d;->c:Lcom/baidu/tts/e/d;

    invoke-virtual {v0}, Lcom/baidu/tts/e/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_UTF8:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/baidu/tts/e/b;->a:Lcom/baidu/tts/e/b;

    invoke-virtual {v0}, Lcom/baidu/tts/e/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_BV:Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/baidu/tts/e/b;->b:Lcom/baidu/tts/e/b;

    invoke-virtual {v0}, Lcom/baidu/tts/e/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_AMR:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/baidu/tts/e/b;->c:Lcom/baidu/tts/e/b;

    invoke-virtual {v0}, Lcom/baidu/tts/e/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_OPUS:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/baidu/tts/e/c;->a:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_BV_16K:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/baidu/tts/e/c;->b:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/baidu/tts/e/c;->c:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/baidu/tts/e/c;->d:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/baidu/tts/e/c;->e:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/baidu/tts/e/c;->f:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/baidu/tts/e/c;->g:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/baidu/tts/e/c;->h:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/baidu/tts/e/c;->i:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/baidu/tts/e/c;->j:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/baidu/tts/e/c;->k:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/baidu/tts/e/c;->l:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/baidu/tts/e/c;->m:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/baidu/tts/e/c;->n:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/baidu/tts/e/c;->o:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/baidu/tts/e/c;->p:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

    .line 151
    sget-object v0, Lcom/baidu/tts/e/l;->a:Lcom/baidu/tts/e/l;

    invoke-virtual {v0}, Lcom/baidu/tts/e/l;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->SPEAKER_FEMALE:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/baidu/tts/e/l;->b:Lcom/baidu/tts/e/l;

    invoke-virtual {v0}, Lcom/baidu/tts/e/l;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->SPEAKER_MALE:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/baidu/tts/e/l;->c:Lcom/baidu/tts/e/l;

    invoke-virtual {v0}, Lcom/baidu/tts/e/l;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->SPEAKER_MALE_HIGH:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/baidu/tts/e/l;->d:Lcom/baidu/tts/e/l;

    invoke-virtual {v0}, Lcom/baidu/tts/e/l;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->SPEAKER_MALE_EMOTION:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/baidu/tts/m/a/d;

    invoke-direct {v0}, Lcom/baidu/tts/m/a/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    .line 164
    return-void
.end method

.method public static getInstance()Lcom/baidu/tts/client/SpeechSynthesizer;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_1

    .line 173
    const-class v1, Lcom/baidu/tts/client/SpeechSynthesizer;

    monitor-enter v1

    .line 174
    :try_start_0
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-direct {v0}, Lcom/baidu/tts/client/SpeechSynthesizer;-><init>()V

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    .line 173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public auth(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1
    .param p1, "ttsMode"    # Lcom/baidu/tts/client/TtsMode;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public batchSpeak(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "speechSynthesizeBags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/tts/client/SpeechSynthesizeBag;>;"
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public freeCustomResource()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->f()I

    move-result v0

    return v0
.end method

.method public declared-synchronized initTts(Lcom/baidu/tts/client/TtsMode;)I
    .locals 1
    .param p1, "ttsMode"    # Lcom/baidu/tts/client/TtsMode;

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->b(Lcom/baidu/tts/client/TtsMode;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public libVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomResource(Ljava/lang/String;)I
    .locals 1
    .param p1, "customModelPath"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "englishTextModelPath"    # Ljava/lang/String;
    .param p2, "englishSpeechModelPath"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/d;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadModel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "speechModelPath"    # Ljava/lang/String;
    .param p2, "textModelPath"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized pause()I
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()I
    .locals 1

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->e()I

    .line 302
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()I
    .locals 1

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApiKey(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-object v0, Lcom/baidu/tts/e/g;->ah:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v0, Lcom/baidu/tts/e/g;->ai:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public setAppId(Ljava/lang/String;)I
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p1}, Lcom/baidu/tts/o/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/baidu/tts/e/g;->A:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    goto :goto_0
.end method

.method public setAudioStreamType(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 265
    sget-object v0, Lcom/baidu/tts/e/g;->I:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpeechSynthesizerListener(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 1
    .param p1, "speechSynthesizerListener"    # Lcom/baidu/tts/client/SpeechSynthesizerListener;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    .line 189
    return-void
.end method

.method public speak(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .locals 2
    .param p1, "speechSynthesizeBag"    # Lcom/baidu/tts/client/SpeechSynthesizeBag;

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/m/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized stop()I
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthesize(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .locals 2
    .param p1, "speechSynthesizeBag"    # Lcom/baidu/tts/client/SpeechSynthesizeBag;

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthesize(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/m/a/d;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
