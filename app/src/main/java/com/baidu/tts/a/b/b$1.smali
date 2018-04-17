.class Lcom/baidu/tts/a/b/b$1;
.super Ljava/lang/Object;
.source "TtsAdapter.java"

# interfaces
.implements Lcom/baidu/tts/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/b/a/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/a/b/b;


# direct methods
.method constructor <init>(Lcom/baidu/tts/a/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onSynthesizeStart(Lcom/baidu/tts/k/h;)V

    .line 140
    :cond_0
    return-void
.end method

.method public b(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onSynthesizeFinished(Lcom/baidu/tts/k/h;)V

    .line 152
    :cond_0
    return-void
.end method

.method public c(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onSynthesizeDataArrived(Lcom/baidu/tts/k/h;)V

    .line 159
    :cond_0
    return-void
.end method

.method public d(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$1;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onError(Lcom/baidu/tts/k/h;)V

    .line 166
    :cond_0
    return-void
.end method

.method public e(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 170
    const-string v0, "TtsAdapter"

    const-string v1, "onSynthesizeStop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method
