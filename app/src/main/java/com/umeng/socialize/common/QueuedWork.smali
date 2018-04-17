.class public Lcom/umeng/socialize/common/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;,
        Lcom/umeng/socialize/common/QueuedWork$DialogThread;
    }
.end annotation


# static fields
.field private static uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/umeng/socialize/common/QueuedWork;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancle(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public static removeInBack(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public static runInBack(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "umengsocial"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public static runInMain(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/umeng/socialize/common/QueuedWork;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
