.class Lcom/baidu/tts/b/b/a/f$a;
.super Ljava/lang/Object;
.source "PlayExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/b/a/f;

.field private b:Lcom/baidu/tts/k/h;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;Lcom/baidu/tts/k/h;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/f$a;->a:Lcom/baidu/tts/b/b/a/f;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/baidu/tts/b/b/a/f$a;->b:Lcom/baidu/tts/k/h;

    .line 187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "PlayQueueMachine"

    const-string v1, "enter run"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/f$a;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-static {v0}, Lcom/baidu/tts/b/b/a/f;->a(Lcom/baidu/tts/b/b/a/f;)Lcom/baidu/tts/b/b/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/b/a/f$a;->b:Lcom/baidu/tts/k/h;

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/b/b/c;->a(Lcom/baidu/tts/k/h;)Lcom/baidu/tts/aop/tts/TtsError;

    .line 193
    const-string v0, "PlayQueueMachine"

    const-string v1, "end run"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method
