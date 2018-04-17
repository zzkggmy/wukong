.class Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO$1;
.super Lorg/apache/shiro/cache/AbstractCacheManager;
.source "EnterpriseCacheSessionDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;


# direct methods
.method constructor <init>(Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO$1;->this$0:Lorg/apache/shiro/session/mgt/eis/EnterpriseCacheSessionDAO;

    invoke-direct {p0}, Lorg/apache/shiro/cache/AbstractCacheManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/apache/shiro/cache/MapCache;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/apache/shiro/cache/MapCache;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
