.class public interface abstract Lorg/apache/shiro/session/mgt/ValidatingSession;
.super Ljava/lang/Object;
.source "ValidatingSession.java"

# interfaces
.implements Lorg/apache/shiro/session/Session;


# virtual methods
.method public abstract isValid()Z
.end method

.method public abstract validate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation
.end method
