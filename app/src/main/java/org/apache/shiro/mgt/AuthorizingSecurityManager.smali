.class public abstract Lorg/apache/shiro/mgt/AuthorizingSecurityManager;
.super Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;
.source "AuthorizingSecurityManager.java"


# instance fields
.field private authorizer:Lorg/apache/shiro/authz/Authorizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;

    invoke-direct {v0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    .line 61
    return-void
.end method


# virtual methods
.method protected afterRealmsSet()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->afterRealmsSet()V

    .line 101
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    instance-of v0, v0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    check-cast v0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;

    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->getRealms()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->setRealms(Ljava/util/Collection;)V

    .line 104
    :cond_0
    return-void
.end method

.method public checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Lorg/apache/shiro/authz/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V

    .line 142
    return-void
.end method

.method public checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
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

    .prologue
    .line 149
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V

    .line 150
    return-void
.end method

.method public varargs checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public checkRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->checkRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
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

    .prologue
    .line 169
    .local p2, "roles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V

    .line 170
    return-void
.end method

.method public varargs checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "roles"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->getAuthorizer()Lorg/apache/shiro/authz/Authorizer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    .line 109
    invoke-super {p0}, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->destroy()V

    .line 110
    return-void
.end method

.method public getAuthorizer()Lorg/apache/shiro/authz/Authorizer;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    return-object v0
.end method

.method public hasAllRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
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

    .prologue
    .line 161
    .local p2, "roleIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->hasAllRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "roleIdentifier"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
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

    .prologue
    .line 157
    .local p2, "roleIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->hasRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z

    move-result-object v0

    return-object v0
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissionString"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z

    move-result v0

    return v0
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
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

    .prologue
    .line 125
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/authz/Permission;>;"
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z

    move-result-object v0

    return-object v0
.end method

.method public varargs isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)[Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)[Z

    move-result-object v0

    return-object v0
.end method

.method public isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
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

    .prologue
    .line 133
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public varargs isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAuthorizer(Lorg/apache/shiro/authz/Authorizer;)V
    .locals 2
    .param p1, "authorizer"    # Lorg/apache/shiro/authz/Authorizer;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v0, "Authorizer argument cannot be null."

    .line 83
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/mgt/AuthorizingSecurityManager;->authorizer:Lorg/apache/shiro/authz/Authorizer;

    .line 86
    return-void
.end method
