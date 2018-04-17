.class public interface abstract Lorg/apache/shiro/session/mgt/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# virtual methods
.method public abstract getSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/SessionException;
        }
    .end annotation
.end method

.method public abstract start(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
.end method
