.class public Lcom/baidu/tts/aop/ttslistener/TtsListenerInterceptorHandler;
.super Lcom/baidu/tts/aop/AInterceptorHandler;
.source "TtsListenerInterceptorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public registerMethods()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "onSynthesizeDataArrived"

    invoke-virtual {p0, v0}, Lcom/baidu/tts/aop/ttslistener/TtsListenerInterceptorHandler;->registerMethod(Ljava/lang/String;)V

    .line 20
    const-string v0, "onPlayProgressUpdate"

    invoke-virtual {p0, v0}, Lcom/baidu/tts/aop/ttslistener/TtsListenerInterceptorHandler;->registerMethod(Ljava/lang/String;)V

    .line 21
    return-void
.end method
