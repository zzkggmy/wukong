.class public Lorg/apache/shiro/concurrent/SubjectAwareExecutor;
.super Ljava/lang/Object;
.source "SubjectAwareExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private targetExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "targetExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target Executor instance cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->targetExecutor:Ljava/util/concurrent/Executor;

    .line 71
    return-void
.end method


# virtual methods
.method protected associateWithSubject(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 117
    .local v0, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/Subject;->associateWith(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->associateWithSubject(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 129
    .local v0, "associated":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->getTargetExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method protected getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method public getTargetExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->targetExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public setTargetExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "targetExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/shiro/concurrent/SubjectAwareExecutor;->targetExecutor:Ljava/util/concurrent/Executor;

    .line 90
    return-void
.end method
