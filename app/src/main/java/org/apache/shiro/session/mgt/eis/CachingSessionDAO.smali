.class public abstract Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;
.super Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;
.source "CachingSessionDAO.java"

# interfaces
.implements Lorg/apache/shiro/cache/CacheManagerAware;


# static fields
.field public static final ACTIVE_SESSION_CACHE_NAME:Ljava/lang/String; = "shiro-activeSessionCache"


# instance fields
.field private activeSessions:Lorg/apache/shiro/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation
.end field

.field private activeSessionsCacheName:Ljava/lang/String;

.field private cacheManager:Lorg/apache/shiro/cache/CacheManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;-><init>()V

    .line 68
    const-string v0, "shiro-activeSessionCache"

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessionsCacheName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private getActiveSessionsCacheLazy()Lorg/apache/shiro/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessions:Lorg/apache/shiro/cache/Cache;

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->createActiveSessionsCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessions:Lorg/apache/shiro/cache/Cache;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessions:Lorg/apache/shiro/cache/Cache;

    return-object v0
.end method


# virtual methods
.method protected cache(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getActiveSessionsCacheLazy()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 232
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->cache(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;Lorg/apache/shiro/cache/Cache;)V

    goto :goto_0
.end method

.method protected cache(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;Lorg/apache/shiro/cache/Cache;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "sessionId"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/session/Session;",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p3, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    invoke-interface {p3, p2, p1}, Lorg/apache/shiro/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public create(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->create(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;

    move-result-object v0

    .line 185
    .local v0, "sessionId":Ljava/io/Serializable;
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->cache(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;)V

    .line 186
    return-object v0
.end method

.method protected createActiveSessionsCache()Lorg/apache/shiro/cache/Cache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getCacheManager()Lorg/apache/shiro/cache/CacheManager;

    move-result-object v1

    .line 170
    .local v1, "mgr":Lorg/apache/shiro/cache/CacheManager;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getActiveSessionsCacheName()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/apache/shiro/cache/CacheManager;->getCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 174
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public delete(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->uncache(Lorg/apache/shiro/session/Session;)V

    .line 304
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->doDelete(Lorg/apache/shiro/session/Session;)V

    .line 305
    return-void
.end method

.method protected abstract doDelete(Lorg/apache/shiro/session/Session;)V
.end method

.method protected abstract doUpdate(Lorg/apache/shiro/session/Session;)V
.end method

.method public getActiveSessions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getActiveSessionsCacheLazy()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 344
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lorg/apache/shiro/cache/Cache;->values()Ljava/util/Collection;

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public getActiveSessionsCache()Lorg/apache/shiro/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessions:Lorg/apache/shiro/cache/Cache;

    return-object v0
.end method

.method public getActiveSessionsCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessionsCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheManager()Lorg/apache/shiro/cache/CacheManager;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    return-object v0
.end method

.method protected getCachedSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "cached":Lorg/apache/shiro/session/Session;
    if-eqz p1, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getActiveSessionsCacheLazy()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 201
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getCachedSession(Ljava/io/Serializable;Lorg/apache/shiro/cache/Cache;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 205
    .end local v0    # "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    :cond_0
    return-object v1
.end method

.method protected getCachedSession(Ljava/io/Serializable;Lorg/apache/shiro/cache/Cache;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;)",
            "Lorg/apache/shiro/session/Session;"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    invoke-interface {p2, p1}, Lorg/apache/shiro/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/session/Session;

    return-object v0
.end method

.method public readSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getCachedSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 260
    .local v0, "s":Lorg/apache/shiro/session/Session;
    if-nez v0, :cond_0

    .line 261
    invoke-super {p0, p1}, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->readSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 263
    :cond_0
    return-object v0
.end method

.method public setActiveSessionsCache(Lorg/apache/shiro/cache/Cache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessions:Lorg/apache/shiro/cache/Cache;

    .line 139
    return-void
.end method

.method public setActiveSessionsCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "activeSessionsCacheName"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->activeSessionsCacheName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V
    .locals 0
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    .line 84
    return-void
.end method

.method protected uncache(Lorg/apache/shiro/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 320
    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v1

    .line 324
    .local v1, "id":Ljava/io/Serializable;
    if-eqz v1, :cond_0

    .line 327
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->getActiveSessionsCacheLazy()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 328
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/io/Serializable;Lorg/apache/shiro/session/Session;>;"
    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0, v1}, Lorg/apache/shiro/cache/Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public update(Lorg/apache/shiro/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->doUpdate(Lorg/apache/shiro/session/Session;)V

    .line 278
    instance-of v0, p1, Lorg/apache/shiro/session/mgt/ValidatingSession;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 279
    check-cast v0, Lorg/apache/shiro/session/mgt/ValidatingSession;

    invoke-interface {v0}, Lorg/apache/shiro/session/mgt/ValidatingSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->cache(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;)V

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->uncache(Lorg/apache/shiro/session/Session;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/session/mgt/eis/CachingSessionDAO;->cache(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;)V

    goto :goto_0
.end method
