.class Lcom/umeng/socialize/common/QueuedWork$DialogThread$1;
.super Ljava/lang/Object;
.source "QueuedWork.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/common/QueuedWork$DialogThread;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/common/QueuedWork$DialogThread;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread$1;->this$0:Lcom/umeng/socialize/common/QueuedWork$DialogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 86
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread$1;->this$0:Lcom/umeng/socialize/common/QueuedWork$DialogThread;

    iget-object v0, v0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->thread:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->removeInBack(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
