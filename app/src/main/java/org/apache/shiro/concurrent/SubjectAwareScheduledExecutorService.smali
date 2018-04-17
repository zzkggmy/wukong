.class public Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;
.super Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;
.source "SubjectAwareScheduledExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private targetScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "target"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->setTargetScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getTargetScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->targetScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->associateWithSubject(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 69
    .local v0, "work":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->targetScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    return-object v1
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->associateWithSubject(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 74
    .local v0, "work":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->targetScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    return-object v1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->associateWithSubject(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 79
    .local v1, "work":Ljava/lang/Runnable;
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->targetScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->associateWithSubject(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 84
    .local v1, "work":Ljava/lang/Runnable;
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->targetScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public setTargetExecutor(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "targetExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 49
    instance-of v1, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation only accepts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " target instances."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .end local p1    # "targetExecutor":Ljava/util/concurrent/Executor;
    invoke-super {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->setTargetExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 55
    return-void
.end method

.method public setTargetExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p1, "targetExecutorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 59
    instance-of v1, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation only accepts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " target instances."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->setTargetExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 65
    return-void
.end method

.method public setTargetScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "targetScheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->setTargetExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 44
    iput-object p1, p0, Lorg/apache/shiro/concurrent/SubjectAwareScheduledExecutorService;->targetScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    return-void
.end method
