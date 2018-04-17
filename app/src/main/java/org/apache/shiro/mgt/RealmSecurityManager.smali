.class public abstract Lorg/apache/shiro/mgt/RealmSecurityManager;
.super Lorg/apache/shiro/mgt/CachingSecurityManager;
.source "RealmSecurityManager.java"


# instance fields
.field private realms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/shiro/mgt/CachingSecurityManager;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected afterCacheManagerSet()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->applyCacheManagerToRealms()V

    .line 128
    return-void
.end method

.method protected afterRealmsSet()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->applyCacheManagerToRealms()V

    .line 86
    return-void
.end method

.method protected applyCacheManagerToRealms()V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->getCacheManager()Lorg/apache/shiro/cache/CacheManager;

    move-result-object v0

    .line 111
    .local v0, "cacheManager":Lorg/apache/shiro/cache/CacheManager;
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->getRealms()Ljava/util/Collection;

    move-result-object v3

    .line 112
    .local v3, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/shiro/realm/Realm;

    .line 114
    .local v2, "realm":Lorg/apache/shiro/realm/Realm;
    instance-of v4, v2, Lorg/apache/shiro/cache/CacheManagerAware;

    if-eqz v4, :cond_0

    .line 115
    check-cast v2, Lorg/apache/shiro/cache/CacheManagerAware;

    .end local v2    # "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v2, v0}, Lorg/apache/shiro/cache/CacheManagerAware;->setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V

    goto :goto_0

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->getRealms()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/util/Collection;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/mgt/RealmSecurityManager;->realms:Ljava/util/Collection;

    .line 133
    invoke-super {p0}, Lorg/apache/shiro/mgt/CachingSecurityManager;->destroy()V

    .line 134
    return-void
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
    .line 94
    iget-object v0, p0, Lorg/apache/shiro/mgt/RealmSecurityManager;->realms:Ljava/util/Collection;

    return-object v0
.end method

.method public setRealm(Lorg/apache/shiro/realm/Realm;)V
    .locals 3
    .param p1, "realm"    # Lorg/apache/shiro/realm/Realm;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Realm argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v0, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->setRealms(Ljava/util/Collection;)V

    .line 65
    return-void
.end method

.method public setRealms(Ljava/util/Collection;)V
    .locals 2
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
    .line 74
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Realms collection argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Realms collection argument cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iput-object p1, p0, Lorg/apache/shiro/mgt/RealmSecurityManager;->realms:Ljava/util/Collection;

    .line 81
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->afterRealmsSet()V

    .line 82
    return-void
.end method
