.class public Lorg/apache/shiro/cache/ehcache/EhCache;
.super Ljava/lang/Object;
.source "EhCache.java"

# interfaces
.implements Lorg/apache/shiro/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/shiro/cache/Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cache:Lnet/sf/ehcache/Ehcache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/shiro/cache/ehcache/EhCache;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/sf/ehcache/Ehcache;)V
    .locals 2
    .param p1, "cache"    # Lnet/sf/ehcache/Ehcache;

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing all objects from cache ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v3}, Lnet/sf/ehcache/Ehcache;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 137
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v1}, Lnet/sf/ehcache/Ehcache;->removeAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 67
    :try_start_0
    sget-object v3, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    sget-object v3, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting object from cache ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v5}, Lnet/sf/ehcache/Ehcache;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] for key ["

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

    .line 70
    :cond_0
    if-nez p1, :cond_2

    .line 81
    :cond_1
    :goto_0
    return-object v2

    .line 73
    :cond_2
    iget-object v3, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v3, p1}, Lnet/sf/ehcache/Ehcache;->get(Ljava/lang/Object;)Lnet/sf/ehcache/Element;

    move-result-object v0

    .line 74
    .local v0, "element":Lnet/sf/ehcache/Element;
    if-nez v0, :cond_3

    .line 75
    sget-object v3, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    sget-object v3, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "element":Lnet/sf/ehcache/Element;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 81
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "element":Lnet/sf/ehcache/Element;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lnet/sf/ehcache/Element;->getObjectValue()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public getDiskStoreSize()J
    .locals 4

    .prologue
    .line 227
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v1}, Lnet/sf/ehcache/Ehcache;->getDiskStoreSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMemoryStoreSize()J
    .locals 4

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v1}, Lnet/sf/ehcache/Ehcache;->getMemoryStoreSize()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMemoryUsage()J
    .locals 4

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v1}, Lnet/sf/ehcache/Ehcache;->calculateInMemorySize()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 198
    :goto_0
    return-wide v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "t":Ljava/lang/Throwable;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public keys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v2}, Lnet/sf/ehcache/Ehcache;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 158
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 160
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    :catch_0
    move-exception v1

    .line 161
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    sget-object v3, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    sget-object v3, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Putting object in cache ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v5}, Lnet/sf/ehcache/Ehcache;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] for key ["

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

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/cache/ehcache/EhCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "previous":Ljava/lang/Object;, "TV;"
    new-instance v0, Lnet/sf/ehcache/Element;

    invoke-direct {v0, p1, p2}, Lnet/sf/ehcache/Element;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .local v0, "element":Lnet/sf/ehcache/Element;
    iget-object v3, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v3, v0}, Lnet/sf/ehcache/Ehcache;->put(Lnet/sf/ehcache/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object v1

    .line 104
    .end local v0    # "element":Lnet/sf/ehcache/Element;
    .end local v1    # "previous":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 105
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v3, v2}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCache;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing object from cache ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v4}, Lnet/sf/ehcache/Ehcache;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 121
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/cache/ehcache/EhCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v2, p1}, Lnet/sf/ehcache/Ehcache;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-object v0

    .line 124
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 125
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v1}, Lnet/sf/ehcache/Ehcache;->getSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EhCache ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v1}, Lnet/sf/ehcache/Ehcache;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/shiro/cache/ehcache/EhCache;, "Lorg/apache/shiro/cache/ehcache/EhCache<TK;TV;>;"
    :try_start_0
    iget-object v6, p0, Lorg/apache/shiro/cache/ehcache/EhCache;->cache:Lnet/sf/ehcache/Ehcache;

    invoke-interface {v6}, Lnet/sf/ehcache/Ehcache;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 172
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/apache/shiro/cache/ehcache/EhCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 173
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_0

    .line 174
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :catch_0
    move-exception v3

    .line 182
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v6, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v6, v3}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 177
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :cond_1
    :try_start_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 179
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :goto_1
    return-object v6

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method
