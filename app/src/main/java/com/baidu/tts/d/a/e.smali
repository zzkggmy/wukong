.class public Lcom/baidu/tts/d/a/e;
.super Lcom/baidu/tts/d/a/a;
.source "InitializedDownloadState.java"


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
    .line 41
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/e;->f()V

    .line 42
    iget-object v0, p0, Lcom/baidu/tts/d/a/e;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->f()Lcom/baidu/tts/d/a/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/baidu/tts/d/a/e;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/c;)V

    .line 45
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/d/a/e;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->o()Lcom/baidu/tts/d/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/e;->a(Lcom/baidu/tts/d/a/a;)V

    .line 34
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/tts/d/a/e;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->s()V

    .line 25
    iget-object v0, p0, Lcom/baidu/tts/d/a/e;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->q()Lcom/baidu/tts/d/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/e;->a(Lcom/baidu/tts/d/a/a;)V

    .line 26
    return-void
.end method
