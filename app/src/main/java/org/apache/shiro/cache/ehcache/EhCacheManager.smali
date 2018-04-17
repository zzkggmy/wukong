.class public Lorg/apache/shiro/cache/ehcache/EhCacheManager;
.super Ljava/lang/Object;
.source "EhCacheManager.java"

# interfaces
.implements Lorg/apache/shiro/cache/CacheManager;
.implements Lorg/apache/shiro/util/Initializable;
.implements Lorg/apache/shiro/util/Destroyable;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cacheManagerConfigFile:Ljava/lang/String;

.field private cacheManagerImplicitlyCreated:Z

.field protected manager:Lnet/sf/ehcache/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->cacheManagerImplicitlyCreated:Z

    .line 71
    const-string v0, "classpath:org/apache/shiro/cache/ehcache/ehcache.xml"

    iput-object v0, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->cacheManagerConfigFile:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private ensureCacheManager()Lnet/sf/ehcache/CacheManager;
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->manager:Lnet/sf/ehcache/CacheManager;

    if-nez v1, :cond_2

    .line 205
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    const-string v2, "cacheManager property not set.  Constructing CacheManager instance... "

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 213
    :cond_0
    new-instance v1, Lnet/sf/ehcache/CacheManager;

    invoke-virtual {p0}, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->getCacheManagerConfigFileInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/ehcache/CacheManager;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->manager:Lnet/sf/ehcache/CacheManager;

    .line 214
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    const-string v2, "instantiated Ehcache CacheManager instance."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 217
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->cacheManagerImplicitlyCreated:Z

    .line 218
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    sget-object v1, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    const-string v2, "implicit cacheManager created successfully."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 222
    :cond_2
    iget-object v1, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->manager:Lnet/sf/ehcache/CacheManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 236
    iget-boolean v2, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->cacheManagerImplicitlyCreated:Z

    if-eqz v2, :cond_1

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->getCacheManager()Lnet/sf/ehcache/CacheManager;

    move-result-object v0

    .line 239
    .local v0, "cacheMgr":Lnet/sf/ehcache/CacheManager;
    invoke-virtual {v0}, Lnet/sf/ehcache/CacheManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v0    # "cacheMgr":Lnet/sf/ehcache/CacheManager;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->cacheManagerImplicitlyCreated:Z

    .line 248
    :cond_1
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Unable to cleanly shutdown implicitly created CacheManager instance.  Ignoring (shutting down)..."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;
    .locals 5
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
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquiring EhCache instance named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 156
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->ensureCacheManager()Lnet/sf/ehcache/CacheManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/ehcache/CacheManager;->getEhcache(Ljava/lang/String;)Lnet/sf/ehcache/Ehcache;

    move-result-object v0

    .line 157
    .local v0, "cache":Lnet/sf/ehcache/Ehcache;
    if-nez v0, :cond_3

    .line 158
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Cache with name \'{}\' does not yet exist.  Creating now."

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_1
    iget-object v2, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->manager:Lnet/sf/ehcache/CacheManager;

    invoke-virtual {v2, p1}, Lnet/sf/ehcache/CacheManager;->addCache(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->manager:Lnet/sf/ehcache/CacheManager;

    invoke-virtual {v2, p1}, Lnet/sf/ehcache/CacheManager;->getCache(Ljava/lang/String;)Lnet/sf/ehcache/Cache;

    move-result-object v0

    .line 165
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added EhCache named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 173
    :cond_2
    :goto_0
    new-instance v2, Lorg/apache/shiro/cache/ehcache/EhCache;

    invoke-direct {v2, v0}, Lorg/apache/shiro/cache/ehcache/EhCache;-><init>(Lnet/sf/ehcache/Ehcache;)V

    return-object v2

    .line 169
    :cond_3
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    sget-object v2, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using existing EHCache named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lnet/sf/ehcache/Ehcache;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/ehcache/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0    # "cache":Lnet/sf/ehcache/Ehcache;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Lnet/sf/ehcache/CacheException;
    new-instance v2, Lorg/apache/shiro/cache/CacheException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCacheManager()Lnet/sf/ehcache/CacheManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->manager:Lnet/sf/ehcache/CacheManager;

    return-object v0
.end method

.method public getCacheManagerConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->cacheManagerConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method protected getCacheManagerConfigFileInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->getCacheManagerConfigFile()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "configFile":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/apache/shiro/io/ResourceUtils;->getInputStreamForPath(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain input stream for cacheManagerConfigFile ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->ensureCacheManager()Lnet/sf/ehcache/CacheManager;

    .line 200
    return-void
.end method

.method public setCacheManager(Lnet/sf/ehcache/CacheManager;)V
    .locals 0
    .param p1, "manager"    # Lnet/sf/ehcache/CacheManager;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->manager:Lnet/sf/ehcache/CacheManager;

    .line 95
    return-void
.end method

.method public setCacheManagerConfigFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "classpathLocation"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/shiro/cache/ehcache/EhCacheManager;->cacheManagerConfigFile:Ljava/lang/String;

    .line 125
    return-void
.end method
