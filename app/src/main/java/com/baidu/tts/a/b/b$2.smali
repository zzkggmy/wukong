.class Lcom/baidu/tts/a/b/b$2;
.super Ljava/lang/Object;
.source "TtsAdapter.java"

# interfaces
.implements Lcom/baidu/tts/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/b/b/a/c;)V
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
    iput-object p1, p0, Lcom/baidu/tts/a/b/b$2;->a:Lcom/baidu/tts/a/b/b;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$2;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$2;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayStart(Lcom/baidu/tts/k/h;)V

    .line 186
    :cond_0
    return-void
.end method

.method public b(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$2;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$2;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayProgressUpdate(Lcom/baidu/tts/k/h;)V

    .line 193
    :cond_0
    return-void
.end method

.method public c(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$2;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/baidu/tts/a/b/b$2;->a:Lcom/baidu/tts/a/b/b;

    invoke-static {v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onPlayFinished(Lcom/baidu/tts/k/h;)V

    .line 205
    :cond_0
    return-void
.end method
