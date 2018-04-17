.class public Lcom/baidu/tts/d/a/c;
.super Ljava/lang/Object;
.source "DownloadRecord.java"


# instance fields
.field private a:Lcom/baidu/tts/d/a;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/tts/d/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->c:Lcom/baidu/tts/d/b/b;

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->c:Lcom/baidu/tts/d/b/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/b;->b(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->c:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/b;->a(I)V

    .line 80
    :cond_1
    return-void
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->c:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/tts/d/b/b;->a(JJ)V

    .line 84
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/a;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/a;->a(Lcom/baidu/tts/d/a/c;)V

    .line 87
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/c;->a(I)V

    .line 98
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/a;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/a;->c(Lcom/baidu/tts/d/a/c;)V

    .line 101
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/d/a;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/a;

    .line 22
    return-void
.end method

.method public a(Lcom/baidu/tts/d/b/b;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/tts/d/a/c;->c:Lcom/baidu/tts/d/b/b;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/tts/d/a/c;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->c:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->c:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/c;->a(I)V

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/a;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/a;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/a;->b(Lcom/baidu/tts/d/a/c;)V

    .line 94
    :cond_0
    return-void
.end method
