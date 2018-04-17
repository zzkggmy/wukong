.class public Lcom/baidu/tts/a/b/c;
.super Ljava/lang/Object;
.source "Ttser.java"

# interfaces
.implements Lcom/baidu/tts/aop/tts/ITts;


# instance fields
.field private a:Lcom/baidu/tts/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/b/a;->a()V

    .line 31
    return-void
.end method

.method public a(Lcom/baidu/tts/a/b/a;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    .line 172
    return-void
.end method

.method public auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1
    .param p1, "ttsEnum"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/b/a;->b()V

    .line 47
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/b/a;->c()V

    .line 55
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/b/a;->d()V

    .line 63
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/b/a;->e()V

    .line 71
    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public getMode()Lcom/baidu/tts/e/n;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTtsParams()Lcom/baidu/tts/k/j;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/k/f;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/f;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/k/g;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/g;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    return-void
.end method

.method public setMode(Lcom/baidu/tts/e/n;)V
    .locals 0
    .param p1, "mode"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 104
    return-void
.end method

.method public setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Lcom/baidu/tts/e/g;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 1
    .param p1, "ttsListener"    # Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 79
    return-void
.end method

.method public speak(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/k/i;)V

    .line 142
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/tts/a/b/c;->a:Lcom/baidu/tts/a/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/k/i;)V

    .line 150
    return-void
.end method
