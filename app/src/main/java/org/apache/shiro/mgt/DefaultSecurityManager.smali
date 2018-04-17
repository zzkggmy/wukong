.class public Lorg/apache/shiro/mgt/DefaultSecurityManager;
.super Lorg/apache/shiro/mgt/SessionsSecurityManager;
.source "DefaultSecurityManager.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected rememberMeManager:Lorg/apache/shiro/mgt/RememberMeManager;

.field protected subjectDAO:Lorg/apache/shiro/mgt/SubjectDAO;

.field protected subjectFactory:Lorg/apache/shiro/mgt/SubjectFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/apache/shiro/mgt/DefaultSecurityManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/shiro/mgt/SessionsSecurityManager;-><init>()V

    .line 84
    new-instance v0, Lorg/apache/shiro/mgt/DefaultSubjectFactory;

    invoke-direct {v0}, Lorg/apache/shiro/mgt/DefaultSubjectFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectFactory:Lorg/apache/shiro/mgt/SubjectFactory;

    .line 85
    new-instance v0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;

    invoke-direct {v0}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectDAO:Lorg/apache/shiro/mgt/SubjectDAO;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-direct {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;-><init>()V

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->setRealms(Ljava/util/Collection;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/realm/Realm;)V
    .locals 0
    .param p1, "singleRealm"    # Lorg/apache/shiro/realm/Realm;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->setRealm(Lorg/apache/shiro/realm/Realm;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected beforeLogout(Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->rememberMeLogout(Lorg/apache/shiro/subject/Subject;)V

    .line 300
    return-void
.end method

.method protected bind(Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->save(Lorg/apache/shiro/subject/Subject;)V

    .line 200
    return-void
.end method

.method protected copy(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;
    .locals 1
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 303
    new-instance v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-direct {v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;-><init>(Lorg/apache/shiro/subject/SubjectContext;)V

    return-object v0
.end method

.method protected createSessionContext(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/mgt/SessionContext;
    .locals 4
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 524
    new-instance v1, Lorg/apache/shiro/session/mgt/DefaultSessionContext;

    invoke-direct {v1}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;-><init>()V

    .line 525
    .local v1, "sessionContext":Lorg/apache/shiro/session/mgt/DefaultSessionContext;
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 526
    invoke-virtual {v1, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->putAll(Ljava/util/Map;)V

    .line 528
    :cond_0
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->getSessionId()Ljava/io/Serializable;

    move-result-object v2

    .line 529
    .local v2, "sessionId":Ljava/io/Serializable;
    if-eqz v2, :cond_1

    .line 530
    invoke-virtual {v1, v2}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->setSessionId(Ljava/io/Serializable;)V

    .line 532
    :cond_1
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolveHost()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {v1, v0}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->setHost(Ljava/lang/String;)V

    .line 536
    :cond_2
    return-object v1
.end method

.method protected createSubject(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/subject/Subject;)Lorg/apache/shiro/subject/Subject;
    .locals 2
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p3, "existing"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->createSubjectContext()Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    .line 177
    .local v0, "context":Lorg/apache/shiro/subject/SubjectContext;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/shiro/subject/SubjectContext;->setAuthenticated(Z)V

    .line 178
    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setAuthenticationToken(Lorg/apache/shiro/authc/AuthenticationToken;)V

    .line 179
    invoke-interface {v0, p2}, Lorg/apache/shiro/subject/SubjectContext;->setAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationInfo;)V

    .line 180
    if-eqz p3, :cond_0

    .line 181
    invoke-interface {v0, p3}, Lorg/apache/shiro/subject/SubjectContext;->setSubject(Lorg/apache/shiro/subject/Subject;)V

    .line 183
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;

    move-result-object v1

    return-object v1
.end method

.method public createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;
    .locals 2
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->copy(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    .line 333
    .local v0, "context":Lorg/apache/shiro/subject/SubjectContext;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->ensureSecurityManager(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->resolveSession(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->resolvePrincipals(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->doCreateSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;

    move-result-object v1

    .line 350
    .local v1, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->save(Lorg/apache/shiro/subject/Subject;)V

    .line 352
    return-object v1
.end method

.method protected createSubjectContext()Lorg/apache/shiro/subject/SubjectContext;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-direct {v0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;-><init>()V

    return-object v0
.end method

.method protected delete(Lorg/apache/shiro/subject/Subject;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectDAO:Lorg/apache/shiro/mgt/SubjectDAO;

    invoke-interface {v0, p1}, Lorg/apache/shiro/mgt/SubjectDAO;->delete(Lorg/apache/shiro/subject/Subject;)V

    .line 398
    return-void
.end method

.method protected doCreateSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;
    .locals 1
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 369
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getSubjectFactory()Lorg/apache/shiro/mgt/SubjectFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/shiro/mgt/SubjectFactory;->createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method protected ensureSecurityManager(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;
    .locals 2
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 411
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolveSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v1, "Context already contains a SecurityManager instance.  Returning."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 417
    :goto_0
    return-object p1

    .line 415
    :cond_0
    sget-object v0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v1, "No SecurityManager found in context.  Adding self reference."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 416
    invoke-interface {p1, p0}, Lorg/apache/shiro/subject/SubjectContext;->setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    goto :goto_0
.end method

.method public getRememberMeManager()Lorg/apache/shiro/mgt/RememberMeManager;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->rememberMeManager:Lorg/apache/shiro/mgt/RememberMeManager;

    return-object v0
.end method

.method protected getRememberedIdentity(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 5
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getRememberMeManager()Lorg/apache/shiro/mgt/RememberMeManager;

    move-result-object v2

    .line 602
    .local v2, "rmm":Lorg/apache/shiro/mgt/RememberMeManager;
    if-eqz v2, :cond_0

    .line 604
    :try_start_0
    invoke-interface {v2, p1}, Lorg/apache/shiro/mgt/RememberMeManager;->getRememberedPrincipals(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 613
    :goto_0
    return-object v3

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delegate RememberMeManager instance of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] threw an exception during getRememberedPrincipals()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getSessionKey(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/mgt/SessionKey;
    .locals 2
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 462
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->getSessionId()Ljava/io/Serializable;

    move-result-object v0

    .line 463
    .local v0, "sessionId":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Lorg/apache/shiro/session/mgt/DefaultSessionKey;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/mgt/DefaultSessionKey;-><init>(Ljava/io/Serializable;)V

    .line 466
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubjectDAO()Lorg/apache/shiro/mgt/SubjectDAO;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectDAO:Lorg/apache/shiro/mgt/SubjectDAO;

    return-object v0
.end method

.method public getSubjectFactory()Lorg/apache/shiro/mgt/SubjectFactory;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectFactory:Lorg/apache/shiro/mgt/SubjectFactory;

    return-object v0
.end method

.method public login(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/subject/Subject;
    .locals 6
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->authenticate(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    :try_end_0
    .catch Lorg/apache/shiro/authc/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 283
    .local v2, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    invoke-virtual {p0, p2, v2, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->createSubject(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/subject/Subject;)Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    .line 285
    .local v3, "loggedIn":Lorg/apache/shiro/subject/Subject;
    invoke-virtual {p0, p2, v2, v3}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->onSuccessfulLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/subject/Subject;)V

    .line 287
    return-object v3

    .line 271
    .end local v2    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    .end local v3    # "loggedIn":Lorg/apache/shiro/subject/Subject;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ae":Lorg/apache/shiro/authc/AuthenticationException;
    :try_start_1
    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->onFailedLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;Lorg/apache/shiro/subject/Subject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :cond_0
    :goto_0
    throw v0

    .line 274
    :catch_1
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v5, "onFailedLogin method threw an exception.  Logging and propagating original AuthenticationException."

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logout(Lorg/apache/shiro/subject/Subject;)V
    .locals 7
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Subject method argument cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 545
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->beforeLogout(Lorg/apache/shiro/subject/Subject;)V

    .line 547
    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v3

    .line 548
    .local v3, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/shiro/subject/PrincipalCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 549
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v5, "Logging out subject with primary principal {}"

    invoke-interface {v3}, Lorg/apache/shiro/subject/PrincipalCollection;->getPrimaryPrincipal()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    :cond_1
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getAuthenticator()Lorg/apache/shiro/authc/Authenticator;

    move-result-object v0

    .line 553
    .local v0, "authc":Lorg/apache/shiro/authc/Authenticator;
    instance-of v4, v0, Lorg/apache/shiro/authc/LogoutAware;

    if-eqz v4, :cond_2

    .line 554
    check-cast v0, Lorg/apache/shiro/authc/LogoutAware;

    .end local v0    # "authc":Lorg/apache/shiro/authc/Authenticator;
    invoke-interface {v0, v3}, Lorg/apache/shiro/authc/LogoutAware;->onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 559
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->delete(Lorg/apache/shiro/subject/Subject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->stopSession(Lorg/apache/shiro/subject/Subject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :cond_3
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to cleanly stop Session for Subject ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Ignoring (logging out)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "msg":Ljava/lang/String;
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 561
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 562
    const-string v2, "Unable to cleanly unbind Subject.  Ignoring (logging out)."

    .line 563
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 567
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->stopSession(Lorg/apache/shiro/subject/Subject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 568
    :catch_2
    move-exception v1

    .line 569
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to cleanly stop Session for Subject ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Ignoring (logging out)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v4, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v4, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 566
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 567
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->stopSession(Lorg/apache/shiro/subject/Subject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 574
    :cond_5
    :goto_1
    throw v4

    .line 568
    :catch_3
    move-exception v1

    .line 569
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to cleanly stop Session for Subject ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Ignoring (logging out)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v5, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v5, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onFailedLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "ae"    # Lorg/apache/shiro/authc/AuthenticationException;
    .param p3, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->rememberMeFailedLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;Lorg/apache/shiro/subject/Subject;)V

    .line 296
    return-void
.end method

.method protected onSuccessfulLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p3, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->rememberMeSuccessfulLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/subject/Subject;)V

    .line 292
    return-void
.end method

.method protected rememberMeFailedLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;Lorg/apache/shiro/subject/Subject;)V
    .locals 5
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "ex"    # Lorg/apache/shiro/authc/AuthenticationException;
    .param p3, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getRememberMeManager()Lorg/apache/shiro/mgt/RememberMeManager;

    move-result-object v2

    .line 226
    .local v2, "rmm":Lorg/apache/shiro/mgt/RememberMeManager;
    if-eqz v2, :cond_0

    .line 228
    :try_start_0
    invoke-interface {v2, p3, p1, p2}, Lorg/apache/shiro/mgt/RememberMeManager;->onFailedLogin(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delegate RememberMeManager instance of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] threw an exception during onFailedLogin for AuthenticationToken ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected rememberMeLogout(Lorg/apache/shiro/subject/Subject;)V
    .locals 5
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getRememberMeManager()Lorg/apache/shiro/mgt/RememberMeManager;

    move-result-object v2

    .line 242
    .local v2, "rmm":Lorg/apache/shiro/mgt/RememberMeManager;
    if-eqz v2, :cond_0

    .line 244
    :try_start_0
    invoke-interface {v2, p1}, Lorg/apache/shiro/mgt/RememberMeManager;->onLogout(Lorg/apache/shiro/subject/Subject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delegate RememberMeManager instance of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] threw an exception during onLogout for subject with principals ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected rememberMeSuccessfulLogin(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/subject/Subject;)V
    .locals 6
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p3, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getRememberMeManager()Lorg/apache/shiro/mgt/RememberMeManager;

    move-result-object v2

    .line 204
    .local v2, "rmm":Lorg/apache/shiro/mgt/RememberMeManager;
    if-eqz v2, :cond_1

    .line 206
    :try_start_0
    invoke-interface {v2, p3, p1, p2}, Lorg/apache/shiro/mgt/RememberMeManager;->onSuccessfulLogin(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delegate RememberMeManager instance of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] threw an exception during onSuccessfulLogin.  RememberMe services will not be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "performed for account ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    sget-object v3, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instance does not have a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lorg/apache/shiro/mgt/RememberMeManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] instance configured.  RememberMe services "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "will not be performed for account ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected resolveContextSession(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getSessionKey(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/mgt/SessionKey;

    move-result-object v0

    .line 455
    .local v0, "key":Lorg/apache/shiro/session/mgt/SessionKey;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resolvePrincipals(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;
    .locals 3
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 487
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolvePrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    .line 489
    .local v0, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    sget-object v1, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v2, "No identity (PrincipalCollection) found in the context.  Looking for a remembered identity."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getRememberedIdentity(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    .line 494
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    sget-object v1, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v2, "Found remembered PrincipalCollection.  Adding to the context to be used for subject construction by the SubjectFactory."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 498
    invoke-interface {p1, v0}, Lorg/apache/shiro/subject/SubjectContext;->setPrincipals(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 520
    :cond_0
    :goto_0
    return-object p1

    .line 516
    :cond_1
    sget-object v1, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v2, "No remembered identity found.  Returning original context."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected resolveSession(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;
    .locals 4
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 435
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolveSession()Lorg/apache/shiro/session/Session;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 436
    sget-object v2, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Context already contains a session.  Returning."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 450
    :cond_0
    :goto_0
    return-object p1

    .line 442
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->resolveContextSession(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 443
    .local v1, "session":Lorg/apache/shiro/session/Session;
    if-eqz v1, :cond_0

    .line 444
    invoke-interface {p1, v1}, Lorg/apache/shiro/subject/SubjectContext;->setSession(Lorg/apache/shiro/session/Session;)V
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v1    # "session":Lorg/apache/shiro/session/Session;
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    sget-object v2, Lorg/apache/shiro/mgt/DefaultSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Resolved SubjectContext context session is invalid.  Ignoring and creating an anonymous (session-less) Subject instance."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected save(Lorg/apache/shiro/subject/Subject;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectDAO:Lorg/apache/shiro/mgt/SubjectDAO;

    invoke-interface {v0, p1}, Lorg/apache/shiro/mgt/SubjectDAO;->save(Lorg/apache/shiro/subject/Subject;)Lorg/apache/shiro/subject/Subject;

    .line 384
    return-void
.end method

.method public setRememberMeManager(Lorg/apache/shiro/mgt/RememberMeManager;)V
    .locals 0
    .param p1, "rememberMeManager"    # Lorg/apache/shiro/mgt/RememberMeManager;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->rememberMeManager:Lorg/apache/shiro/mgt/RememberMeManager;

    .line 160
    return-void
.end method

.method public setSubjectDAO(Lorg/apache/shiro/mgt/SubjectDAO;)V
    .locals 0
    .param p1, "subjectDAO"    # Lorg/apache/shiro/mgt/SubjectDAO;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectDAO:Lorg/apache/shiro/mgt/SubjectDAO;

    .line 152
    return-void
.end method

.method public setSubjectFactory(Lorg/apache/shiro/mgt/SubjectFactory;)V
    .locals 0
    .param p1, "subjectFactory"    # Lorg/apache/shiro/mgt/SubjectFactory;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/shiro/mgt/DefaultSecurityManager;->subjectFactory:Lorg/apache/shiro/mgt/SubjectFactory;

    .line 124
    return-void
.end method

.method protected stopSession(Lorg/apache/shiro/subject/Subject;)V
    .locals 2
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 579
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 580
    .local v0, "s":Lorg/apache/shiro/session/Session;
    if-eqz v0, :cond_0

    .line 581
    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->stop()V

    .line 583
    :cond_0
    return-void
.end method

.method protected unbind(Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->delete(Lorg/apache/shiro/subject/Subject;)V

    .line 598
    return-void
.end method
