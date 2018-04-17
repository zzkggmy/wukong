.class public Lorg/apache/shiro/subject/support/SubjectCallable;
.super Ljava/lang/Object;
.source "SubjectCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected final threadState:Lorg/apache/shiro/util/ThreadState;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/subject/Subject;Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/Subject;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/shiro/subject/support/SubjectCallable;, "Lorg/apache/shiro/subject/support/SubjectCallable<TV;>;"
    .local p2, "delegate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    new-instance v0, Lorg/apache/shiro/subject/support/SubjectThreadState;

    invoke-direct {v0, p1}, Lorg/apache/shiro/subject/support/SubjectThreadState;-><init>(Lorg/apache/shiro/subject/Subject;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/shiro/subject/support/SubjectCallable;-><init>(Lorg/apache/shiro/util/ThreadState;Ljava/util/concurrent/Callable;)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Lorg/apache/shiro/util/ThreadState;Ljava/util/concurrent/Callable;)V
    .locals 2
    .param p1, "threadState"    # Lorg/apache/shiro/util/ThreadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/util/ThreadState;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/shiro/subject/support/SubjectCallable;, "Lorg/apache/shiro/subject/support/SubjectCallable<TV;>;"
    .local p2, "delegate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ThreadState argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/subject/support/SubjectCallable;->threadState:Lorg/apache/shiro/util/ThreadState;

    .line 74
    if-nez p2, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callable delegate instance cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p2, p0, Lorg/apache/shiro/subject/support/SubjectCallable;->callable:Ljava/util/concurrent/Callable;

    .line 78
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/shiro/subject/support/SubjectCallable;, "Lorg/apache/shiro/subject/support/SubjectCallable<TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectCallable;->threadState:Lorg/apache/shiro/util/ThreadState;

    invoke-interface {v0}, Lorg/apache/shiro/util/ThreadState;->bind()V

    .line 83
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-virtual {p0, v0}, Lorg/apache/shiro/subject/support/SubjectCallable;->doCall(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    iget-object v1, p0, Lorg/apache/shiro/subject/support/SubjectCallable;->threadState:Lorg/apache/shiro/util/ThreadState;

    invoke-interface {v1}, Lorg/apache/shiro/util/ThreadState;->restore()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/shiro/subject/support/SubjectCallable;->threadState:Lorg/apache/shiro/util/ThreadState;

    invoke-interface {v1}, Lorg/apache/shiro/util/ThreadState;->restore()V

    throw v0
.end method

.method protected doCall(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/shiro/subject/support/SubjectCallable;, "Lorg/apache/shiro/subject/support/SubjectCallable<TV;>;"
    .local p1, "target":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
