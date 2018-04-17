.class public Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;
.super Lorg/apache/shiro/concurrent/SubjectAwareExecutor;
.source "SubjectAwareExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# instance fields
.field private targetExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "target"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->setTargetExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected associateWithSubject(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v3, "workItems":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 131
    .local v1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v2

    .line 132
    .local v2, "work":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v1    # "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v2    # "work":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_0
    return-object v3
.end method

.method protected associateWithSubject(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 110
    .local v0, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/Subject;->associateWith(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v1

    return-object v1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public getTargetExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 139
    .local v0, "workItems":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 145
    .local v0, "workItems":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 150
    .local v0, "workItems":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 156
    .local v0, "workItems":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public setTargetExecutor(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "targetExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 80
    instance-of v1, p1, Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 81
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

    const-class v2, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " target instances."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->setTargetExecutor(Ljava/util/concurrent/Executor;)V

    .line 86
    return-void
.end method

.method public setTargetExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "targetExecutorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->setTargetExecutor(Ljava/util/concurrent/Executor;)V

    .line 75
    iput-object p1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 76
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 90
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 125
    .local v0, "work":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 120
    .local v0, "work":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->associateWithSubject(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 115
    .local v0, "work":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutorService;->targetExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method
