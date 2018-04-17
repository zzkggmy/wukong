.class public Lorg/apache/shiro/session/ProxiedSession;
.super Ljava/lang/Object;
.source "ProxiedSession.java"

# interfaces
.implements Lorg/apache/shiro/session/Session;


# instance fields
.field protected final delegate:Lorg/apache/shiro/session/Session;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/session/Session;)V
    .locals 2
    .param p1, "target"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target session to proxy cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    .line 52
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeKeys()Ljava/util/Collection;
    .locals 1
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
    .line 114
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getAttributeKeys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getStartTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getStartTimestamp()Ljava/util/Date;

    move-result-object v0

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
    .line 79
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0, p1}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "maxIdleTimeInMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/session/Session;->setTimeout(J)V

    .line 87
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->stop()V

    .line 108
    return-void
.end method

.method public touch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/shiro/session/ProxiedSession;->delegate:Lorg/apache/shiro/session/Session;

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->touch()V

    .line 101
    return-void
.end method
