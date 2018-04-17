.class public interface abstract Lorg/apache/shiro/authz/Authorizer;
.super Ljava/lang/Object;
.source "Authorizer.java"


# virtual methods
.method public abstract checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
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

.method public varargs abstract checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
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

.method public varargs abstract checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method public abstract hasAllRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
.end method

.method public abstract hasRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation
.end method

.method public abstract isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
.end method

.method public abstract isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z
.end method

.method public abstract isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)[Z"
        }
    .end annotation
.end method

.method public varargs abstract isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)[Z
.end method

.method public abstract isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)Z"
        }
    .end annotation
.end method

.method public varargs abstract isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)Z
.end method
