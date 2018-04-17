.class public Lcom/baidu/tts/b/b/a/e;
.super Lcom/baidu/tts/b/b/a/b;
.source "PausePlayState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/a/b;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    .line 16
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->r()Lcom/baidu/tts/b/b/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/e;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 24
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->v()V

    .line 32
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->q()Lcom/baidu/tts/b/b/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/e;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 33
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->v()V

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->w()V

    .line 42
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->p()Lcom/baidu/tts/b/b/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/e;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 43
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/e;->d()V

    .line 51
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->f()Lcom/baidu/tts/b/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/e;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->o()V

    .line 54
    :cond_0
    return-void
.end method
