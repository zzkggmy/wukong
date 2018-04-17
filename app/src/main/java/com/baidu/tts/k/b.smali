.class public Lcom/baidu/tts/k/b;
.super Lcom/baidu/tts/l/a;
.source "AllSynthesizerParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/l/a",
        "<",
        "Lcom/baidu/tts/k/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/b/a/b/f$b;

.field private b:Lcom/baidu/tts/b/a/b/e$a;

.field private c:Lcom/baidu/tts/e/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/tts/l/a;-><init>()V

    .line 24
    new-instance v0, Lcom/baidu/tts/b/a/b/f$b;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f$b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/k/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    .line 25
    new-instance v0, Lcom/baidu/tts/b/a/b/e$a;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/k/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/b/a/b/f$b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/k/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/e/j;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/baidu/tts/k/b;->c:Lcom/baidu/tts/e/j;

    .line 83
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/tts/k/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f$b;->j(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/baidu/tts/k/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e$a;->j(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public b()Lcom/baidu/tts/b/a/b/e$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/k/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/tts/k/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f$b;->l(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/tts/k/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e$a;->l(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public c()Lcom/baidu/tts/e/j;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/tts/k/b;->c:Lcom/baidu/tts/e/j;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/tts/k/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f$b;->k(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/baidu/tts/k/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e$a;->k(Ljava/lang/String;)V

    .line 69
    return-void
.end method
