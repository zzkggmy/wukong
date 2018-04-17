.class public interface abstract Lorg/apache/shiro/authc/pam/AuthenticationStrategy;
.super Ljava/lang/Object;
.source "AuthenticationStrategy.java"


# virtual methods
.method public abstract afterAllAttempts(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract afterAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;Ljava/lang/Throwable;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract beforeAllAttempts(Ljava/util/Collection;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/shiro/realm/Realm;",
            ">;",
            "Lorg/apache/shiro/authc/AuthenticationToken;",
            ")",
            "Lorg/apache/shiro/authc/AuthenticationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract beforeAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method
