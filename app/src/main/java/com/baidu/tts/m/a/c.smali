.class public Lcom/baidu/tts/m/a/c;
.super Lcom/baidu/tts/m/a/a;
.source "InitializedState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/a/d;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/tts/m/a/a;-><init>(Lcom/baidu/tts/m/a/d;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/m/a/d;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->b(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->j()I

    move-result v0

    return v0
.end method

.method public b(Lcom/baidu/tts/client/TtsMode;)I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/m/a/d;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->k()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->l()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->m()I

    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v1}, Lcom/baidu/tts/m/a/d;->a()Lcom/baidu/tts/m/a/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/m/a/c;->a(Lcom/baidu/tts/m/a/a;)V

    .line 68
    :cond_0
    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/m/a/c;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->n()I

    move-result v0

    return v0
.end method
