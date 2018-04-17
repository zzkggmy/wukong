.class public Lorg/apache/shiro/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveDelimitedPermissions(Ljava/lang/String;Lorg/apache/shiro/authz/permission/PermissionResolver;)Ljava/util/Set;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "permissionResolver"    # Lorg/apache/shiro/authz/permission/PermissionResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/authz/permission/PermissionResolver;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Lorg/apache/shiro/util/PermissionUtils;->toPermissionStrings(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 39
    .local v0, "permStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Lorg/apache/shiro/util/PermissionUtils;->resolvePermissions(Ljava/util/Collection;Lorg/apache/shiro/authz/permission/PermissionResolver;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static resolvePermissions(Ljava/util/Collection;Lorg/apache/shiro/authz/permission/PermissionResolver;)Ljava/util/Set;
    .locals 4
    .param p1, "permissionResolver"    # Lorg/apache/shiro/authz/permission/PermissionResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/shiro/authz/permission/PermissionResolver;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "permissionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 52
    .local v2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "permissionString":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/apache/shiro/authz/permission/PermissionResolver;->resolvePermission(Ljava/lang/String;)Lorg/apache/shiro/authz/Permission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v1    # "permissionString":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static toPermissionStrings(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "permissionsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "tokens":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 45
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 47
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
