.class public Lorg/apache/shiro/authz/ModularRealmAuthorizer;
.super Ljava/lang/Object;
.source "ModularRealmAuthorizer.java"

# interfaces
.implements Lorg/apache/shiro/authz/Authorizer;
.implements Lorg/apache/shiro/authz/permission/PermissionResolverAware;
.implements Lorg/apache/shiro/authz/permission/RolePermissionResolverAware;


# instance fields
.field protected permissionResolver:Lorg/apache/shiro/authz/permission/PermissionResolver;

.field protected realms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;"
        }
    .end annotation
.end field

.field protected rolePermissionResolver:Lorg/apache/shiro/authz/permission/RolePermissionResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->setRealms(Ljava/util/Collection;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected applyPermissionResolverToRealms()V
    .locals 5

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v3

    .line 135
    .local v3, "resolver":Lorg/apache/shiro/authz/permission/PermissionResolver;
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getRealms()Ljava/util/Collection;

    move-result-object v2

    .line 136
    .local v2, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    .line 138
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    instance-of v4, v1, Lorg/apache/shiro/authz/permission/PermissionResolverAware;

    if-eqz v4, :cond_0

    .line 139
    check-cast v1, Lorg/apache/shiro/authz/permission/PermissionResolverAware;

    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v1, v3}, Lorg/apache/shiro/authz/permission/PermissionResolverAware;->setPermissionResolver(Lorg/apache/shiro/authz/permission/PermissionResolver;)V

    goto :goto_0

    .line 143
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected applyRolePermissionResolverToRealms()V
    .locals 5

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getRolePermissionResolver()Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    move-result-object v3

    .line 188
    .local v3, "resolver":Lorg/apache/shiro/authz/permission/RolePermissionResolver;
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getRealms()Ljava/util/Collection;

    move-result-object v2

    .line 189
    .local v2, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    .line 191
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    instance-of v4, v1, Lorg/apache/shiro/authz/permission/RolePermissionResolverAware;

    if-eqz v4, :cond_0

    .line 192
    check-cast v1, Lorg/apache/shiro/authz/permission/RolePermissionResolverAware;

    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v1, v3}, Lorg/apache/shiro/authz/permission/RolePermissionResolverAware;->setRolePermissionResolver(Lorg/apache/shiro/authz/permission/RolePermissionResolver;)V

    goto :goto_0

    .line 196
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected assertRealmsConfigured()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getRealms()Ljava/util/Collection;

    move-result-object v1

    .line 207
    .local v1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    const-string v0, "Configuration error:  No realms have been configured!  One or more realms must be present to execute an authorization operation."

    .line 210
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 322
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lorg/apache/shiro/authz/UnauthorizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subject does not have permission ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    return-void
.end method

.method public checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Lorg/apache/shiro/authz/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 333
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lorg/apache/shiro/authz/UnauthorizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subject does not have permission ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    return-void
.end method

.method public checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V
    .locals 3
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
    .line 357
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 358
    if-eqz p2, :cond_0

    .line 359
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/Permission;

    .line 360
    .local v1, "permission":Lorg/apache/shiro/authz/Permission;
    invoke-virtual {p0, p1, v1}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V

    goto :goto_0

    .line 363
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "permission":Lorg/apache/shiro/authz/Permission;
    :cond_0
    return-void
.end method

.method public varargs checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .locals 5
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 344
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 345
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 346
    .local v3, "perm":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "perm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 420
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lorg/apache/shiro/authz/UnauthorizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subject does not have role ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
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
    .line 430
    .local p2, "roles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public varargs checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .locals 4
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "roles"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 438
    if-eqz p2, :cond_0

    .line 439
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 440
    .local v3, "role":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->checkRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "role":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->permissionResolver:Lorg/apache/shiro/authz/permission/PermissionResolver;

    return-object v0
.end method

.method public getRealms()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->realms:Ljava/util/Collection;

    return-object v0
.end method

.method public getRolePermissionResolver()Lorg/apache/shiro/authz/permission/RolePermissionResolver;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->rolePermissionResolver:Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    return-object v0
.end method

.method public hasAllRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .locals 3
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
    .line 405
    .local p2, "roleIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 406
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    .local v1, "roleIdentifier":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const/4 v2, 0x0

    .line 411
    .end local v1    # "roleIdentifier":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "roleIdentifier"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 372
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getRealms()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    .line 373
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    instance-of v2, v1, Lorg/apache/shiro/authz/Authorizer;

    if-eqz v2, :cond_0

    .line 374
    check-cast v1, Lorg/apache/shiro/authz/Authorizer;

    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v1, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    const/4 v2, 0x1

    .line 378
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .locals 6
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
    .line 386
    .local p2, "roleIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 387
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 388
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Z

    .line 389
    .local v0, "hasRoles":[Z
    const/4 v1, 0x0

    .line 390
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 391
    .local v4, "roleId":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, p1, v4}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 396
    .end local v0    # "hasRoles":[Z
    .end local v1    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "roleId":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    new-array v0, v5, [Z

    :cond_1
    return-object v0
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 221
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getRealms()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    .line 222
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    instance-of v2, v1, Lorg/apache/shiro/authz/Authorizer;

    if-eqz v2, :cond_0

    .line 223
    check-cast v1, Lorg/apache/shiro/authz/Authorizer;

    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v1, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v2, 0x1

    .line 227
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 237
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->getRealms()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    .line 238
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    instance-of v2, v1, Lorg/apache/shiro/authz/Authorizer;

    if-eqz v2, :cond_0

    .line 239
    check-cast v1, Lorg/apache/shiro/authz/Authorizer;

    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v1, p1, p2}, Lorg/apache/shiro/authz/Authorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x1

    .line 243
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .locals 6
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
    .line 269
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 270
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 271
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Z

    .line 272
    .local v3, "isPermitted":[Z
    const/4 v0, 0x0

    .line 273
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/shiro/authz/Permission;

    .line 274
    .local v4, "p":Lorg/apache/shiro/authz/Permission;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, p1, v4}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z

    move-result v5

    aput-boolean v5, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 279
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isPermitted":[Z
    .end local v4    # "p":Lorg/apache/shiro/authz/Permission;
    :cond_0
    const/4 v5, 0x0

    new-array v3, v5, [Z

    :cond_1
    return-object v3
.end method

.method public varargs isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)[Z
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 253
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 254
    array-length v2, p2

    new-array v1, v2, [Z

    .line 255
    .local v1, "isPermitted":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 256
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    .end local v1    # "isPermitted":[Z
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Z

    :cond_1
    return-object v1
.end method

.method public isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .locals 3
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
    .line 305
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 306
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/Permission;

    .line 308
    .local v1, "permission":Lorg/apache/shiro/authz/Permission;
    invoke-virtual {p0, p1, v1}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const/4 v2, 0x0

    .line 313
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "permission":Lorg/apache/shiro/authz/Permission;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public varargs isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->assertRealmsConfigured()V

    .line 289
    if-eqz p2, :cond_1

    array-length v4, p2

    if-lez v4, :cond_1

    .line 290
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 291
    .local v3, "perm":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    const/4 v4, 0x0

    .line 296
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "perm":Ljava/lang/String;
    :goto_1
    return v4

    .line 290
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "perm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "perm":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public setPermissionResolver(Lorg/apache/shiro/authz/permission/PermissionResolver;)V
    .locals 0
    .param p1, "permissionResolver"    # Lorg/apache/shiro/authz/permission/PermissionResolver;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->permissionResolver:Lorg/apache/shiro/authz/permission/PermissionResolver;

    .line 118
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->applyPermissionResolverToRealms()V

    .line 119
    return-void
.end method

.method public setRealms(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    iput-object p1, p0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->realms:Ljava/util/Collection;

    .line 89
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->applyPermissionResolverToRealms()V

    .line 90
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->applyRolePermissionResolverToRealms()V

    .line 91
    return-void
.end method

.method public setRolePermissionResolver(Lorg/apache/shiro/authz/permission/RolePermissionResolver;)V
    .locals 0
    .param p1, "rolePermissionResolver"    # Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->rolePermissionResolver:Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    .line 170
    invoke-virtual {p0}, Lorg/apache/shiro/authz/ModularRealmAuthorizer;->applyRolePermissionResolverToRealms()V

    .line 171
    return-void
.end method
