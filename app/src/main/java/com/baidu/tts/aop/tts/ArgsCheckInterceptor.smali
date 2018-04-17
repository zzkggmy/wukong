.class public Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;
.super Lcom/baidu/tts/aop/AInterceptor;
.source "ArgsCheckInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptor;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/baidu/tts/k/i;Lcom/baidu/tts/e/o;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    invoke-static {p2}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a(Ljava/lang/Object;Lcom/baidu/tts/k/h;)V

    .line 60
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/baidu/tts/m/b/c;

    .line 65
    invoke-virtual {p1}, Lcom/baidu/tts/m/b/c;->getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p2}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onError(Lcom/baidu/tts/k/h;)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 44
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/baidu/tts/k/i;

    .line 45
    invoke-virtual {v0}, Lcom/baidu/tts/k/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "ArgsCheckInterceptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "text="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Lcom/baidu/tts/o/g;->a(Ljava/lang/String;)Lcom/baidu/tts/e/o;

    move-result-object v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/baidu/tts/e/o;->H:Lcom/baidu/tts/e/o;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a(Ljava/lang/Object;Lcom/baidu/tts/k/i;Lcom/baidu/tts/e/o;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a:Ljava/util/List;

    const-string v1, "speak"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/ArgsCheckInterceptor;->a:Ljava/util/List;

    const-string v1, "synthesize"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
