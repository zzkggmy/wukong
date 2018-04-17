.class public Lcom/baidu/tts/d/a/h;
.super Lcom/baidu/tts/d/a/a;
.source "UninitialDownloadState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/baidu/tts/d/a/a;-><init>(Lcom/baidu/tts/d/a/b;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->p()Lcom/baidu/tts/d/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/h;->a(Lcom/baidu/tts/d/a/a;)V

    .line 26
    return-void
.end method
