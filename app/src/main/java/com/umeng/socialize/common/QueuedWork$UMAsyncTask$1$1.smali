.class Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1$1;
.super Ljava/lang/Object;
.source "QueuedWork.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1$1;->this$1:Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1;

    iput-object p2, p0, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1$1;->this$1:Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1;

    iget-object v0, v0, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1;->this$0:Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    iget-object v1, p0, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 158
    return-void
.end method
