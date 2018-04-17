.class Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler$1;
.super Ljava/lang/Object;
.source "ExecutorServiceSessionValidationScheduler.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->enableSessionValidation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;


# direct methods
.method constructor <init>(Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler$1;->this$0:Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 89
    return-object v0
.end method
