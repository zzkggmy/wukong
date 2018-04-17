.class Lcom/baidu/tts/loopj/RequestHandle$1;
.super Ljava/lang/Object;
.source "RequestHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/RequestHandle;->cancel(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/RequestHandle;

.field private final synthetic val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

.field private final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/RequestHandle;Lcom/baidu/tts/loopj/AsyncHttpRequest;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->this$0:Lcom/baidu/tts/loopj/RequestHandle;

    iput-object p2, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

    iput-boolean p3, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$mayInterruptIfRunning:Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$_request:Lcom/baidu/tts/loopj/AsyncHttpRequest;

    iget-boolean v1, p0, Lcom/baidu/tts/loopj/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancel(Z)Z

    .line 59
    return-void
.end method
