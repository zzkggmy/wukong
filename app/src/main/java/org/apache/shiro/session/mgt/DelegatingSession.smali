.class public Lorg/apache/shiro/session/mgt/DelegatingSession;
.super Ljava/lang/Object;
.source "DelegatingSession.java"

# interfaces
.implements Lorg/apache/shiro/session/Session;
.implements Ljava/io/Serializable;


# instance fields
.field private host:Ljava/lang/String;

.field private final key:Lorg/apache/shiro/session/mgt/SessionKey;

.field private final transient sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

.field private startTimestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/session/mgt/NativeSessionManager;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 3
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/NativeSessionManager;
    .param p2, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->startTimestamp:Ljava/util/Date;

    .line 51
    iput-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->host:Ljava/lang/String;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sessionManager argument cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    if-nez p2, :cond_1

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sessionKey argument cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    invoke-interface {p2}, Lorg/apache/shiro/session/mgt/SessionKey;->getSessionId()Ljava/io/Serializable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/session/mgt/DelegatingSession;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation requires that the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionKey argument returns a non-null sessionId to support the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Session.getId() invocations."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    .line 73
    iput-object p2, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    .line 74
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->getAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->getAttributeKeys(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->getHost(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->host:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0}, Lorg/apache/shiro/session/mgt/SessionKey;->getSessionId()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->getLastAccessTime(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getStartTimestamp()Ljava/util/Date;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->startTimestamp:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->getStartTimestamp(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->startTimestamp:Ljava/util/Date;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->startTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->getTimeout(Lorg/apache/shiro/session/mgt/SessionKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1, p1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->removeAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/DelegatingSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->setAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setTimeout(J)V
    .locals 3
    .param p1, "maxIdleTimeInMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->setTimeout(Lorg/apache/shiro/session/mgt/SessionKey;J)V

    .line 107
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->stop(Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 128
    return-void
.end method

.method public touch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->sessionManager:Lorg/apache/shiro/session/mgt/NativeSessionManager;

    iget-object v1, p0, Lorg/apache/shiro/session/mgt/DelegatingSession;->key:Lorg/apache/shiro/session/mgt/SessionKey;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/mgt/NativeSessionManager;->touch(Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 121
    return-void
.end method
