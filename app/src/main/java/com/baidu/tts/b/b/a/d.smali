.class public Lcom/baidu/tts/b/b/a/d;
.super Lcom/baidu/tts/b/b/a/b;
.source "InitializedPlayState.java"


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
.method public a(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/d;->o()V

    .line 44
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->f()Lcom/baidu/tts/b/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->a(Lcom/baidu/tts/k/h;)V

    .line 47
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->w()V

    .line 35
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->p()Lcom/baidu/tts/b/b/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/d;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 36
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->u()V

    .line 26
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->r()Lcom/baidu/tts/b/b/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/d;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 27
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->u()V

    .line 55
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->x()V

    .line 56
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/d;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->r()Lcom/baidu/tts/b/b/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/d;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 57
    return-void
.end method
