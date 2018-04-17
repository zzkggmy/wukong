.class public Lorg/apache/shiro/subject/support/SubjectRunnable;
.super Ljava/lang/Object;
.source "SubjectRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final runnable:Ljava/lang/Runnable;

.field protected final threadState:Lorg/apache/shiro/util/ThreadState;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/subject/Subject;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "delegate"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    new-instance v0, Lorg/apache/shiro/subject/support/SubjectThreadState;

    invoke-direct {v0, p1}, Lorg/apache/shiro/subject/support/SubjectThreadState;-><init>(Lorg/apache/shiro/subject/Subject;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/shiro/subject/support/SubjectRunnable;-><init>(Lorg/apache/shiro/util/ThreadState;Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method protected constructor <init>(Lorg/apache/shiro/util/ThreadState;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "threadState"    # Lorg/apache/shiro/util/ThreadState;
    .param p2, "delegate"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ThreadState argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/subject/support/SubjectRunnable;->threadState:Lorg/apache/shiro/util/ThreadState;

    .line 87
    if-nez p2, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Runnable argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput-object p2, p0, Lorg/apache/shiro/subject/support/SubjectRunnable;->runnable:Ljava/lang/Runnable;

    .line 91
    return-void
.end method


# virtual methods
.method protected doRun(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 121
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectRunnable;->threadState:Lorg/apache/shiro/util/ThreadState;

    invoke-interface {v0}, Lorg/apache/shiro/util/ThreadState;->bind()V

    .line 108
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectRunnable;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/apache/shiro/subject/support/SubjectRunnable;->doRun(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectRunnable;->threadState:Lorg/apache/shiro/util/ThreadState;

    invoke-interface {v0}, Lorg/apache/shiro/util/ThreadState;->restore()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/shiro/subject/support/SubjectRunnable;->threadState:Lorg/apache/shiro/util/ThreadState;

    invoke-interface {v1}, Lorg/apache/shiro/util/ThreadState;->restore()V

    throw v0
.end method
