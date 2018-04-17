.class public Lorg/apache/shiro/subject/support/SubjectThreadState;
.super Ljava/lang/Object;
.source "SubjectThreadState.java"

# interfaces
.implements Lorg/apache/shiro/util/ThreadState;


# instance fields
.field private originalResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient securityManager:Lorg/apache/shiro/mgt/SecurityManager;

.field private final subject:Lorg/apache/shiro/subject/Subject;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/subject/Subject;)V
    .locals 3
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Subject argument cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->subject:Lorg/apache/shiro/subject/Subject;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    instance-of v1, p1, Lorg/apache/shiro/subject/support/DelegatingSubject;

    if-eqz v1, :cond_1

    .line 63
    check-cast p1, Lorg/apache/shiro/subject/support/DelegatingSubject;

    .end local p1    # "subject":Lorg/apache/shiro/subject/Subject;
    invoke-virtual {p1}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    .line 65
    :cond_1
    if-nez v0, :cond_2

    .line 66
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    .line 68
    :cond_2
    iput-object v0, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 69
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 91
    .local v0, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    .line 95
    :cond_0
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->getResources()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->originalResources:Ljava/util/Map;

    .line 96
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->remove()V

    .line 98
    iget-object v1, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->subject:Lorg/apache/shiro/subject/Subject;

    invoke-static {v1}, Lorg/apache/shiro/util/ThreadContext;->bind(Lorg/apache/shiro/subject/Subject;)V

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-static {v0}, Lorg/apache/shiro/util/ThreadContext;->bind(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 102
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->remove()V

    .line 123
    return-void
.end method

.method protected getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->subject:Lorg/apache/shiro/subject/Subject;

    return-object v0
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->remove()V

    .line 111
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->originalResources:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/apache/shiro/subject/support/SubjectThreadState;->originalResources:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/shiro/util/ThreadContext;->setResources(Ljava/util/Map;)V

    .line 114
    :cond_0
    return-void
.end method
