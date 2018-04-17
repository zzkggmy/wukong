.class public interface abstract Lorg/apache/shiro/session/mgt/NativeSessionManager;
.super Ljava/lang/Object;
.source "NativeSessionManager.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionManager;


# virtual methods
.method public abstract checkValid(Lorg/apache/shiro/session/mgt/SessionKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract getAttributeKeys(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Collection;
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
.end method

.method public abstract getHost(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/lang/String;
.end method

.method public abstract getLastAccessTime(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Date;
.end method

.method public abstract getStartTimestamp(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/util/Date;
.end method

.method public abstract getTimeout(Lorg/apache/shiro/session/mgt/SessionKey;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract isValid(Lorg/apache/shiro/session/mgt/SessionKey;)Z
.end method

.method public abstract removeAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Lorg/apache/shiro/session/mgt/SessionKey;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract setTimeout(Lorg/apache/shiro/session/mgt/SessionKey;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract stop(Lorg/apache/shiro/session/mgt/SessionKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method

.method public abstract touch(Lorg/apache/shiro/session/mgt/SessionKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method
