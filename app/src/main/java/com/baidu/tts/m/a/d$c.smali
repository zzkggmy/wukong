.class Lcom/baidu/tts/m/a/d$c;
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
    name = "c"
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
.field final synthetic a:Lcom/baidu/tts/m/a/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/m/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/baidu/tts/m/a/d$c;->a:Lcom/baidu/tts/m/a/d;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p2, p0, Lcom/baidu/tts/m/a/d$c;->b:Ljava/lang/String;

    .line 458
    iput-object p3, p0, Lcom/baidu/tts/m/a/d$c;->c:Ljava/lang/String;

    .line 459
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/baidu/tts/m/a/d$c;->a:Lcom/baidu/tts/m/a/d;

    invoke-static {v0}, Lcom/baidu/tts/m/a/d;->b(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/aop/tts/TtsProxy;

    move-result-object v0

    new-instance v1, Lcom/baidu/tts/k/i;

    iget-object v2, p0, Lcom/baidu/tts/m/a/d$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/tts/m/a/d$c;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/baidu/tts/k/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/aop/tts/TtsProxy;->synthesize(Lcom/baidu/tts/k/i;)V

    .line 464
    const/4 v0, 0x0

    return-object v0
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
    invoke-virtual {p0}, Lcom/baidu/tts/m/a/d$c;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
