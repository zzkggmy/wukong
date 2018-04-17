.class public Lcom/baidu/tts/aop/tts/TtsError;
.super Ljava/lang/Object;
.source "TtsError.java"


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/g/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->b:I

    return v0
.end method

.method public getDetailCode()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/g/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/g/a/b;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/g/a/b;->a(Lcom/baidu/tts/aop/tts/TtsError;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->b:I

    goto :goto_0
.end method

.method public getDetailMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/g/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/g/a/b;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/g/a/b;->b(Lcom/baidu/tts/aop/tts/TtsError;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "TtsErrorFlyweight is null"

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTtsErrorFlyweight()Lcom/baidu/tts/g/a/b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/g/a/b;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->b:I

    .line 57
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->a:Ljava/lang/Throwable;

    .line 43
    return-void
.end method

.method public setTtsErrorFlyweight(Lcom/baidu/tts/g/a/b;)V
    .locals 0
    .param p1, "ttsErrorFlyweight"    # Lcom/baidu/tts/g/a/b;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/tts/aop/tts/TtsError;->d:Lcom/baidu/tts/g/a/b;

    .line 29
    return-void
.end method
