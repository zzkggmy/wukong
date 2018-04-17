.class public abstract Lcom/baidu/tts/b/b/a/b;
.super Ljava/lang/Object;
.source "APlayExecutorState.java"

# interfaces
.implements Lcom/baidu/tts/b/b/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/b/b/a/c;"
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/tts/b/b/a/f;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a/b;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 118
    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->b(Lcom/baidu/tts/b/b/a;)V

    .line 92
    return-void
.end method

.method public a(Lcom/baidu/tts/k/h;)V
    .locals 0

    .prologue
    .line 110
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
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/b;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->b(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public o()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
