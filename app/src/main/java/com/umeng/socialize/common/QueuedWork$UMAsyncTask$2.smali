.class Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$2;
.super Ljava/lang/Object;
.source "QueuedWork.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$2;->this$0:Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask$2;->this$0:Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    invoke-virtual {v0}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;->onPreExecute()V

    .line 166
    return-void
.end method
