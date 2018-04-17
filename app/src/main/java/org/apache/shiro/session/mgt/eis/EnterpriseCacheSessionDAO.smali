.class public Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;
.super Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;
.source "EnterpriseCacheSessionDAO.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;-><init>()V

    .line 55
    new-instance v0, Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO$1;

    invoke-direct {v0, p0}, Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO$1;-><init>(Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;)V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;->setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected doCreate(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;->generateSessionId(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;

    move-result-object v0

    .line 65
    .local v0, "sessionId":Ljava/io/Serializable;
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;->assignSessionId(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;)V

    .line 66
    return-object v0
.end method

.method protected doDelete(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 81
    return-void
.end method

.method protected doReadSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doUpdate(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 77
    return-void
.end method
