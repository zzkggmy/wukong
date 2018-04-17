.class public abstract Lcom/umeng/socialize/common/QueuedWork$DialogThread;
.super Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/common/QueuedWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DialogThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    .line 71
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/umeng/socialize/Config;->isShowDialog:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/umeng/socialize/Config;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/umeng/socialize/Config;->dialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/umeng/socialize/common/QueuedWork$DialogThread$1;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/common/QueuedWork$DialogThread$1;-><init>(Lcom/umeng/socialize/common/QueuedWork$DialogThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 99
    :cond_0
    return-void

    .line 77
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 108
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;->onPreExecute()V

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 114
    return-void
.end method
