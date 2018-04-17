.class public Lcom/baidu/tts/a/b/b;
.super Ljava/lang/Object;
.source "TtsAdapter.java"

# interfaces
.implements Lcom/baidu/tts/a/b/a;


# instance fields
.field private a:Lcom/baidu/tts/b/a/a/d;

.field private b:Lcom/baidu/tts/b/b/a/c;

.field private c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

.field private d:Lcom/baidu/tts/b/a/b;

.field private e:Lcom/baidu/tts/b/b/a;

.field private f:Lcom/baidu/tts/b/a/b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/d;Lcom/baidu/tts/b/b/a/c;Lcom/baidu/tts/k/j;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    .line 40
    iput-object p2, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/tts/a/b/b;Lcom/baidu/tts/k/h;)Z
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/k/h;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/baidu/tts/k/h;)Z
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->e()Lcom/baidu/tts/k/i;

    move-result-object v0

    .line 273
    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    .line 276
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/k/i;->g()Lcom/baidu/tts/e/i;

    move-result-object v0

    .line 277
    invoke-static {v0}, Lcom/baidu/tts/e/i;->a(Lcom/baidu/tts/e/i;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/tts/a/b/b;)Lcom/baidu/tts/b/b/a/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/k/f;)I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/k/g;)I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->a()V

    .line 49
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->a()V

    .line 50
    invoke-virtual {p0}, Lcom/baidu/tts/a/b/b;->f()V

    .line 51
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/tts/a/b/b;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 110
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/b/a/a/d;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/a/b/b;->a(Lcom/baidu/tts/b/b/a/c;)V

    .line 112
    return-void
.end method

.method protected a(Lcom/baidu/tts/b/a/a/d;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->d:Lcom/baidu/tts/b/a/b;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/baidu/tts/a/b/b$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/b/b$1;-><init>(Lcom/baidu/tts/a/b/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/b/b;->d:Lcom/baidu/tts/b/a/b;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->d:Lcom/baidu/tts/b/a/b;

    invoke-interface {p1, v0}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b;)V

    .line 175
    return-void
.end method

.method protected a(Lcom/baidu/tts/b/b/a/c;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->e:Lcom/baidu/tts/b/b/a;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/baidu/tts/a/b/b$2;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/b/b$2;-><init>(Lcom/baidu/tts/a/b/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/b/b;->e:Lcom/baidu/tts/b/b/a;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->e:Lcom/baidu/tts/b/b/a;

    invoke-interface {p1, v0}, Lcom/baidu/tts/b/b/a/c;->a(Lcom/baidu/tts/b/b/a;)V

    .line 221
    return-void
.end method

.method public a(Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/k/i;)V

    .line 120
    return-void
.end method

.method public b(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->b(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->b()V

    .line 68
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->b()V

    .line 69
    return-void
.end method

.method public b(Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->o()V

    .line 128
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/k/i;)V

    .line 129
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->c()V

    .line 77
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->c()V

    .line 78
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "TtsAdapter"

    const-string v1, "before engine stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->d()V

    .line 87
    const-string v0, "TtsAdapter"

    const-string v1, "after engine stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->d()V

    .line 89
    const-string v0, "TtsAdapter"

    const-string v1, "after play stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "TtsAdapter"

    const-string v1, "before engine destroy"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/b/a/a/d;->e()V

    .line 99
    const-string v0, "TtsAdapter"

    const-string v1, "after engine destroy"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->e()V

    .line 101
    const-string v0, "TtsAdapter"

    const-string v1, "after player destroy"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/baidu/tts/a/b/b$3;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/b/b$3;-><init>(Lcom/baidu/tts/a/b/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/b/b;->f:Lcom/baidu/tts/b/a/b;

    .line 268
    iget-object v0, p0, Lcom/baidu/tts/a/b/b;->a:Lcom/baidu/tts/b/a/a/d;

    iget-object v1, p0, Lcom/baidu/tts/a/b/b;->f:Lcom/baidu/tts/b/a/b;

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b;)V

    .line 269
    return-void
.end method
