.class public Lcom/baidu/tts/b/b/a/h;
.super Lcom/baidu/tts/b/b/a/b;
.source "UninitialPlayState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/a/b;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->t()V

    .line 26
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->q()Lcom/baidu/tts/b/b/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/h;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 27
    return-void
.end method

.method public a(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/h;->a()V

    .line 35
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->f()Lcom/baidu/tts/b/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->a(Lcom/baidu/tts/k/h;)V

    .line 38
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/h;->a()V

    .line 46
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->f()Lcom/baidu/tts/b/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->o()V

    .line 49
    :cond_0
    return-void
.end method
