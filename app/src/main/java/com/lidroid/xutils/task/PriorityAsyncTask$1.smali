.class Lcom/lidroid/xutils/task/PriorityAsyncTask$1;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    invoke-static {v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$1(Lcom/lidroid/xutils/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 67
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$2(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
