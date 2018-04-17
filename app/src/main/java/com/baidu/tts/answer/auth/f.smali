.class public Lcom/baidu/tts/answer/auth/f;
.super Lcom/baidu/tts/answer/b;
.source "OfflineAuthQuestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/answer/b",
        "<",
        "Lcom/baidu/tts/answer/auth/d;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field private a:Lcom/baidu/tts/b/a/b/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/baidu/tts/b/a/b/e$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/tts/answer/b;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lcom/baidu/tts/answer/auth/f;->a:Lcom/baidu/tts/b/a/b/e$a;

    .line 37
    return-void
.end method

.method private a(Lcom/baidu/tts/answer/auth/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 142
    const-string v0, "OfflineAuthQuestion"

    const-string v1, "enter downloadLicense"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "0"

    const-string v4, ""

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 144
    const-string v1, "OfflineAuthQuestion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLicense ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v0}, Lcom/baidu/tts/answer/auth/d;->a(I)V

    .line 146
    if-gez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->m:Lcom/baidu/tts/e/o;

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--licensePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 152
    :cond_0
    return-void
.end method

.method static synthetic d()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/tts/answer/auth/f;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/answer/auth/e;->values()[Lcom/baidu/tts/answer/auth/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->e:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->f:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->i:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->c:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->h:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->d:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->j:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->k:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->a:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->b:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->g:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lcom/baidu/tts/answer/auth/f;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/baidu/tts/answer/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/baidu/tts/answer/e",
            "<",
            "Lcom/baidu/tts/answer/auth/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/baidu/tts/answer/auth/b;

    invoke-direct {v0}, Lcom/baidu/tts/answer/auth/b;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/f;->c()Lcom/baidu/tts/answer/auth/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/baidu/tts/answer/auth/d;
    .locals 11

    .prologue
    .line 44
    new-instance v1, Lcom/baidu/tts/answer/auth/d;

    invoke-direct {v1}, Lcom/baidu/tts/answer/auth/d;-><init>()V

    .line 45
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/g/b/b;->h()Landroid/content/Context;

    move-result-object v2

    .line 47
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/g/b/b;->g()Lcom/baidu/tts/g/b/a;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/e/o;->Q:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 137
    :goto_0
    :pswitch_0
    return-object v1

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/baidu/tts/answer/auth/f;->a:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$a;->f()Ljava/lang/String;

    move-result-object v3

    .line 53
    const-string v4, "OfflineAuthQuestion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "appCode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lcom/baidu/tts/answer/auth/f;->a:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v4}, Lcom/baidu/tts/b/a/b/e$a;->e()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/baidu/tts/g/b/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 58
    :cond_1
    const-string v4, "OfflineAuthQuestion"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "licenseFilePath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lcom/baidu/tts/g/b/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 60
    const-string v0, "OfflineAuthQuestion"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cuid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 64
    const-string v7, "OfflineAuthQuestion"

    const-string v8, "license exist"

    invoke-static {v7, v8}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSVerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v7

    .line 67
    const-string v8, "OfflineAuthQuestion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "1verifyResult="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-gez v7, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 70
    const-string v7, "OfflineAuthQuestion"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isDelete="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/baidu/tts/answer/auth/f;->a(Lcom/baidu/tts/answer/auth/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2
    :goto_1
    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSVerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v2

    .line 80
    const-string v0, "OfflineAuthQuestion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "2verifyResult = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {v2}, Lcom/baidu/tts/answer/auth/e;->b(I)Lcom/baidu/tts/answer/auth/e;

    move-result-object v3

    .line 82
    const/4 v0, 0x0

    .line 83
    if-eqz v6, :cond_3

    .line 84
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_3
    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/d;->b(I)V

    .line 87
    invoke-virtual {v1, v3}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/answer/auth/e;)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/baidu/tts/answer/auth/f;->d()[I

    move-result-object v0

    invoke-virtual {v3}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 93
    :pswitch_2
    invoke-static {v2}, Lcom/baidu/tts/answer/auth/e;->c(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->c(I)V

    goto/16 :goto_0

    .line 74
    :cond_4
    const-string v0, "OfflineAuthQuestion"

    const-string v7, "license not exist"

    invoke-static {v0, v7}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/baidu/tts/answer/auth/f;->a(Lcom/baidu/tts/answer/auth/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :pswitch_3
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/e/o;->w:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_0

    .line 103
    :pswitch_4
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/e/o;->x:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_0

    .line 108
    :pswitch_5
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/e/o;->y:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_0

    .line 113
    :pswitch_6
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/e/o;->z:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_0

    .line 118
    :pswitch_7
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/e/o;->A:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_0

    .line 123
    :pswitch_8
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    .line 124
    sget-object v2, Lcom/baidu/tts/e/o;->B:Lcom/baidu/tts/e/o;

    .line 123
    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_0

    .line 129
    :pswitch_9
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v2, Lcom/baidu/tts/e/o;->k:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method
