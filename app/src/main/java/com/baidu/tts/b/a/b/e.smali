.class public Lcom/baidu/tts/b/a/b/e;
.super Lcom/baidu/tts/b/a/b/a;
.source "OfflineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/a/b/e$a;,
        Lcom/baidu/tts/b/a/b/e$b;
    }
.end annotation


# instance fields
.field private b:Lcom/baidu/tts/b/a/b/e$a;

.field private c:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    if-nez p1, :cond_0

    .line 244
    const-string p1, ""

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 247
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 248
    aput-byte v4, v1, v4

    .line 249
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 250
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    return-object v2
.end method

.method static synthetic b(Lcom/baidu/tts/b/a/b/e;)[J
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/e;)I
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/baidu/tts/k/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-static {v0, v2, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataInit([BJ)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/k/f;)I
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/baidu/tts/k/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Lcom/baidu/tts/k/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 231
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/o;->P:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 234
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 235
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 236
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->loadEnglishEngine([B[BJ)I

    move-result v0

    .line 237
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadEnglishModel ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/k/g;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1}, Lcom/baidu/tts/k/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lcom/baidu/tts/k/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 202
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 203
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 204
    sget-object v0, Lcom/baidu/tts/e/o;->P:Lcom/baidu/tts/e/o;

    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    .line 216
    :goto_0
    return v0

    .line 207
    :cond_0
    if-nez v3, :cond_2

    .line 208
    invoke-direct {p0, v1}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 209
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    aget-wide v6, v3, v0

    invoke-static {v1, v6, v7}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData([BJ)I

    move-result v1

    .line 212
    :goto_1
    if-nez v4, :cond_1

    .line 213
    invoke-direct {p0, v2}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    aget-wide v4, v3, v0

    invoke-static {v2, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData([BJ)I

    move-result v0

    .line 216
    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/baidu/tts/b/a/b/e$a;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    .line 56
    :cond_0
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/e$a;->d()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 61
    invoke-direct {p0, v1}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    const-string v2, "OfflineSynthesizer"

    const-string v3, "before bdTTSEngineInit"

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    invoke-static {v0, v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineInit([B[B[J)I

    move-result v0

    .line 64
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "engine init ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->s:Lcom/baidu/tts/e/o;

    .line 69
    const-string v3, "bdTTSEngineInit result not 0"

    .line 68
    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Lcom/baidu/tts/b/a/b/e$b;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/b/a/b/e$b;-><init>(Lcom/baidu/tts/b/a/b/e;Lcom/baidu/tts/k/i;)V

    .line 92
    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->a()Lcom/baidu/tts/aop/tts/TtsError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->u:Lcom/baidu/tts/e/o;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OfflineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOfflineSynthesizerParams;)V"
        }
    .end annotation

    .prologue
    .line 43
    .line 44
    check-cast p1, Lcom/baidu/tts/b/a/b/e$a;

    .line 43
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    .line 45
    return-void
.end method

.method public b(Lcom/baidu/tts/k/e;)I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataUninit(J)I

    move-result v0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineUninit(J)I

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method
