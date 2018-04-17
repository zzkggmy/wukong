.class public interface abstract Lorg/apache/shiro/realm/Realm;
.super Ljava/lang/Object;
.source "Realm.java"


# virtual methods
.method public abstract getAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract supports(Lorg/apache/shiro/authc/AuthenticationToken;)Z
.end method
