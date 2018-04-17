.class public abstract Lcom/baidu/tts/m/a/a;
.super Ljava/lang/Object;
.source "ASpeechSynthesizerState.java"

# interfaces
.implements Lcom/baidu/tts/m/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/m/a/b;"
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/tts/m/a/d;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/a/d;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/baidu/tts/m/a/a;->a:Lcom/baidu/tts/m/a/d;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/m/a/a;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/m/a/a;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->d(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/tts/m/a/a;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/d;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/m/a/a;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->b(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/m/a/a;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->b(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    .line 33
    return-void
.end method

.method public a(Lcom/baidu/tts/m/a/a;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/m/a/a;->a:Lcom/baidu/tts/m/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/a;)V

    .line 79
    return-void
.end method
