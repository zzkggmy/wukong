.class public interface abstract Lorg/apache/shiro/session/mgt/eis/SessionDAO;
.super Ljava/lang/Object;
.source "SessionDAO.java"


# virtual methods
.method public abstract create(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
.end method

.method public abstract delete(Lorg/apache/shiro/session/Session;)V
.end method

.method public abstract getActiveSessions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation
.end method

.method public abstract update(Lorg/apache/shiro/session/Session;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation
.end method
