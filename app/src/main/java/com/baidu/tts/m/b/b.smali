.class public Lcom/baidu/tts/m/b/b;
.super Lcom/baidu/tts/m/b/a;
.source "InitializedState.java"


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
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->i()V

    .line 45
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->j()V

    .line 53
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->k()V

    .line 61
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->l()V

    .line 66
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/c;->f()Lcom/baidu/tts/m/b/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/m/b/b;->a(Lcom/baidu/tts/m/b/a;)V

    .line 67
    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->b(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public loadCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/k/f;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/f;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/k/g;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/g;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public speak(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/k/i;)V

    .line 75
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/tts/m/b/b;->a:Lcom/baidu/tts/m/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/c;->b(Lcom/baidu/tts/k/i;)V

    .line 83
    return-void
.end method
