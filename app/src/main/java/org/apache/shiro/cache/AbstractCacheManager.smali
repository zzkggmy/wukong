.class public abstract Lorg/apache/shiro/cache/AbstractCacheManager;
.super Ljava/lang/Object;
.source "AbstractCacheManager.java"

# interfaces
.implements Lorg/apache/shiro/cache/CacheManager;
.implements Lorg/apache/shiro/util/Destroyable;


# instance fields
.field private final caches:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/cache/Cache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract createCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation
.end method

.method public destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    :goto_0
    iget-object v2, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/cache/Cache;

    .line 97
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;
    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    .end local v0    # "cache":Lorg/apache/shiro/cache/Cache;
    :cond_0
    iget-object v2, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    goto :goto_0

    .line 101
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/shiro/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cache name cannot be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    iget-object v2, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/cache/Cache;

    .line 67
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;
    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/shiro/cache/AbstractCacheManager;->createCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/cache/Cache;

    .line 70
    .local v1, "existing":Lorg/apache/shiro/cache/Cache;
    if-eqz v1, :cond_1

    .line 71
    move-object v0, v1

    .line 76
    .end local v1    # "existing":Lorg/apache/shiro/cache/Cache;
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 104
    iget-object v5, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 105
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/cache/Cache;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/shiro/cache/AbstractCacheManager;->caches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cache(s)): ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 110
    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/cache/Cache;

    .line 111
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;
    if-lez v1, :cond_0

    .line 112
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "cache":Lorg/apache/shiro/cache/Cache;
    :cond_1
    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
