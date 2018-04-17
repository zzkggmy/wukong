.class public Lcom/baidu/tts/d/a/d;
.super Lcom/baidu/tts/d/a/a;
.source "DownloadingState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/tts/d/a/a;-><init>(Lcom/baidu/tts/d/a/b;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/a/c;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/d/a/d;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a/b;->b(Lcom/baidu/tts/d/a/c;)V

    .line 53
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/tts/d/a/d;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->r()Lcom/baidu/tts/d/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/d;->a(Lcom/baidu/tts/d/a/a;)V

    .line 25
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/d/a/d;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->t()V

    .line 33
    iget-object v0, p0, Lcom/baidu/tts/d/a/d;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->p()Lcom/baidu/tts/d/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/d;->a(Lcom/baidu/tts/d/a/a;)V

    .line 34
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/d;->d()V

    .line 42
    iget-object v0, p0, Lcom/baidu/tts/d/a/d;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->f()Lcom/baidu/tts/d/a/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/baidu/tts/d/a/d;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->e()V

    .line 45
    :cond_0
    return-void
.end method
