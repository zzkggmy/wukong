.class Lcom/baidu/tts/b/a/a/c$a;
.super Ljava/lang/Object;
.source "EngineExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/a/c;
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
.field final synthetic a:Lcom/baidu/tts/b/a/a/c;

.field private b:Lcom/baidu/tts/k/i;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;Lcom/baidu/tts/k/i;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/k/i;

    .line 222
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/k/i;

    invoke-static {v1}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a/c;->a(Lcom/baidu/tts/k/h;)V

    .line 232
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v0, v0, Lcom/baidu/tts/b/a/a/c;->a:Lcom/baidu/tts/b/a/b/b;

    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/k/i;

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/a/b/b;->a(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/k/i;

    invoke-static {v1}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a/c;->c(Lcom/baidu/tts/k/h;)V

    .line 238
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v2, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/k/i;

    invoke-static {v2, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/k/i;Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/k/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/a/c;->e(Lcom/baidu/tts/k/h;)V

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
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/c$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
