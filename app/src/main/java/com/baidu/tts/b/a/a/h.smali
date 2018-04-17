.class public Lcom/baidu/tts/b/a/a/h;
.super Lcom/baidu/tts/b/a/a/b;
.source "UninitialEngineState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/a/b;-><init>(Lcom/baidu/tts/b/a/a/c;)V

    .line 25
    return-void
.end method

.method private a(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->t:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/h;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->e(Lcom/baidu/tts/k/h;)V

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/baidu/tts/k/h;

    invoke-direct {v0}, Lcom/baidu/tts/k/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a/h;->a(Lcom/baidu/tts/k/h;)V

    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public a(Lcom/baidu/tts/k/f;)I
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/baidu/tts/k/h;

    invoke-direct {v0}, Lcom/baidu/tts/k/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a/h;->a(Lcom/baidu/tts/k/h;)V

    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public a(Lcom/baidu/tts/k/g;)I
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/baidu/tts/k/h;

    invoke-direct {v0}, Lcom/baidu/tts/k/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a/h;->a(Lcom/baidu/tts/k/h;)V

    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/h;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->s()V

    .line 33
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/h;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->p()Lcom/baidu/tts/b/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/h;->a(Lcom/baidu/tts/b/a/a/b;)V

    .line 34
    return-void
.end method

.method public a(Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a/h;->a(Lcom/baidu/tts/k/h;)V

    .line 43
    return-void
.end method

.method public b(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/baidu/tts/k/h;

    invoke-direct {v0}, Lcom/baidu/tts/k/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a/h;->a(Lcom/baidu/tts/k/h;)V

    .line 64
    const/4 v0, -0x1

    return v0
.end method
