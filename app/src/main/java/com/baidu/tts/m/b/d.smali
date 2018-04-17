.class public Lcom/baidu/tts/m/b/d;
.super Lcom/baidu/tts/m/b/a;
.source "UninitialState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/b/c;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/tts/m/b/a;-><init>(Lcom/baidu/tts/m/b/c;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->h()I

    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->g()Lcom/baidu/tts/m/b/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/m/b/d;->a(Lcom/baidu/tts/m/b/a;)V

    .line 32
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    .line 48
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    .line 56
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    .line 64
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    move-result v0

    return v0
.end method

.method public loadCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/k/f;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/f;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/k/g;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/g;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    move-result v0

    return v0
.end method

.method public speak(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    .line 80
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/m/b/d;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->p()I

    .line 88
    return-void
.end method
