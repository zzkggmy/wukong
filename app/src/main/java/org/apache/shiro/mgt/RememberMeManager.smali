.class public interface abstract Lorg/apache/shiro/mgt/RememberMeManager;
.super Ljava/lang/Object;
.source "RememberMeManager.java"


# virtual methods
.method public abstract forgetIdentity(Lorg/apache/shiro/subject/SubjectContext;)V
.end method

.method public abstract getRememberedPrincipals(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;
.end method

.method public abstract onFailedLogin(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;)V
.end method

.method public abstract onLogout(Lorg/apache/shiro/subject/Subject;)V
.end method

.method public abstract onSuccessfulLogin(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
.end method
