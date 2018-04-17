.class public Lcom/baidu/tts/aop/tts/TtsProxy;
.super Ljava/lang/Object;
.source "TtsProxy.java"


# static fields
.field private static volatile a:Lcom/baidu/tts/aop/tts/TtsProxy;


# instance fields
.field private b:Lcom/baidu/tts/aop/tts/ITts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/aop/tts/TtsProxy;->a:Lcom/baidu/tts/aop/tts/TtsProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/baidu/tts/aop/tts/TtsProxy;->a()Lcom/baidu/tts/aop/tts/ITts;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    .line 30
    return-void
.end method

.method private a()Lcom/baidu/tts/aop/tts/ITts;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/tts/aop/tts/TtsFactory;

    invoke-direct {v0}, Lcom/baidu/tts/aop/tts/TtsFactory;-><init>()V

    .line 34
    invoke-interface {v0}, Lcom/baidu/tts/aop/IProxyFactory;->makeProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/aop/tts/ITts;

    return-object v0
.end method

.method public static getInstance()Lcom/baidu/tts/aop/tts/TtsProxy;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/baidu/tts/aop/tts/TtsProxy;->a:Lcom/baidu/tts/aop/tts/TtsProxy;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/baidu/tts/aop/tts/TtsProxy;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/baidu/tts/aop/tts/TtsProxy;->a:Lcom/baidu/tts/aop/tts/TtsProxy;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-direct {v0}, Lcom/baidu/tts/aop/tts/TtsProxy;-><init>()V

    sput-object v0, Lcom/baidu/tts/aop/tts/TtsProxy;->a:Lcom/baidu/tts/aop/tts/TtsProxy;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/baidu/tts/aop/tts/TtsProxy;->a:Lcom/baidu/tts/aop/tts/TtsProxy;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1
    .param p1, "ttsEnum"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public create()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->a()V

    .line 74
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->e()V

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/aop/tts/TtsProxy;->a:Lcom/baidu/tts/aop/tts/TtsProxy;

    .line 103
    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->freeCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public getTtsParams()Lcom/baidu/tts/k/j;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->getTtsParams()Lcom/baidu/tts/k/j;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->loadCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/k/f;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/f;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->loadEnglishModel(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/k/g;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/g;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->loadModel(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->c()V

    .line 88
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->b()V

    .line 81
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setContext(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public setMode(Lcom/baidu/tts/e/n;)V
    .locals 1
    .param p1, "mode"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setMode(Lcom/baidu/tts/e/n;)V

    .line 67
    return-void
.end method

.method public setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Lcom/baidu/tts/e/g;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/aop/tts/ITts;->setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 1
    .param p1, "ttsListener"    # Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 53
    return-void
.end method

.method public speak(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 122
    sget-object v0, Lcom/baidu/tts/e/i;->b:Lcom/baidu/tts/e/i;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/i;->a(Lcom/baidu/tts/e/i;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->speak(Lcom/baidu/tts/k/i;)V

    .line 124
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0}, Lcom/baidu/tts/aop/tts/ITts;->d()V

    .line 95
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 127
    sget-object v0, Lcom/baidu/tts/e/i;->a:Lcom/baidu/tts/e/i;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/i;->a(Lcom/baidu/tts/e/i;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/TtsProxy;->b:Lcom/baidu/tts/aop/tts/ITts;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->synthesize(Lcom/baidu/tts/k/i;)V

    .line 129
    return-void
.end method
