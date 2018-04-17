.class Lcom/baidu/tts/loopj/AsyncHttpClient$4;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

.field private final synthetic val$mayInterruptIfRunning:Z

.field private final synthetic val$requestList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpClient;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    iput-object p2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-static {v0, v1, v2}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$1(Lcom/baidu/tts/loopj/AsyncHttpClient;Ljava/util/List;Z)V

    .line 774
    return-void
.end method
