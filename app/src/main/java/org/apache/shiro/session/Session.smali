.class public interface abstract Lorg/apache/shiro/session/Session;
.super Ljava/lang/Object;
.source "Session.java"


# virtual methods
.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract getAttributeKeys()Ljava/util/Collection;
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
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/io/Serializable;
.end method

.method public abstract getLastAccessTime()Ljava/util/Date;
.end method

.method public abstract getStartTimestamp()Ljava/util/Date;
.end method

.method public abstract getTimeout()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract setTimeout(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract touch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method
