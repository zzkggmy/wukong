.class public abstract Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;
.super Ljava/lang/Object;
.source "AbstractSessionDAO.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/eis/SessionDAO;


# instance fields
.field private sessionIdGenerator:Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/shiro/session/mgt/eis/JavaUuidSessionIdGenerator;

    invoke-direct {v0}, Lorg/apache/shiro/session/mgt/eis/JavaUuidSessionIdGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->sessionIdGenerator:Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;

    .line 60
    return-void
.end method

.method private verifySessionId(Ljava/io/Serializable;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const-string v0, "sessionId returned from doCreate implementation is null.  Please verify the implementation."

    .line 130
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected assignSessionId(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 146
    check-cast p1, Lorg/apache/shiro/session/mgt/SimpleSession;

    .end local p1    # "session":Lorg/apache/shiro/session/Session;
    invoke-virtual {p1, p2}, Lorg/apache/shiro/session/mgt/SimpleSession;->setId(Ljava/io/Serializable;)V

    .line 147
    return-void
.end method

.method public create(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->doCreate(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;

    move-result-object v0

    .line 117
    .local v0, "sessionId":Ljava/io/Serializable;
    invoke-direct {p0, v0}, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->verifySessionId(Ljava/io/Serializable;)V

    .line 118
    return-object v0
.end method

.method protected abstract doCreate(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
.end method

.method protected abstract doReadSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
.end method

.method protected generateSessionId(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 102
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->sessionIdGenerator:Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;

    if-nez v1, :cond_0

    .line 103
    const-string v0, "sessionIdGenerator attribute has not been configured."

    .line 104
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->sessionIdGenerator:Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;

    invoke-interface {v1, p1}, Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;->generateId(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;

    move-result-object v1

    return-object v1
.end method

.method public getSessionIdGenerator()Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->sessionIdGenerator:Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;

    return-object v0
.end method

.method public readSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
    .locals 4
    .param p1, "sessionId"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->doReadSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 169
    .local v0, "s":Lorg/apache/shiro/session/Session;
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Lorg/apache/shiro/session/UnknownSessionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no session with id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/shiro/session/UnknownSessionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    return-object v0
.end method

.method public setSessionIdGenerator(Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;)V
    .locals 0
    .param p1, "sessionIdGenerator"    # Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;->sessionIdGenerator:Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;

    .line 83
    return-void
.end method
