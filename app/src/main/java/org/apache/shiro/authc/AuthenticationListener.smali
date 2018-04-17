.class public interface abstract Lorg/apache/shiro/authc/AuthenticationListener;
.super Ljava/lang/Object;
.source "AuthenticationListener.java"


# virtual methods
.method public abstract onFailure(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;)V
.end method

.method public abstract onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V
.end method

.method public abstract onSuccess(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
.end method
