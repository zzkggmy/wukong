.class public abstract Lorg/apache/shiro/mgt/SessionsSecurityManager;
.super Lorg/apache/shiro/mgt/AuthorizingSecurityManager;
.source "SessionsSecurityManager.java"


# instance fields
.field private sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;

    invoke-direct {v0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    .line 62
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/SessionsSecurityManager;->applyCacheManagerToSessionManager()V

    .line 63
    return-void
.end method


# virtual methods
.method protected afterCacheManagerSet()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->afterCacheManagerSet()V

    .line 104
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/SessionsSecurityManager;->applyCacheManagerToSessionManager()V

    .line 105
    return-void
.end method

.method protected afterSessionManagerSet()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/SessionsSecurityManager;->applyCacheManagerToSessionManager()V

    .line 85
    return-void
.end method

.method protected applyCacheManagerToSessionManager()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    instance-of v0, v0, Lorg/apache/shiro/cache/CacheManagerAware;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    check-cast v0, Lorg/apache/shiro/cache/CacheManagerAware;

    invoke-virtual {p0}, Lorg/apache/shiro/mgt/SessionsSecurityManager;->getCacheManager()Lorg/apache/shiro/cache/CacheManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/shiro/cache/CacheManagerAware;->setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V

    .line 118
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/SessionsSecurityManager;->getSessionManager()Lorg/apache/shiro/session/mgt/SessionManager;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    .line 131
    invoke-super {p0}, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->destroy()V

    .line 132
    return-void
.end method

.method public getSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/SessionException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/mgt/SessionManager;->getSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public getSessionManager()Lorg/apache/shiro/session/mgt/SessionManager;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    return-object v0
.end method

.method public setSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/SessionManager;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    .line 80
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/SessionsSecurityManager;->afterSessionManagerSet()V

    .line 81
    return-void
.end method

.method public start(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/shiro/mgt/SessionsSecurityManager;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/mgt/SessionManager;->start(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method
