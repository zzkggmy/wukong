.class public Lcom/baidu/tts/m/a/e;
.super Lcom/baidu/tts/m/a/a;
.source "UninitialState.java"


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
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

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
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public b(Lcom/baidu/tts/client/TtsMode;)I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->c(Lcom/baidu/tts/client/TtsMode;)I

    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v1}, Lcom/baidu/tts/m/a/d;->g()Lcom/baidu/tts/m/a/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/m/a/e;->a(Lcom/baidu/tts/m/a/a;)V

    .line 36
    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/m/a/e;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->o()I

    move-result v0

    return v0
.end method
