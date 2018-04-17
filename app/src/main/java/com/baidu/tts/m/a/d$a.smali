.class Lcom/baidu/tts/m/a/d$a;
.super Ljava/lang/Object;
.source "SpeechSynthesizerMachine.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/m/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/baidu/tts/m/a/d;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/a/d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    iput-object p1, p0, Lcom/baidu/tts/m/a/d$a;->b:Lcom/baidu/tts/m/a/d;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/baidu/tts/m/a/d$a;->a:Ljava/util/List;

    .line 475
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 479
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 481
    if-lez v3, :cond_0

    .line 482
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 498
    :cond_0
    return-object v6

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/SpeechSynthesizeBag;

    .line 484
    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 487
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->setUtteranceId(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 490
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/baidu/tts/m/a/d$a;->b:Lcom/baidu/tts/m/a/d;

    invoke-static {v1}, Lcom/baidu/tts/m/a/d;->b(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/aop/tts/TtsProxy;

    move-result-object v1

    new-instance v5, Lcom/baidu/tts/k/i;

    invoke-direct {v5, v4, v0}, Lcom/baidu/tts/k/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/baidu/tts/aop/tts/TtsProxy;->speak(Lcom/baidu/tts/k/i;)V

    .line 482
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/m/a/d$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
