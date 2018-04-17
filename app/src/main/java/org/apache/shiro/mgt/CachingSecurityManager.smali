.class public abstract Lorg/apache/shiro/mgt/CachingSecurityManager;
.super Ljava/lang/Object;
.source "CachingSecurityManager.java"

# interfaces
.implements Lorg/apache/shiro/mgt/SecurityManager;
.implements Lorg/apache/shiro/util/Destroyable;
.implements Lorg/apache/shiro/cache/CacheManagerAware;


# instance fields
.field private cacheManager:Lorg/apache/shiro/cache/CacheManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected afterCacheManagerSet()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/CachingSecurityManager;->getCacheManager()Lorg/apache/shiro/cache/CacheManager;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/mgt/CachingSecurityManager;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    .line 89
    return-void
.end method

.method public getCacheManager()Lorg/apache/shiro/cache/CacheManager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/shiro/mgt/CachingSecurityManager;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    return-object v0
.end method

.method public setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V
    .locals 0
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/shiro/mgt/CachingSecurityManager;->cacheManager:Lorg/apache/shiro/cache/CacheManager;

    .line 72
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/CachingSecurityManager;->afterCacheManagerSet()V

    .line 73
    return-void
.end method
