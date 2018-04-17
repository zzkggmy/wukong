.class public abstract Lorg/apache/shiro/realm/CachingRealm;
.super Ljava/lang/Object;
.source "CachingRealm.java"

# interfaces
.implements Lorg/apache/shiro/realm/Realm;
.implements Lorg/apache/shiro/util/Nameable;
.implements Lorg/apache/shiro/cache/CacheManagerAware;
.implements Lorg/apache/shiro/authc/LogoutAware;


# static fields
.field private static final INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cacheManager:Lorg/apache/shiro/cache/CacheManager;

.field private cachingEnabled:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/shiro/realm/CachingRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/CachingRealm;->log:Lorg/slf4j/Logger;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/shiro/realm/CachingRealm;->INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/realm/CachingRealm;->cachingEnabled:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/shiro/realm/CachingRealm;->INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/realm/CachingRealm;->name:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method protected afterCacheManagerSet()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected clearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 2
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 165
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/CachingRealm;->doClearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 167
    sget-object v0, Lorg/apache/shiro/realm/CachingRealm;->log:Lorg/slf4j/Logger;

    const-string v1, "Cleared cache entries for account with principals [{}]"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_0
    return-void
.end method

.method protected doClearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 178
    return-void
.end method

.method protected getAvailablePrincipal(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "primary":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/apache/shiro/realm/CachingRealm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/shiro/subject/PrincipalCollection;->fromRealm(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 202
    .local v1, "thisPrincipals":Ljava/util/Collection;
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 210
    .end local v0    # "primary":Ljava/lang/Object;
    .end local v1    # "thisPrincipals":Ljava/util/Collection;
    :cond_0
    :goto_0
    return-object v0

    .line 206
    .restart local v0    # "primary":Ljava/lang/Object;
    .restart local v1    # "thisPrincipals":Ljava/util/Collection;
    :cond_1
    invoke-interface {p1}, Lorg/apache/shiro/subject/PrincipalCollection;->getPrimaryPrincipal()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheManager()Lorg/apache/shiro/cache/CacheManager;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/shiro/realm/CachingRealm;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/shiro/realm/CachingRealm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCachingEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/shiro/realm/CachingRealm;->cachingEnabled:Z

    return v0
.end method

.method public onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/CachingRealm;->clearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 153
    return-void
.end method

.method public setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V
    .locals 0
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/shiro/realm/CachingRealm;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    .line 96
    invoke-virtual {p0}, Lorg/apache/shiro/realm/CachingRealm;->afterCacheManagerSet()V

    .line 97
    return-void
.end method

.method public setCachingEnabled(Z)V
    .locals 0
    .param p1, "cachingEnabled"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/apache/shiro/realm/CachingRealm;->cachingEnabled:Z

    .line 122
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/shiro/realm/CachingRealm;->name:Ljava/lang/String;

    .line 130
    return-void
.end method
