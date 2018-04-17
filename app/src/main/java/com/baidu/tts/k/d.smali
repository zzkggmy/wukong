.class public Lcom/baidu/tts/k/d;
.super Lcom/baidu/tts/l/a;
.source "BaseSynthesizerParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/tts/l/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/e/h;

.field private e:Lcom/baidu/tts/e/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/tts/l/a;-><init>()V

    .line 19
    const-string v0, "5"

    iput-object v0, p0, Lcom/baidu/tts/k/d;->a:Ljava/lang/String;

    .line 20
    const-string v0, "5"

    iput-object v0, p0, Lcom/baidu/tts/k/d;->b:Ljava/lang/String;

    .line 21
    const-string v0, "5"

    iput-object v0, p0, Lcom/baidu/tts/k/d;->c:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/baidu/tts/e/h;->a:Lcom/baidu/tts/e/h;

    iput-object v0, p0, Lcom/baidu/tts/k/d;->d:Lcom/baidu/tts/e/h;

    .line 23
    sget-object v0, Lcom/baidu/tts/e/d;->c:Lcom/baidu/tts/e/d;

    iput-object v0, p0, Lcom/baidu/tts/k/d;->e:Lcom/baidu/tts/e/d;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/e/d;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/tts/k/d;->e:Lcom/baidu/tts/e/d;

    .line 45
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {p1}, Lcom/baidu/tts/e/h;->a(Ljava/lang/String;)Lcom/baidu/tts/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/k/d;->d:Lcom/baidu/tts/e/h;

    .line 67
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/tts/k/d;->a:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/tts/k/d;->b:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/baidu/tts/k/d;->c:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/k/d;->e:Lcom/baidu/tts/e/d;

    invoke-virtual {v0}, Lcom/baidu/tts/e/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/k/d;->e:Lcom/baidu/tts/e/d;

    invoke-virtual {v0}, Lcom/baidu/tts/e/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/tts/k/d;->d:Lcom/baidu/tts/e/h;

    invoke-virtual {v0}, Lcom/baidu/tts/e/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/k/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/k/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/tts/k/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public w()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/tts/k/d;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 109
    return-wide v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/tts/k/d;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 114
    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/k/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 119
    return-wide v0
.end method
