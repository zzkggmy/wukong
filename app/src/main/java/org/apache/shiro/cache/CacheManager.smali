.class public interface abstract Lorg/apache/shiro/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# virtual methods
.method public abstract getCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;
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
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation
.end method
