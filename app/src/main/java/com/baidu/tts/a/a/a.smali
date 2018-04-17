.class public Lcom/baidu/tts/a/a/a;
.super Ljava/lang/Object;
.source "AudioDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/a/a/c",
            "<TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TS;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/tts/a/a/a;->a:Lcom/baidu/tts/a/a/c;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/tts/a/a/a;->a:Lcom/baidu/tts/a/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/a/a/c;->a()V

    .line 21
    return-void
.end method

.method public a(Lcom/baidu/tts/a/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/a/a/c",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcom/baidu/tts/a/a/a;->a:Lcom/baidu/tts/a/a/c;

    .line 17
    return-void
.end method
