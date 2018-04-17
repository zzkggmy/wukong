.class public abstract Lcom/baidu/tts/b/b/a/a;
.super Lcom/baidu/tts/i/a;
.source "APlayExecutor.java"

# interfaces
.implements Lcom/baidu/tts/b/b/a/c;


# instance fields
.field protected a:Lcom/baidu/tts/b/b/a;

.field protected volatile b:Lcom/baidu/tts/b/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/tts/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/b/b/a/b;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    .line 29
    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Lcom/baidu/tts/b/b/a;)V

    .line 93
    return-void
.end method

.method public a(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Lcom/baidu/tts/k/h;)V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method protected b(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->a(Lcom/baidu/tts/k/h;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected c(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->b(Lcom/baidu/tts/k/h;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected d(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->c(Lcom/baidu/tts/k/h;)V

    .line 133
    :cond_0
    return-void
.end method

.method public f()Lcom/baidu/tts/b/b/a/b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    return-object v0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->a()V

    .line 37
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->f()V

    .line 45
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->b()V

    .line 53
    return-void
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->c()V

    .line 61
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->d()V

    .line 69
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->e()V

    .line 77
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->o()V

    .line 101
    return-void
.end method
