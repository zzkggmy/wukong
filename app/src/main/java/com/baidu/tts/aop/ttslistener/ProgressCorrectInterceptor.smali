.class public Lcom/baidu/tts/aop/ttslistener/ProgressCorrectInterceptor;
.super Lcom/baidu/tts/aop/AInterceptor;
.source "ProgressCorrectInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 39
    aget-object v0, p3, v2

    check-cast v0, Lcom/baidu/tts/k/h;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/baidu/tts/k/h;->e()Lcom/baidu/tts/k/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/k/i;->b()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 44
    invoke-virtual {v0}, Lcom/baidu/tts/k/h;->c()I

    move-result v4

    .line 46
    if-le v4, v3, :cond_1

    .line 47
    sub-int v1, v4, v3

    .line 49
    :goto_0
    const-string v5, "ProgressCorrectInterceptor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "prefixLength="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "--progress="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/baidu/tts/k/h;->z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/k/h;

    .line 51
    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/h;->c(I)V

    .line 52
    aput-object v0, p3, v2

    .line 55
    :cond_0
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/tts/aop/ttslistener/ProgressCorrectInterceptor;->a:Ljava/util/List;

    const-string v1, "onSynthesizeDataArrived"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/baidu/tts/aop/ttslistener/ProgressCorrectInterceptor;->a:Ljava/util/List;

    const-string v1, "onPlayProgressUpdate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
