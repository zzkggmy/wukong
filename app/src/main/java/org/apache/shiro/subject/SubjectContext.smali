.class public interface abstract Lorg/apache/shiro/subject/SubjectContext;
.super Ljava/lang/Object;
.source "SubjectContext.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAuthenticationInfo()Lorg/apache/shiro/authc/AuthenticationInfo;
.end method

.method public abstract getAuthenticationToken()Lorg/apache/shiro/authc/AuthenticationToken;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
.end method

.method public abstract getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
.end method

.method public abstract getSession()Lorg/apache/shiro/session/Session;
.end method

.method public abstract getSessionId()Ljava/io/Serializable;
.end method

.method public abstract getSubject()Lorg/apache/shiro/subject/Subject;
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isSessionCreationEnabled()Z
.end method

.method public abstract resolveAuthenticated()Z
.end method

.method public abstract resolveHost()Ljava/lang/String;
.end method

.method public abstract resolvePrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
.end method

.method public abstract resolveSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
.end method

.method public abstract resolveSession()Lorg/apache/shiro/session/Session;
.end method

.method public abstract setAuthenticated(Z)V
.end method

.method public abstract setAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationInfo;)V
.end method

.method public abstract setAuthenticationToken(Lorg/apache/shiro/authc/AuthenticationToken;)V
.end method

.method public abstract setHost(Ljava/lang/String;)V
.end method

.method public abstract setPrincipals(Lorg/apache/shiro/subject/PrincipalCollection;)V
.end method

.method public abstract setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
.end method

.method public abstract setSession(Lorg/apache/shiro/session/Session;)V
.end method

.method public abstract setSessionCreationEnabled(Z)V
.end method

.method public abstract setSessionId(Ljava/io/Serializable;)V
.end method

.method public abstract setSubject(Lorg/apache/shiro/subject/Subject;)V
.end method
