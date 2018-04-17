.class public interface abstract Lorg/apache/shiro/subject/Subject;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/subject/Subject$Builder;
    }
.end annotation


# virtual methods
.method public abstract associateWith(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method

.method public abstract associateWith(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end method

.method public abstract checkPermission(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkPermission(Lorg/apache/shiro/authz/Permission;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkPermissions(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public varargs abstract checkPermissions([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkRole(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkRoles(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public varargs abstract checkRoles([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/subject/ExecutionException;
        }
    .end annotation
.end method

.method public abstract execute(Ljava/lang/Runnable;)V
.end method

.method public abstract getPreviousPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
.end method

.method public abstract getPrincipal()Ljava/lang/Object;
.end method

.method public abstract getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
.end method

.method public abstract getSession()Lorg/apache/shiro/session/Session;
.end method

.method public abstract getSession(Z)Lorg/apache/shiro/session/Session;
.end method

.method public abstract hasAllRoles(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hasRole(Ljava/lang/String;)Z
.end method

.method public abstract hasRoles(Ljava/util/List;)[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isPermitted(Ljava/lang/String;)Z
.end method

.method public abstract isPermitted(Lorg/apache/shiro/authz/Permission;)Z
.end method

.method public abstract isPermitted(Ljava/util/List;)[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)[Z"
        }
    .end annotation
.end method

.method public varargs abstract isPermitted([Ljava/lang/String;)[Z
.end method

.method public abstract isPermittedAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)Z"
        }
    .end annotation
.end method

.method public varargs abstract isPermittedAll([Ljava/lang/String;)Z
.end method

.method public abstract isRemembered()Z
.end method

.method public abstract isRunAs()Z
.end method

.method public abstract login(Lorg/apache/shiro/authc/AuthenticationToken;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract logout()V
.end method

.method public abstract releaseRunAs()Lorg/apache/shiro/subject/PrincipalCollection;
.end method

.method public abstract runAs(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
