.class public Lcom/baidu/tts/client/SpeechSynthesizeBag;
.super Ljava/lang/Object;
.source "SpeechSynthesizeBag.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/baidu/tts/o/g;->a(Ljava/lang/String;)Lcom/baidu/tts/e/o;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    goto :goto_0
.end method

.method public setUtteranceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->b:Ljava/lang/String;

    .line 48
    return-void
.end method
