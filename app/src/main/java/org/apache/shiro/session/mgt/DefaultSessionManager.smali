.class public Lorg/apache/shiro/session/mgt/DefaultSessionManager;
.super Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;
.source "DefaultSessionManager.java"

# interfaces
.implements Lorg/apache/shiro/cache/CacheManagerAware;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cacheManager:Lorg/apache/shiro/cache/CacheManager;

.field private deleteInvalidSessions:Z

.field protected sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

.field private sessionFactory:Lorg/apache/shiro/session/mgt/SessionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->deleteInvalidSessions:Z

    .line 57
    new-instance v0, Lorg/apache/shiro/session/mgt/SimpleSessionFactory;

    invoke-direct {v0}, Lorg/apache/shiro/session/mgt/SimpleSessionFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionFactory:Lorg/apache/shiro/session/mgt/SessionFactory;

    .line 58
    new-instance v0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;

    invoke-direct {v0}, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    .line 59
    return-void
.end method

.method private applyCacheManagerToSessionDAO()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    instance-of v0, v0, Lorg/apache/shiro/cache/CacheManagerAware;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    check-cast v0, Lorg/apache/shiro/cache/CacheManagerAware;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    invoke-interface {v0, v1}, Lorg/apache/shiro/cache/CacheManagerAware;->setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method protected afterExpired(Lorg/apache/shiro/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->isDeleteInvalidSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->delete(Lorg/apache/shiro/session/Session;)V

    .line 209
    :cond_0
    return-void
.end method

.method protected afterStopped(Lorg/apache/shiro/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->isDeleteInvalidSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->delete(Lorg/apache/shiro/session/Session;)V

    .line 195
    :cond_0
    return-void
.end method

.method protected create(Lorg/apache/shiro/session/Session;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 174
    sget-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new EIS record for new session instance ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/mgt/eis/SessionDAO;->create(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;

    .line 178
    return-void
.end method

.method protected delete(Lorg/apache/shiro/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/mgt/eis/SessionDAO;->delete(Lorg/apache/shiro/session/Session;)V

    .line 241
    return-void
.end method

.method protected doCreateSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 4
    .param p1, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->newSessionInstance(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 155
    .local v0, "s":Lorg/apache/shiro/session/Session;
    sget-object v1, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->log:Lorg/slf4j/Logger;

    const-string v2, "Creating session for host {}"

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->create(Lorg/apache/shiro/session/Session;)V

    .line 159
    return-object v0
.end method

.method protected getActiveSessions()Ljava/util/Collection;
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
    .line 244
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    invoke-interface {v1}, Lorg/apache/shiro/session/mgt/eis/SessionDAO;->getActiveSessions()Ljava/util/Collection;

    move-result-object v0

    .line 245
    .local v0, "active":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/Session;>;"
    if-eqz v0, :cond_0

    .end local v0    # "active":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/Session;>;"
    :goto_0
    return-object v0

    .restart local v0    # "active":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/Session;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionDAO()Lorg/apache/shiro/session/mgt/eis/SessionDAO;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    return-object v0
.end method

.method public getSessionFactory()Lorg/apache/shiro/session/mgt/SessionFactory;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionFactory:Lorg/apache/shiro/session/mgt/SessionFactory;

    return-object v0
.end method

.method protected getSessionId(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/io/Serializable;
    .locals 1
    .param p1, "sessionKey"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 232
    invoke-interface {p1}, Lorg/apache/shiro/session/mgt/SessionKey;->getSessionId()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public isDeleteInvalidSessions()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->deleteInvalidSessions:Z

    return v0
.end method

.method protected newSessionInstance(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->getSessionFactory()Lorg/apache/shiro/session/mgt/SessionFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/mgt/SessionFactory;->createSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method

.method protected onChange(Lorg/apache/shiro/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/mgt/eis/SessionDAO;->update(Lorg/apache/shiro/session/Session;)V

    .line 213
    return-void
.end method

.method protected onExpiration(Lorg/apache/shiro/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 198
    instance-of v0, p1, Lorg/apache/shiro/session/mgt/SimpleSession;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 199
    check-cast v0, Lorg/apache/shiro/session/mgt/SimpleSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->setExpired(Z)V

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 202
    return-void
.end method

.method protected onStop(Lorg/apache/shiro/session/Session;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 182
    instance-of v2, p1, Lorg/apache/shiro/session/mgt/SimpleSession;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 183
    check-cast v0, Lorg/apache/shiro/session/mgt/SimpleSession;

    .line 184
    .local v0, "ss":Lorg/apache/shiro/session/mgt/SimpleSession;
    invoke-virtual {v0}, Lorg/apache/shiro/session/mgt/SimpleSession;->getStopTimestamp()Ljava/util/Date;

    move-result-object v1

    .line 185
    .local v1, "stopTs":Ljava/util/Date;
    invoke-virtual {v0, v1}, Lorg/apache/shiro/session/mgt/SimpleSession;->setLastAccessTime(Ljava/util/Date;)V

    .line 187
    .end local v0    # "ss":Lorg/apache/shiro/session/mgt/SimpleSession;
    .end local v1    # "stopTs":Ljava/util/Date;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 188
    return-void
.end method

.method protected retrieveSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 5
    .param p1, "sessionKey"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->getSessionId(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/io/Serializable;

    move-result-object v2

    .line 217
    .local v2, "sessionId":Ljava/io/Serializable;
    if-nez v2, :cond_1

    .line 218
    sget-object v3, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->log:Lorg/slf4j/Logger;

    const-string v4, "Unable to resolve session ID from SessionKey [{}].  Returning null to indicate a session could not be found."

    invoke-interface {v3, v4, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    const/4 v1, 0x0

    .line 228
    :cond_0
    return-object v1

    .line 222
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->retrieveSessionFromDataSource(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 223
    .local v1, "s":Lorg/apache/shiro/session/Session;
    if-nez v1, :cond_0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find session with ID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/session/UnknownSessionException;

    invoke-direct {v3, v0}, Lorg/apache/shiro/session/UnknownSessionException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected retrieveSessionFromDataSource(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/mgt/eis/SessionDAO;->readSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V
    .locals 0
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    .line 133
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->applyCacheManagerToSessionDAO()V

    .line 134
    return-void
.end method

.method public setDeleteInvalidSessions(Z)V
    .locals 0
    .param p1, "deleteInvalidSessions"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->deleteInvalidSessions:Z

    .line 129
    return-void
.end method

.method public setSessionDAO(Lorg/apache/shiro/session/mgt/eis/SessionDAO;)V
    .locals 0
    .param p1, "sessionDAO"    # Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionDAO:Lorg/apache/shiro/session/mgt/eis/SessionDAO;

    .line 63
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->applyCacheManagerToSessionDAO()V

    .line 64
    return-void
.end method

.method public setSessionFactory(Lorg/apache/shiro/session/mgt/SessionFactory;)V
    .locals 0
    .param p1, "sessionFactory"    # Lorg/apache/shiro/session/mgt/SessionFactory;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->sessionFactory:Lorg/apache/shiro/session/mgt/SessionFactory;

    .line 90
    return-void
.end method
