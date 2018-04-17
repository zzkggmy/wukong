.class public interface abstract Lorg/apache/shiro/mgt/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"

# interfaces
.implements Lorg/apache/shiro/authc/Authenticator;
.implements Lorg/apache/shiro/authz/Authorizer;
.implements Lorg/apache/shiro/session/mgt/SessionManager;


# virtual methods
.method public abstract createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;
.end method

.method public abstract login(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/subject/Subject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract logout(Lorg/apache/shiro/subject/Subject;)V
.end method
