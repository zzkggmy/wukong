.class public Lorg/apache/shiro/cache/MemoryConstrainedCacheManager;
.super Lorg/apache/shiro/cache/AbstractCacheManager;
.source "MemoryConstrainedCacheManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/shiro/cache/AbstractCacheManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lorg/apache/shiro/cache/MapCache;

    new-instance v1, Lorg/apache/shiro/util/SoftHashMap;

    invoke-direct {v1}, Lorg/apache/shiro/util/SoftHashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/apache/shiro/cache/MapCache;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
