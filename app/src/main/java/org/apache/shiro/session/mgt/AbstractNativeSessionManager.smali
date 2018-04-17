.class public abstract Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;
.super Lorg/apache/shiro/session/mgt/AbstractSessionManager;
.source "AbstractNativeSessionManager.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/NativeSessionManager;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/session/SessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/session/mgt/AbstractSessionManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/AbstractSessionManager;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->listeners:Ljava/util/Collection;

    .line 47
    return-void
.end method

.method private lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 4
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/SessionException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 113
    .local v1, "session":Lorg/apache/shiro/session/Session;
    if-nez v1, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate required Session instance based on SessionKey ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/session/UnknownSessionException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/session/UnknownSessionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private lookupSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/SessionException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SessionKey argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->doGetSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected afterStopped(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 263
    return-void
.end method

.method protected applyGlobalSessionTimeout(Lorg/apache/shiro/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->getGlobalSessionTimeout()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/shiro/session/Session;->setTimeout(J)V

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 86
    return-void
.end method

.method protected beforeInvalidNotification(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 141
    new-instance v0, Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;

    invoke-direct {v0, p1}, Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;-><init>(Lorg/apache/shiro/session/Session;)V

    return-object v0
.end method

.method public checkValid(Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 0
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    .line 268
    return-void
.end method

.method protected createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 3
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 123
    new-instance v0, Lorg/apache/shiro/session/mgt/DelegatingSession;

    new-instance v1, Lorg/apache/shiro/session/mgt/DefaultSessionKey;

    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/shiro/session/mgt/DefaultSessionKey;-><init>(Ljava/io/Serializable;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/shiro/session/mgt/DelegatingSession;-><init>(Lorg/apache/shiro/session/mgt/NativeSessionManager;Lorg/apache/shiro/session/mgt/SessionKey;)V

    return-object v0
.end method

.method protected createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 3
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 127
    new-instance v0, Lorg/apache/shiro/session/mgt/DelegatingSession;

    new-instance v1, Lorg/apache/shiro/session/mgt/DefaultSessionKey;

    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/shiro/session/mgt/DefaultSessionKey;-><init>(Ljava/io/Serializable;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/shiro/session/mgt/DelegatingSession;-><init>(Lorg/apache/shiro/session/mgt/NativeSessionManager;Lorg/apache/shiro/session/mgt/SessionKey;)V

    return-object v0
.end method

.method protected abstract createSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method protected abstract doGetSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public getAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "sessionKey"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .param p2, "attributeKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeKeys(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/session/mgt/SessionKey;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/shiro/session/Session;->getAttributeKeys()Ljava/util/Collection;

    move-result-object v0

    .line 202
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public getHost(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/SessionException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 101
    .local v0, "session":Lorg/apache/shiro/session/Session;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSessionListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/session/SessionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->listeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getStartTimestamp(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getStartTimestamp()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout(Lorg/apache/shiro/session/mgt/SessionKey;)J
    .locals 2
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lorg/apache/shiro/session/mgt/SessionKey;)Z
    .locals 2
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->checkValid(Lorg/apache/shiro/session/mgt/SessionKey;)V
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyExpiration(Lorg/apache/shiro/session/Session;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->beforeInvalidNotification(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 167
    .local v0, "forNotification":Lorg/apache/shiro/session/Session;
    iget-object v3, p0, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->listeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/shiro/session/SessionListener;

    .line 168
    .local v2, "listener":Lorg/apache/shiro/session/SessionListener;
    invoke-interface {v2, v0}, Lorg/apache/shiro/session/SessionListener;->onExpiration(Lorg/apache/shiro/session/Session;)V

    goto :goto_0

    .line 170
    .end local v2    # "listener":Lorg/apache/shiro/session/SessionListener;
    :cond_0
    return-void
.end method

.method protected notifyStart(Lorg/apache/shiro/session/Session;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 153
    iget-object v2, p0, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/session/SessionListener;

    .line 154
    .local v1, "listener":Lorg/apache/shiro/session/SessionListener;
    invoke-interface {v1, p1}, Lorg/apache/shiro/session/SessionListener;->onStart(Lorg/apache/shiro/session/Session;)V

    goto :goto_0

    .line 156
    .end local v1    # "listener":Lorg/apache/shiro/session/SessionListener;
    :cond_0
    return-void
.end method

.method protected notifyStop(Lorg/apache/shiro/session/Session;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->beforeInvalidNotification(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 160
    .local v0, "forNotification":Lorg/apache/shiro/session/Session;
    iget-object v3, p0, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->listeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/shiro/session/SessionListener;

    .line 161
    .local v2, "listener":Lorg/apache/shiro/session/SessionListener;
    invoke-interface {v2, v0}, Lorg/apache/shiro/session/SessionListener;->onStop(Lorg/apache/shiro/session/Session;)V

    goto :goto_0

    .line 163
    .end local v2    # "listener":Lorg/apache/shiro/session/SessionListener;
    :cond_0
    return-void
.end method

.method protected onChange(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "s"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 271
    return-void
.end method

.method protected onStart(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 97
    return-void
.end method

.method protected onStop(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 260
    return-void
.end method

.method protected onStop(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onStop(Lorg/apache/shiro/session/Session;)V

    .line 256
    return-void
.end method

.method public removeAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "sessionKey"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .param p2, "attributeKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 224
    .local v1, "s":Lorg/apache/shiro/session/Session;
    invoke-interface {v1, p2}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "removed":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, v1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 228
    :cond_0
    return-object v0
.end method

.method public setAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sessionKey"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .param p2, "attributeKey"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p3, :cond_0

    .line 214
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->removeAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 217
    .local v0, "s":Lorg/apache/shiro/session/Session;
    invoke-interface {v0, p2, p3}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    goto :goto_0
.end method

.method public setSessionListeners(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/session/SessionListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/SessionListener;>;"
    if-eqz p1, :cond_0

    .end local p1    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/SessionListener;>;"
    :goto_0
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->listeners:Ljava/util/Collection;

    .line 51
    return-void

    .line 50
    .restart local p1    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/SessionListener;>;"
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/SessionListener;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public setTimeout(Lorg/apache/shiro/session/mgt/SessionKey;J)V
    .locals 2
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .param p2, "maxIdleTimeInMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 186
    .local v0, "s":Lorg/apache/shiro/session/Session;
    invoke-interface {v0, p2, p3}, Lorg/apache/shiro/session/Session;->setTimeout(J)V

    .line 187
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 188
    return-void
.end method

.method public start(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->createSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 60
    .local v0, "session":Lorg/apache/shiro/session/Session;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->applyGlobalSessionTimeout(Lorg/apache/shiro/session/Session;)V

    .line 61
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onStart(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)V

    .line 62
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->notifyStart(Lorg/apache/shiro/session/Session;)V

    .line 64
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v1

    return-object v1
.end method

.method public stop(Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 4
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 243
    .local v0, "session":Lorg/apache/shiro/session/Session;
    :try_start_0
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping session with id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->stop()V

    .line 247
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onStop(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 248
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->notifyStop(Lorg/apache/shiro/session/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->afterStopped(Lorg/apache/shiro/session/Session;)V

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->afterStopped(Lorg/apache/shiro/session/Session;)V

    throw v1
.end method

.method public touch(Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->lookupRequiredSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 192
    .local v0, "s":Lorg/apache/shiro/session/Session;
    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->touch()V

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 194
    return-void
.end method
