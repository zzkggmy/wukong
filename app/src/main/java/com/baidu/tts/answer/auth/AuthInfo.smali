.class public Lcom/baidu/tts/answer/auth/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# static fields
.field private static synthetic e:[I


# instance fields
.field private a:Lcom/baidu/tts/e/n;

.field private b:Lcom/baidu/tts/answer/auth/g;

.field private c:Lcom/baidu/tts/answer/auth/d;

.field private d:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/baidu/tts/answer/auth/AuthInfo;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/e/n;->values()[Lcom/baidu/tts/e/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/e/n;->b:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/baidu/tts/answer/auth/AuthInfo;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getLeftValidDays()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/d;->d()I

    move-result v0

    return v0
.end method

.method public getMixTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOnlineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v2

    .line 167
    const/4 v0, 0x0

    .line 168
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 169
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->C:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 175
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    return-object v0

    .line 170
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 171
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->k:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 173
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->a:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_1
.end method

.method public getNotifyMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineAuthBean()Lcom/baidu/tts/answer/auth/d;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    return-object v0
.end method

.method public getOfflineAuthEnum()Lcom/baidu/tts/answer/auth/e;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/d;->b()Lcom/baidu/tts/answer/auth/e;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/d;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_0
.end method

.method public getOnlineAuthBean()Lcom/baidu/tts/answer/auth/g;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->b:Lcom/baidu/tts/answer/auth/g;

    return-object v0
.end method

.method public getOnlineTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->b:Lcom/baidu/tts/answer/auth/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->b:Lcom/baidu/tts/answer/auth/g;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/g;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_0
.end method

.method public getTtsEnum()Lcom/baidu/tts/e/n;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->a:Lcom/baidu/tts/e/n;

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {}, Lcom/baidu/tts/answer/auth/AuthInfo;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->a:Lcom/baidu/tts/e/n;

    invoke-virtual {v2}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->b:Lcom/baidu/tts/answer/auth/g;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/g;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/d;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getMixTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isMixSuccess()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isOnlineSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isOfflineSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfflineSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/d;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 217
    :cond_0
    return v0
.end method

.method public isOnlineSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->b:Lcom/baidu/tts/answer/auth/g;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->b:Lcom/baidu/tts/answer/auth/g;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/g;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 209
    :cond_0
    return v0
.end method

.method public isSuccess()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->a:Lcom/baidu/tts/e/n;

    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lcom/baidu/tts/answer/auth/AuthInfo;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->a:Lcom/baidu/tts/e/n;

    invoke-virtual {v2}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isOnlineSuccess()Z

    move-result v0

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isOfflineSuccess()Z

    move-result v0

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isMixSuccess()Z

    move-result v0

    goto :goto_0

    .line 200
    :cond_1
    const-string v1, "AuthInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cause="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    invoke-virtual {v3}, Lcom/baidu/tts/aop/tts/TtsError;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOfflineAuthBean(Lcom/baidu/tts/answer/auth/d;)V
    .locals 0
    .param p1, "offlineAuthBean"    # Lcom/baidu/tts/answer/auth/d;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->c:Lcom/baidu/tts/answer/auth/d;

    .line 130
    return-void
.end method

.method public setOnlineAuthBean(Lcom/baidu/tts/answer/auth/g;)V
    .locals 0
    .param p1, "onlineAuthBean"    # Lcom/baidu/tts/answer/auth/g;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->b:Lcom/baidu/tts/answer/auth/g;

    .line 103
    return-void
.end method

.method public setTtsEnum(Lcom/baidu/tts/e/n;)V
    .locals 0
    .param p1, "ttsEnum"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->a:Lcom/baidu/tts/e/n;

    .line 39
    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0
    .param p1, "ttsError"    # Lcom/baidu/tts/aop/tts/TtsError;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    .line 76
    return-void
.end method
