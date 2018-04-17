.class public abstract Lorg/apache/shiro/realm/AuthorizingRealm;
.super Lorg/apache/shiro/realm/AuthenticatingRealm;
.source "AuthorizingRealm.java"

# interfaces
.implements Lorg/apache/shiro/authz/Authorizer;
.implements Lorg/apache/shiro/util/Initializable;
.implements Lorg/apache/shiro/authz/permission/PermissionResolverAware;
.implements Lorg/apache/shiro/authz/permission/RolePermissionResolverAware;


# static fields
.field private static final DEFAULT_AUTHORIZATION_CACHE_SUFFIX:Ljava/lang/String; = ".authorizationCache"

.field private static final INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private authorizationCache:Lorg/apache/shiro/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private authorizationCacheName:Ljava/lang/String;

.field private authorizationCachingEnabled:Z

.field private permissionResolver:Lorg/apache/shiro/authz/permission/PermissionResolver;

.field private permissionRoleResolver:Lorg/apache/shiro/authz/permission/RolePermissionResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/apache/shiro/realm/AuthorizingRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/shiro/realm/AuthorizingRealm;->INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;-><init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V
    .locals 1
    .param p1, "matcher"    # Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;-><init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/cache/CacheManager;)V
    .locals 1
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;-><init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V
    .locals 3
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;
    .param p2, "matcher"    # Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;-><init>()V

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->setCredentialsMatcher(Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 107
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCachingEnabled:Z

    .line 108
    new-instance v1, Lorg/apache/shiro/authz/permission/WildcardPermissionResolver;

    invoke-direct {v1}, Lorg/apache/shiro/authz/permission/WildcardPermissionResolver;-><init>()V

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->permissionResolver:Lorg/apache/shiro/authz/permission/PermissionResolver;

    .line 110
    sget-object v1, Lorg/apache/shiro/realm/AuthorizingRealm;->INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 111
    .local v0, "instanceNumber":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".authorizationCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCacheName:Ljava/lang/String;

    .line 112
    if-lez v0, :cond_2

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCacheName:Ljava/lang/String;

    .line 115
    :cond_2
    return-void
.end method

.method private getAuthorizationCacheLazy()Lorg/apache/shiro/cache/Cache;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v2, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCache:Lorg/apache/shiro/cache/Cache;

    if-nez v2, :cond_2

    .line 233
    sget-object v2, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    sget-object v2, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "No authorizationCache instance set.  Checking for a cacheManager..."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getCacheManager()Lorg/apache/shiro/cache/CacheManager;

    move-result-object v0

    .line 239
    .local v0, "cacheManager":Lorg/apache/shiro/cache/CacheManager;
    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationCacheName()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "cacheName":Ljava/lang/String;
    sget-object v2, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    sget-object v2, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheManager ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has been configured.  Building "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "authorization cache named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 245
    :cond_1
    invoke-interface {v0, v1}, Lorg/apache/shiro/cache/CacheManager;->getCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCache:Lorg/apache/shiro/cache/Cache;

    .line 254
    .end local v0    # "cacheManager":Lorg/apache/shiro/cache/CacheManager;
    .end local v1    # "cacheName":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCache:Lorg/apache/shiro/cache/Cache;

    return-object v2

    .line 247
    .restart local v0    # "cacheManager":Lorg/apache/shiro/cache/CacheManager;
    :cond_3
    sget-object v2, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    sget-object v2, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "No cache or cacheManager properties have been set.  Authorization cache cannot be obtained."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAvailableAuthorizationCache()Lorg/apache/shiro/cache/Cache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 259
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authz/AuthorizationInfo;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->isAuthorizationCachingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationCacheLazy()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 262
    :cond_0
    return-object v0
.end method

.method private getPermissions(Lorg/apache/shiro/authz/AuthorizationInfo;)Ljava/util/Collection;
    .locals 3
    .param p1, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 404
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    if-eqz p1, :cond_2

    .line 405
    invoke-interface {p1}, Lorg/apache/shiro/authz/AuthorizationInfo;->getObjectPermissions()Ljava/util/Collection;

    move-result-object v1

    .line 406
    .local v1, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 409
    :cond_0
    invoke-interface {p1}, Lorg/apache/shiro/authz/AuthorizationInfo;->getStringPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/shiro/realm/AuthorizingRealm;->resolvePermissions(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 410
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 414
    :cond_1
    invoke-interface {p1}, Lorg/apache/shiro/authz/AuthorizationInfo;->getRoles()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/shiro/realm/AuthorizingRealm;->resolveRolePermissions(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 415
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 416
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 420
    .end local v1    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 421
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 423
    :goto_0
    return-object v2

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method private hasAllRoles(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)Z
    .locals 3
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "roleIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 611
    .local v1, "roleName":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->hasRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    const/4 v2, 0x0

    .line 616
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "roleName":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPermitted(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)Z
    .locals 4
    .param p1, "permission"    # Lorg/apache/shiro/authz/Permission;
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;

    .prologue
    .line 466
    invoke-direct {p0, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->getPermissions(Lorg/apache/shiro/authz/AuthorizationInfo;)Ljava/util/Collection;

    move-result-object v2

    .line 467
    .local v2, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/Permission;

    .line 469
    .local v1, "perm":Lorg/apache/shiro/authz/Permission;
    invoke-interface {v1, p1}, Lorg/apache/shiro/authz/Permission;->implies(Lorg/apache/shiro/authz/Permission;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    const/4 v3, 0x1

    .line 474
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "perm":Lorg/apache/shiro/authz/Permission;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resolvePermissions(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "stringPerms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 429
    .local v2, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v3

    .line 430
    .local v3, "resolver":Lorg/apache/shiro/authz/permission/PermissionResolver;
    if-eqz v3, :cond_0

    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 431
    new-instance v2, Ljava/util/LinkedHashSet;

    .end local v2    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 432
    .restart local v2    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 433
    .local v4, "strPermission":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/shiro/authz/permission/PermissionResolver;->resolvePermission(Ljava/lang/String;)Lorg/apache/shiro/authz/Permission;

    move-result-object v1

    .line 434
    .local v1, "permission":Lorg/apache/shiro/authz/Permission;
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "permission":Lorg/apache/shiro/authz/Permission;
    .end local v4    # "strPermission":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private resolveRolePermissions(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "roleNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 442
    .local v1, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getRolePermissionResolver()Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    move-result-object v3

    .line 443
    .local v3, "resolver":Lorg/apache/shiro/authz/permission/RolePermissionResolver;
    if-eqz v3, :cond_1

    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 444
    new-instance v1, Ljava/util/LinkedHashSet;

    .end local v1    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 445
    .restart local v1    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 446
    .local v4, "roleName":Ljava/lang/String;
    invoke-interface {v3, v4}, Lorg/apache/shiro/authz/permission/RolePermissionResolver;->resolvePermissionsInRole(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 447
    .local v2, "resolved":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 448
    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 452
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "resolved":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    .end local v4    # "roleName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected afterCacheManagerSet()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->afterCacheManagerSet()V

    .line 226
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAvailableAuthorizationCache()Lorg/apache/shiro/cache/Cache;

    .line 227
    return-void
.end method

.method protected checkPermission(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)V
    .locals 3
    .param p1, "permission"    # Lorg/apache/shiro/authz/Permission;
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermitted(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is not permitted ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/authz/UnauthorizedException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .locals 2
    .param p1, "subjectIdentifier"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/shiro/authz/permission/PermissionResolver;->resolvePermission(Ljava/lang/String;)Lorg/apache/shiro/authz/Permission;

    move-result-object v0

    .line 534
    .local v0, "p":Lorg/apache/shiro/authz/Permission;
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V

    .line 535
    return-void
.end method

.method public checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)V
    .locals 1
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Lorg/apache/shiro/authz/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 539
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkPermission(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)V

    .line 540
    return-void
.end method

.method protected checkPermissions(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)V
    .locals 3
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/Permission;

    .line 565
    .local v1, "p":Lorg/apache/shiro/authz/Permission;
    invoke-virtual {p0, v1, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkPermission(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)V

    goto :goto_0

    .line 568
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lorg/apache/shiro/authz/Permission;
    :cond_0
    return-void
.end method

.method public checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
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
    .line 558
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 559
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkPermissions(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)V

    .line 560
    return-void
.end method

.method public varargs checkPermissions(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .locals 4
    .param p1, "subjectIdentifier"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 550
    if-eqz p2, :cond_0

    .line 551
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 552
    .local v3, "permString":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkPermission(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "permString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected checkRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)V
    .locals 3
    .param p1, "role"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;

    .prologue
    .line 625
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->hasRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User does not have role ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/authz/UnauthorizedException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)V
    .locals 1
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 621
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)V

    .line 622
    return-void
.end method

.method protected checkRoles(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)V
    .locals 3
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "roles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    .local v1, "roleName":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)V

    goto :goto_0

    .line 646
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "roleName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
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
    .line 632
    .local p2, "roles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 633
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkRoles(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)V

    .line 634
    return-void
.end method

.method public varargs checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)V
    .locals 1
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "roles"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->checkRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)V

    .line 638
    return-void
.end method

.method protected clearCachedAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 2
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 378
    if-nez p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAvailableAuthorizationCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 384
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authz/AuthorizationInfo;>;"
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationCacheKey(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v1

    .line 386
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lorg/apache/shiro/cache/Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected doClearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 660
    invoke-super {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->doClearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 661
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->clearCachedAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 662
    return-void
.end method

.method protected abstract doGetAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;
.end method

.method public getAuthorizationCache()Lorg/apache/shiro/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCache:Lorg/apache/shiro/cache/Cache;

    return-object v0
.end method

.method protected getAuthorizationCacheKey(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 356
    return-object p1
.end method

.method public getAuthorizationCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCacheName:Ljava/lang/String;

    return-object v0
.end method

.method protected getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 6
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 313
    const/4 v1, 0x0

    .line 352
    :cond_0
    :goto_0
    return-object v1

    .line 316
    :cond_1
    const/4 v1, 0x0

    .line 318
    .local v1, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving AuthorizationInfo for principals ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 322
    :cond_2
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAvailableAuthorizationCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 323
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authz/AuthorizationInfo;>;"
    if-eqz v0, :cond_4

    .line 324
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Attempting to retrieve the AuthorizationInfo from cache."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 327
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationCacheKey(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v2

    .line 328
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v0, v2}, Lorg/apache/shiro/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    check-cast v1, Lorg/apache/shiro/authz/AuthorizationInfo;

    .line 329
    .restart local v1    # "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    if-nez v1, :cond_6

    .line 331
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No AuthorizationInfo found in cache for principals ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 339
    .end local v2    # "key":Ljava/lang/Object;
    :cond_4
    :goto_1
    if-nez v1, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->doGetAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 344
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 345
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching authorization info for principals: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 347
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationCacheKey(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v2

    .line 348
    .restart local v2    # "key":Ljava/lang/Object;
    invoke-interface {v0, v2, v1}, Lorg/apache/shiro/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 333
    :cond_6
    sget-object v3, Lorg/apache/shiro/realm/AuthorizingRealm;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AuthorizationInfo found in cache for principals ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->permissionResolver:Lorg/apache/shiro/authz/permission/PermissionResolver;

    return-object v0
.end method

.method public getRolePermissionResolver()Lorg/apache/shiro/authz/permission/RolePermissionResolver;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->permissionRoleResolver:Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    return-object v0
.end method

.method public hasAllRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .locals 2
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
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
    .line 604
    .local p2, "roleIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 605
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->hasAllRoles(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)Z
    .locals 1
    .param p1, "roleIdentifier"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;

    .prologue
    .line 576
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/shiro/authz/AuthorizationInfo;->getRoles()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/apache/shiro/authz/AuthorizationInfo;->getRoles()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
    .locals 2
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "roleIdentifier"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 572
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->hasRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v1

    return v1
.end method

.method protected hasRoles(Ljava/util/List;Lorg/apache/shiro/authz/AuthorizationInfo;)[Z
    .locals 7
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ")[Z"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "roleIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 591
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 592
    .local v5, "size":I
    new-array v3, v5, [Z

    .line 593
    .local v3, "result":[Z
    const/4 v0, 0x0

    .line 594
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 595
    .local v4, "roleName":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v4, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->hasRole(Ljava/lang/String;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v6

    aput-boolean v6, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 598
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":[Z
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "size":I
    :cond_0
    const/4 v6, 0x0

    new-array v3, v6, [Z

    .line 600
    .restart local v3    # "result":[Z
    :cond_1
    return-object v3
.end method

.method public hasRoles(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .locals 3
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
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
    .line 580
    .local p2, "roleIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 581
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    new-array v1, v2, [Z

    .line 582
    .local v1, "result":[Z
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->hasRoles(Ljava/util/List;Lorg/apache/shiro/authz/AuthorizationInfo;)[Z

    move-result-object v1

    .line 585
    :cond_0
    return-object v1

    .line 581
    .end local v1    # "result":[Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAuthorizationCachingEnabled()Z
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->isCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCachingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/String;)Z
    .locals 2
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/shiro/authz/permission/PermissionResolver;->resolvePermission(Ljava/lang/String;)Lorg/apache/shiro/authz/Permission;

    move-result-object v0

    .line 457
    .local v0, "p":Lorg/apache/shiro/authz/Permission;
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z

    move-result v1

    return v1
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/authz/Permission;)Z
    .locals 2
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permission"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 462
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    invoke-direct {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermitted(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v1

    return v1
.end method

.method protected isPermitted(Ljava/util/List;Lorg/apache/shiro/authz/AuthorizationInfo;)[Z
    .locals 7
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ")[Z"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/authz/Permission;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 493
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 494
    .local v5, "size":I
    new-array v4, v5, [Z

    .line 495
    .local v4, "result":[Z
    const/4 v0, 0x0

    .line 496
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/shiro/authz/Permission;

    .line 497
    .local v3, "p":Lorg/apache/shiro/authz/Permission;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-direct {p0, v3, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermitted(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v6

    aput-boolean v6, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 500
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lorg/apache/shiro/authz/Permission;
    .end local v4    # "result":[Z
    .end local v5    # "size":I
    :cond_0
    const/4 v6, 0x0

    new-array v4, v6, [Z

    .line 502
    .restart local v4    # "result":[Z
    :cond_1
    return-object v4
.end method

.method public isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z
    .locals 2
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
    .line 486
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 487
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermitted(Ljava/util/List;Lorg/apache/shiro/authz/AuthorizationInfo;)[Z

    move-result-object v1

    return-object v1
.end method

.method public varargs isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)[Z
    .locals 6
    .param p1, "subjectIdentifier"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 478
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    .local v4, "perms":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/authz/Permission;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 480
    .local v3, "permString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/apache/shiro/authz/permission/PermissionResolver;->resolvePermission(Ljava/lang/String;)Lorg/apache/shiro/authz/Permission;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v3    # "permString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v4}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermitted(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/List;)[Z

    move-result-object v5

    return-object v5
.end method

.method protected isPermittedAll(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)Z
    .locals 3
    .param p2, "info"    # Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 523
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/Permission;

    .line 524
    .local v1, "p":Lorg/apache/shiro/authz/Permission;
    invoke-direct {p0, v1, p2}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermitted(Lorg/apache/shiro/authz/Permission;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    const/4 v2, 0x0

    .line 529
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lorg/apache/shiro/authz/Permission;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z
    .locals 2
    .param p1, "principal"    # Lorg/apache/shiro/subject/PrincipalCollection;
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
    .line 517
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v0

    .line 518
    .local v0, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermittedAll(Ljava/util/Collection;Lorg/apache/shiro/authz/AuthorizationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "subjectIdentifier"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 506
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 507
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .local v4, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 509
    .local v3, "permString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/apache/shiro/authz/permission/PermissionResolver;->resolvePermission(Ljava/lang/String;)Lorg/apache/shiro/authz/Permission;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v3    # "permString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v4}, Lorg/apache/shiro/realm/AuthorizingRealm;->isPermittedAll(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/util/Collection;)Z

    move-result v5

    .line 513
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->onInit()V

    .line 220
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->getAvailableAuthorizationCache()Lorg/apache/shiro/cache/Cache;

    .line 221
    return-void
.end method

.method public setAuthorizationCache(Lorg/apache/shiro/cache/Cache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authz/AuthorizationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "authorizationCache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authz/AuthorizationInfo;>;"
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCache:Lorg/apache/shiro/cache/Cache;

    .line 133
    return-void
.end method

.method public setAuthorizationCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "authorizationCacheName"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCacheName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setAuthorizationCachingEnabled(Z)V
    .locals 1
    .param p1, "authenticationCachingEnabled"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCachingEnabled:Z

    .line 171
    if-eqz p1, :cond_0

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/AuthorizingRealm;->setCachingEnabled(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->setName(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCacheName:Ljava/lang/String;

    .line 124
    .local v0, "authzCacheName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".authorizationCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->authorizationCacheName:Ljava/lang/String;

    .line 129
    :cond_0
    return-void
.end method

.method public setPermissionResolver(Lorg/apache/shiro/authz/permission/PermissionResolver;)V
    .locals 2
    .param p1, "permissionResolver"    # Lorg/apache/shiro/authz/permission/PermissionResolver;

    .prologue
    .line 181
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null PermissionResolver is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->permissionResolver:Lorg/apache/shiro/authz/permission/PermissionResolver;

    .line 183
    return-void
.end method

.method public setRolePermissionResolver(Lorg/apache/shiro/authz/permission/RolePermissionResolver;)V
    .locals 0
    .param p1, "permissionRoleResolver"    # Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthorizingRealm;->permissionRoleResolver:Lorg/apache/shiro/authz/permission/RolePermissionResolver;

    .line 191
    return-void
.end method
