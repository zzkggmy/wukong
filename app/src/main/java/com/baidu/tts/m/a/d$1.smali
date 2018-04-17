.class Lcom/baidu/tts/m/a/d$1;
.super Ljava/lang/Object;
.source "SpeechSynthesizerMachine.java"

# interfaces
.implements Lcom/baidu/tts/aop/ttslistener/TtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/m/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/m/a/d;


# direct methods
.method constructor <init>(Lcom/baidu/tts/m/a/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/baidu/tts/k/h;)V
    .locals 3
    .param p1, "responseBag"    # Lcom/baidu/tts/k/h;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v1, p1}, Lcom/baidu/tts/m/a/d;->b(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object v1

    .line 582
    iget-object v2, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v2}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onError(Ljava/lang/String;Lcom/baidu/tts/client/SpeechError;)V

    .line 584
    :cond_0
    return-void
.end method

.method public onPlayFinished(Lcom/baidu/tts/k/h;)V
    .locals 2
    .param p1, "responseBag"    # Lcom/baidu/tts/k/h;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechFinish(Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onPlayProgressUpdate(Lcom/baidu/tts/k/h;)V
    .locals 3
    .param p1, "responseBag"    # Lcom/baidu/tts/k/h;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->c()I

    move-result v1

    .line 559
    iget-object v2, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v2}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechProgressChanged(Ljava/lang/String;I)V

    .line 561
    :cond_0
    return-void
.end method

.method public onPlayStart(Lcom/baidu/tts/k/h;)V
    .locals 2
    .param p1, "responseBag"    # Lcom/baidu/tts/k/h;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechStart(Ljava/lang/String;)V

    .line 549
    :cond_0
    return-void
.end method

.method public onSynthesizeDataArrived(Lcom/baidu/tts/k/h;)V
    .locals 4
    .param p1, "responseBag"    # Lcom/baidu/tts/k/h;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->d()[B

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->c()I

    move-result v2

    .line 525
    iget-object v3, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v3}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeDataArrived(Ljava/lang/String;[BI)V

    .line 527
    :cond_0
    return-void
.end method

.method public onSynthesizeFinished(Lcom/baidu/tts/k/h;)V
    .locals 2
    .param p1, "responseBag"    # Lcom/baidu/tts/k/h;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeFinish(Ljava/lang/String;)V

    .line 538
    :cond_0
    return-void
.end method

.method public onSynthesizeStart(Lcom/baidu/tts/k/h;)V
    .locals 2
    .param p1, "responseBag"    # Lcom/baidu/tts/k/h;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/baidu/tts/m/a/d$1;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeStart(Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method
