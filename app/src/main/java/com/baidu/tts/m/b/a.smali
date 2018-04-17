.class public abstract Lcom/baidu/tts/m/b/a;
.super Ljava/lang/Object;
.source "ATtsState.java"

# interfaces
.implements Lcom/baidu/tts/aop/tts/ITts;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/aop/tts/ITts;"
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/tts/m/b/c;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/b/c;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/b/a;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/m/b/a;)V

    .line 104
    return-void
.end method

.method public auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1
    .param p1, "ttsEnum"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->b(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcom/baidu/tts/e/n;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->n()Lcom/baidu/tts/e/n;

    move-result-object v0

    return-object v0
.end method

.method public getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->m()Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    return-object v0
.end method

.method public getTtsParams()Lcom/baidu/tts/k/j;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->o()Lcom/baidu/tts/k/j;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public setMode(Lcom/baidu/tts/e/n;)V
    .locals 1
    .param p1, "mode"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/e/n;)V

    .line 60
    return-void
.end method

.method public setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Lcom/baidu/tts/e/g;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/e/g;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 1
    .param p1, "ttsListener"    # Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/tts/m/b/a;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 36
    return-void
.end method
