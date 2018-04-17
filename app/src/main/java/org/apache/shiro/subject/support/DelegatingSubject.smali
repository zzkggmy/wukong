.class public Lorg/apache/shiro/subject/support/DelegatingSubject;
.super Ljava/lang/Object;
.source "DelegatingSubject.java"

# interfaces
.implements Lorg/apache/shiro/subject/Subject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/subject/support/DelegatingSubject$1;,
        Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final RUN_AS_PRINCIPALS_SESSION_KEY:Ljava/lang/String;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected authenticated:Z

.field protected host:Ljava/lang/String;

.field protected principals:Lorg/apache/shiro/subject/PrincipalCollection;

.field protected transient securityManager:Lorg/apache/shiro/mgt/SecurityManager;

.field protected session:Lorg/apache/shiro/session/Session;

.field protected sessionCreationEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lorg/apache/shiro/subject/support/DelegatingSubject;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/shiro/subject/support/DelegatingSubject;->$assertionsDisabled:Z

    .line 73
    const-class v0, Lorg/apache/shiro/subject/support/DelegatingSubject;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DelegatingSubject;->log:Lorg/slf4j/Logger;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DelegatingSubject;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".RUN_AS_PRINCIPALS_SESSION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DelegatingSubject;->RUN_AS_PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 6
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/shiro/subject/support/DelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 7
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "authenticated"    # Z
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "session"    # Lorg/apache/shiro/session/Session;
    .param p5, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 95
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/shiro/subject/support/DelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLorg/apache/shiro/mgt/SecurityManager;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLorg/apache/shiro/mgt/SecurityManager;)V
    .locals 2
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "authenticated"    # Z
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "session"    # Lorg/apache/shiro/session/Session;
    .param p5, "sessionCreationEnabled"    # Z
    .param p6, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p6, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecurityManager argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p6, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 105
    iput-object p1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 106
    iput-boolean p2, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->authenticated:Z

    .line 107
    iput-object p3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->host:Ljava/lang/String;

    .line 108
    if-eqz p4, :cond_1

    .line 109
    invoke-virtual {p0, p4}, Lorg/apache/shiro/subject/support/DelegatingSubject;->decorate(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    .line 111
    :cond_1
    iput-boolean p5, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->sessionCreationEnabled:Z

    .line 112
    return-void
.end method

.method static synthetic access$100(Lorg/apache/shiro/subject/support/DelegatingSubject;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/shiro/subject/support/DelegatingSubject;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->sessionStopped()V

    return-void
.end method

.method private clearRunAsIdentities()V
    .locals 2

    .prologue
    .line 475
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 476
    .local v0, "session":Lorg/apache/shiro/session/Session;
    if-eqz v0, :cond_0

    .line 477
    sget-object v1, Lorg/apache/shiro/subject/support/DelegatingSubject;->RUN_AS_PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    return-void
.end method

.method private clearRunAsIdentitiesInternal()V
    .locals 3

    .prologue
    .line 353
    :try_start_0
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->clearRunAsIdentities()V
    :try_end_0
    .catch Lorg/apache/shiro/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "se":Lorg/apache/shiro/session/SessionException;
    sget-object v1, Lorg/apache/shiro/subject/support/DelegatingSubject;->log:Lorg/slf4j/Logger;

    const-string v2, "Encountered session exception trying to clear \'runAs\' identities during logout.  This can generally safely be ignored."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPrimaryPrincipal(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 139
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-interface {p1}, Lorg/apache/shiro/subject/PrincipalCollection;->getPrimaryPrincipal()Ljava/lang/Object;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRunAsPrincipalsStack()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 468
    .local v0, "session":Lorg/apache/shiro/session/Session;
    if-eqz v0, :cond_0

    .line 469
    sget-object v1, Lorg/apache/shiro/subject/support/DelegatingSubject;->RUN_AS_PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 471
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private popIdentity()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 4

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 498
    .local v0, "popped":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getRunAsPrincipalsStack()Ljava/util/List;

    move-result-object v2

    .line 499
    .local v2, "stack":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "popped":Lorg/apache/shiro/subject/PrincipalCollection;
    check-cast v0, Lorg/apache/shiro/subject/PrincipalCollection;

    .line 502
    .restart local v0    # "popped":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 505
    .local v1, "session":Lorg/apache/shiro/session/Session;
    sget-object v3, Lorg/apache/shiro/subject/support/DelegatingSubject;->RUN_AS_PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    .end local v1    # "session":Lorg/apache/shiro/session/Session;
    :cond_0
    :goto_0
    return-object v0

    .line 508
    :cond_1
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->clearRunAsIdentities()V

    goto :goto_0
.end method

.method private pushIdentity(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 4
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const-string v0, "Specified Subject principals cannot be null or empty for \'run as\' functionality."

    .line 484
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 486
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getRunAsPrincipalsStack()Ljava/util/List;

    move-result-object v2

    .line 487
    .local v2, "stack":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    if-nez v2, :cond_1

    .line 488
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v2    # "stack":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 490
    .restart local v2    # "stack":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 491
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 492
    .local v1, "session":Lorg/apache/shiro/session/Session;
    sget-object v3, Lorg/apache/shiro/subject/support/DelegatingSubject;->RUN_AS_PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    return-void
.end method

.method private sessionStopped()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    .line 378
    return-void
.end method


# virtual methods
.method protected assertAuthzCheckPossible()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This subject is anonymous - it does not have any identifying principals and authorization operations require an identity to check against.  A Subject instance will acquire these identifying principals automatically after a successful login is performed be executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/subject/Subject;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".login(AuthenticationToken) or when \'Remember Me\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "functionality is enabled by the SecurityManager.  This exception can also occur when a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "previously logged-in Subject has logged out which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "makes it anonymous again.  Because an identity is currently not known due to any of these "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conditions, authorization is denied."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/authz/UnauthenticatedException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/authz/UnauthenticatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public associateWith(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 399
    instance-of v1, p1, Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 400
    const-string v0, "This implementation does not support Thread arguments because of JDK ThreadLocal inheritance mechanisms required by Shiro.  Instead, the method argument should be a non-Thread Runnable and the return value from this method can then be given to an ExecutorService or another Thread."

    .line 404
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/apache/shiro/subject/support/SubjectRunnable;

    invoke-direct {v1, p0, p1}, Lorg/apache/shiro/subject/support/SubjectRunnable;-><init>(Lorg/apache/shiro/subject/Subject;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public associateWith(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    new-instance v0, Lorg/apache/shiro/subject/support/SubjectCallable;

    invoke-direct {v0, p0, p1}, Lorg/apache/shiro/subject/support/SubjectCallable;-><init>(Lorg/apache/shiro/subject/Subject;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public checkPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->assertAuthzCheckPossible()V

    .line 205
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public checkPermission(Lorg/apache/shiro/authz/Permission;)V
    .locals 2
    .param p1, "permission"    # Lorg/apache/shiro/authz/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->assertAuthzCheckPossible()V

    .line 210
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V

    .line 211
    return-void
.end method

.method public checkPermissions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->assertAuthzCheckPossible()V

    .line 220
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V

    .line 221
    return-void
.end method

.method public varargs checkPermissions([Ljava/lang/String;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->assertAuthzCheckPossible()V

    .line 215
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public checkRole(Ljava/lang/String;)V
    .locals 2
    .param p1, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->assertAuthzCheckPossible()V

    .line 241
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->checkRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public checkRoles(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "roles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->assertAuthzCheckPossible()V

    .line 251
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V

    .line 252
    return-void
.end method

.method public varargs checkRoles([Ljava/lang/String;)V
    .locals 2
    .param p1, "roleIdentifiers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->assertAuthzCheckPossible()V

    .line 246
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method protected createSessionContext()Lorg/apache/shiro/session/mgt/SessionContext;
    .locals 2

    .prologue
    .line 343
    new-instance v0, Lorg/apache/shiro/session/mgt/DefaultSessionContext;

    invoke-direct {v0}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;-><init>()V

    .line 344
    .local v0, "sessionContext":Lorg/apache/shiro/session/mgt/SessionContext;
    iget-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->host:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/SessionContext;->setHost(Ljava/lang/String;)V

    .line 347
    :cond_0
    return-object v0
.end method

.method protected decorate(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    new-instance v0, Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p0, v1}, Lorg/apache/shiro/subject/support/DelegatingSubject$StoppingAwareProxiedSession;-><init>(Lorg/apache/shiro/subject/support/DelegatingSubject;Lorg/apache/shiro/session/Session;Lorg/apache/shiro/subject/support/DelegatingSubject;Lorg/apache/shiro/subject/support/DelegatingSubject$1;)V

    return-object v0
.end method

.method public execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/subject/ExecutionException;
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/subject/support/DelegatingSubject;->associateWith(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 383
    .local v0, "associated":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/shiro/subject/ExecutionException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/subject/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lorg/apache/shiro/subject/support/DelegatingSubject;->associateWith(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 391
    .local v0, "associated":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 392
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "previousPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getRunAsPrincipalsStack()Ljava/util/List;

    move-result-object v1

    .line 448
    .local v1, "stack":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 449
    .local v2, "stackSize":I
    :goto_0
    if-lez v2, :cond_0

    .line 450
    if-ne v2, v4, :cond_2

    .line 451
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 458
    :cond_0
    :goto_1
    return-object v0

    .line 448
    .end local v2    # "stackSize":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 454
    .restart local v2    # "stackSize":I
    :cond_2
    sget-boolean v3, Lorg/apache/shiro/subject/support/DelegatingSubject;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 455
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "previousPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    check-cast v0, Lorg/apache/shiro/subject/PrincipalCollection;

    .restart local v0    # "previousPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    goto :goto_1
.end method

.method public getPrincipal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrimaryPrincipal(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getRunAsPrincipalsStack()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "runAsPrincipals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/subject/PrincipalCollection;

    goto :goto_0
.end method

.method public getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    return-object v0
.end method

.method public getSession()Lorg/apache/shiro/session/Session;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Lorg/apache/shiro/session/Session;
    .locals 8
    .param p1, "create"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 316
    sget-object v3, Lorg/apache/shiro/subject/support/DelegatingSubject;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    sget-object v6, Lorg/apache/shiro/subject/support/DelegatingSubject;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attempting to get session; create = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "; session is null = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "; session has id = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    invoke-interface {v7}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    .line 325
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->isSessionCreationEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session creation has been disabled for the current subject.  This exception indicates that there is either a programming error (using a session when it should never be used) or that Shiro\'s configuration needs to be adjusted to allow Sessions to be created for the current Subject.  See the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/apache/shiro/subject/support/DisabledSessionException;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " JavaDoc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "for more."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/subject/support/DisabledSessionException;

    invoke-direct {v3, v0}, Lorg/apache/shiro/subject/support/DisabledSessionException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 317
    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 334
    :cond_3
    sget-object v3, Lorg/apache/shiro/subject/support/DelegatingSubject;->log:Lorg/slf4j/Logger;

    const-string v4, "Starting session for host {}"

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->createSessionContext()Lorg/apache/shiro/session/mgt/SessionContext;

    move-result-object v2

    .line 336
    .local v2, "sessionContext":Lorg/apache/shiro/session/mgt/SessionContext;
    iget-object v3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-interface {v3, v2}, Lorg/apache/shiro/mgt/SecurityManager;->start(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 337
    .local v1, "session":Lorg/apache/shiro/session/Session;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/subject/support/DelegatingSubject;->decorate(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    .line 339
    .end local v1    # "session":Lorg/apache/shiro/session/Session;
    .end local v2    # "sessionContext":Lorg/apache/shiro/session/mgt/SessionContext;
    :cond_4
    iget-object v3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    return-object v3
.end method

.method public hasAllRoles(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "roleIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->hasAllRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasPrincipals()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleIdentifier"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRoles(Ljava/util/List;)[Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "roleIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->hasRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->authenticated:Z

    return v0
.end method

.method public isPermitted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermitted(Lorg/apache/shiro/authz/Permission;)Z
    .locals 2
    .param p1, "permission"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermitted(Ljava/util/List;)[Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method public varargs isPermitted([Ljava/lang/String;)[Z
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)[Z

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method public isPermittedAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs isPermittedAll([Ljava/lang/String;)Z
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/mgt/SecurityManager;->isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemembered()Z
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    .line 298
    .local v0, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/shiro/subject/PrincipalCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRunAs()Z
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->getRunAsPrincipalsStack()Ljava/util/List;

    move-result-object v0

    .line 442
    .local v0, "stack":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isSessionCreationEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->sessionCreationEnabled:Z

    return v0
.end method

.method public login(Lorg/apache/shiro/authc/AuthenticationToken;)V
    .locals 7
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->clearRunAsIdentitiesInternal()V

    .line 256
    iget-object v6, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-interface {v6, p0, p1}, Lorg/apache/shiro/mgt/SecurityManager;->login(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/subject/Subject;

    move-result-object v5

    .line 260
    .local v5, "subject":Lorg/apache/shiro/subject/Subject;
    const/4 v1, 0x0

    .line 262
    .local v1, "host":Ljava/lang/String;
    instance-of v6, v5, Lorg/apache/shiro/subject/support/DelegatingSubject;

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 263
    check-cast v0, Lorg/apache/shiro/subject/support/DelegatingSubject;

    .line 265
    .local v0, "delegating":Lorg/apache/shiro/subject/support/DelegatingSubject;
    iget-object v3, v0, Lorg/apache/shiro/subject/support/DelegatingSubject;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 266
    .local v3, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    iget-object v1, v0, Lorg/apache/shiro/subject/support/DelegatingSubject;->host:Ljava/lang/String;

    .line 271
    .end local v0    # "delegating":Lorg/apache/shiro/subject/support/DelegatingSubject;
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/shiro/subject/PrincipalCollection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 272
    :cond_0
    const-string v2, "Principals returned from securityManager.login( token ) returned a null or empty value.  This value must be non null and populated with one or more elements."

    .line 274
    .local v2, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    :cond_1
    invoke-interface {v5}, Lorg/apache/shiro/subject/Subject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v3

    .restart local v3    # "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    goto :goto_0

    .line 276
    :cond_2
    iput-object v3, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 277
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->authenticated:Z

    .line 278
    instance-of v6, p1, Lorg/apache/shiro/authc/HostAuthenticationToken;

    if-eqz v6, :cond_3

    .line 279
    check-cast p1, Lorg/apache/shiro/authc/HostAuthenticationToken;

    .end local p1    # "token":Lorg/apache/shiro/authc/AuthenticationToken;
    invoke-interface {p1}, Lorg/apache/shiro/authc/HostAuthenticationToken;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_3
    if-eqz v1, :cond_4

    .line 282
    iput-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->host:Ljava/lang/String;

    .line 284
    :cond_4
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v4

    .line 285
    .local v4, "session":Lorg/apache/shiro/session/Session;
    if-eqz v4, :cond_5

    .line 286
    invoke-virtual {p0, v4}, Lorg/apache/shiro/subject/support/DelegatingSubject;->decorate(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    .line 290
    :goto_1
    return-void

    .line 288
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    goto :goto_1
.end method

.method public logout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 362
    :try_start_0
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->clearRunAsIdentitiesInternal()V

    .line 363
    iget-object v0, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    invoke-interface {v0, p0}, Lorg/apache/shiro/mgt/SecurityManager;->logout(Lorg/apache/shiro/subject/Subject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iput-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    .line 366
    iput-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 367
    iput-boolean v2, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->authenticated:Z

    .line 374
    return-void

    .line 365
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->session:Lorg/apache/shiro/session/Session;

    .line 366
    iput-object v1, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 367
    iput-boolean v2, p0, Lorg/apache/shiro/subject/support/DelegatingSubject;->authenticated:Z

    throw v0
.end method

.method public releaseRunAs()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->popIdentity()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    return-object v0
.end method

.method public runAs(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 430
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->hasPrincipals()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This subject does not yet have an identity.  Assuming the identity of another Subject is only allowed for Subjects with an existing identity.  Try logging this subject in first, or using the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/subject/Subject$Builder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to build ad hoc Subject instances "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with identities as necessary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/shiro/subject/support/DelegatingSubject;->pushIdentity(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 438
    return-void
.end method
