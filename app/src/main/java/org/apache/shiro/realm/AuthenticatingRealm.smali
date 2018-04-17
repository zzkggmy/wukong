.class public abstract Lorg/apache/shiro/realm/AuthenticatingRealm;
.super Lorg/apache/shiro/realm/CachingRealm;
.source "AuthenticatingRealm.java"

# interfaces
.implements Lorg/apache/shiro/util/Initializable;


# static fields
.field private static final DEFAULT_AUTHORIZATION_CACHE_SUFFIX:Ljava/lang/String; = ".authenticationCache"

.field private static final INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private authenticationCache:Lorg/apache/shiro/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authc/AuthenticationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private authenticationCacheName:Ljava/lang/String;

.field private authenticationCachingEnabled:Z

.field private authenticationTokenClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/authc/AuthenticationToken;",
            ">;"
        }
    .end annotation
.end field

.field private credentialsMatcher:Lorg/apache/shiro/authc/credential/CredentialsMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-class v0, Lorg/apache/shiro/realm/AuthenticatingRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/shiro/realm/AuthenticatingRealm;->INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    new-instance v1, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;

    invoke-direct {v1}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/shiro/realm/AuthenticatingRealm;-><init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V
    .locals 1
    .param p1, "matcher"    # Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;-><init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/cache/CacheManager;)V
    .locals 1
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;

    .prologue
    .line 151
    new-instance v0, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;

    invoke-direct {v0}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/shiro/realm/AuthenticatingRealm;-><init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/cache/CacheManager;Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V
    .locals 3
    .param p1, "cacheManager"    # Lorg/apache/shiro/cache/CacheManager;
    .param p2, "matcher"    # Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/apache/shiro/realm/CachingRealm;-><init>()V

    .line 159
    const-class v1, Lorg/apache/shiro/authc/UsernamePasswordToken;

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationTokenClass:Ljava/lang/Class;

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCachingEnabled:Z

    .line 165
    sget-object v1, Lorg/apache/shiro/realm/AuthenticatingRealm;->INSTANCE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 166
    .local v0, "instanceNumber":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".authenticationCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCacheName:Ljava/lang/String;

    .line 167
    if-lez v0, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCacheName:Ljava/lang/String;

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->setCacheManager(Lorg/apache/shiro/cache/CacheManager;)V

    .line 174
    :cond_1
    if-eqz p2, :cond_2

    .line 175
    invoke-virtual {p0, p2}, Lorg/apache/shiro/realm/AuthenticatingRealm;->setCredentialsMatcher(Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 177
    :cond_2
    return-void
.end method

.method private cacheAuthenticationInfoIfPossible(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 4
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/realm/AuthenticatingRealm;->isAuthenticationCachingEnabled(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 507
    sget-object v2, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "AuthenticationInfo caching is disabled for info [{}].  Submitted token: [{}]."

    invoke-interface {v2, v3, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAvailableAuthenticationCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 513
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authc/AuthenticationInfo;>;"
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAuthenticationCacheKey(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;

    move-result-object v1

    .line 515
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {v0, v1, p2}, Lorg/apache/shiro/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v2, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "Cached AuthenticationInfo for continued authentication.  key=[{}], value=[{}]."

    invoke-interface {v2, v3, v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getAuthenticationCacheLazy()Lorg/apache/shiro/cache/Cache;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authc/AuthenticationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v2, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCache:Lorg/apache/shiro/cache/Cache;

    if-nez v2, :cond_0

    .line 455
    sget-object v2, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "No authenticationCache instance set.  Checking for a cacheManager..."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getCacheManager()Lorg/apache/shiro/cache/CacheManager;

    move-result-object v0

    .line 459
    .local v0, "cacheManager":Lorg/apache/shiro/cache/CacheManager;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAuthenticationCacheName()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "cacheName":Ljava/lang/String;
    sget-object v2, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "CacheManager [{}] configured.  Building authentication cache \'{}\'"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    invoke-interface {v0, v1}, Lorg/apache/shiro/cache/CacheManager;->getCache(Ljava/lang/String;)Lorg/apache/shiro/cache/Cache;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCache:Lorg/apache/shiro/cache/Cache;

    .line 466
    .end local v0    # "cacheManager":Lorg/apache/shiro/cache/CacheManager;
    .end local v1    # "cacheName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCache:Lorg/apache/shiro/cache/Cache;

    return-object v2
.end method

.method private getAvailableAuthenticationCache()Lorg/apache/shiro/cache/Cache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authc/AuthenticationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAuthenticationCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v1

    .line 436
    .local v1, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authc/AuthenticationInfo;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->isAuthenticationCachingEnabled()Z

    move-result v0

    .line 437
    .local v0, "authcCachingEnabled":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAuthenticationCacheLazy()Lorg/apache/shiro/cache/Cache;

    move-result-object v1

    .line 440
    :cond_0
    return-object v1
.end method

.method private getCachedAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 5
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 481
    .local v1, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAvailableAuthenticationCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 482
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authc/AuthenticationInfo;>;"
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 483
    sget-object v3, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Attempting to retrieve the AuthenticationInfo from cache."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAuthenticationCacheKey(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;

    move-result-object v2

    .line 485
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v0, v2}, Lorg/apache/shiro/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    check-cast v1, Lorg/apache/shiro/authc/AuthenticationInfo;

    .line 486
    .restart local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    if-nez v1, :cond_1

    .line 487
    sget-object v3, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "No AuthorizationInfo found in cache for key [{}]"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 489
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_1
    sget-object v3, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Found cached AuthorizationInfo for key [{}]"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected afterCacheManagerSet()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAvailableAuthenticationCache()Lorg/apache/shiro/cache/Cache;

    .line 415
    return-void
.end method

.method protected assertCredentialsMatch(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 5
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getCredentialsMatcher()Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    move-result-object v0

    .line 596
    .local v0, "cm":Lorg/apache/shiro/authc/credential/CredentialsMatcher;
    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authc/credential/CredentialsMatcher;->doCredentialsMatch(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Submitted credentials for token ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] did not match the expected credentials."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/authc/IncorrectCredentialsException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authc/IncorrectCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/apache/shiro/authc/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A CredentialsMatcher must be configured in order to verify credentials during authentication.  If you do not wish for credentials to be examined, you can configure an "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/apache/shiro/authc/credential/AllowAllCredentialsMatcher;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instance."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_1
    return-void
.end method

.method protected clearCachedAuthenticationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 680
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAvailableAuthenticationCache()Lorg/apache/shiro/cache/Cache;

    move-result-object v0

    .line 683
    .local v0, "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authc/AuthenticationInfo;>;"
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAuthenticationCacheKey(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v1

    .line 685
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lorg/apache/shiro/cache/Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .end local v0    # "cache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authc/AuthenticationInfo;>;"
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected doClearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 655
    invoke-super {p0, p1}, Lorg/apache/shiro/realm/CachingRealm;->doClearCache(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 656
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->clearCachedAuthenticationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 657
    return-void
.end method

.method protected abstract doGetAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public getAuthenticationCache()Lorg/apache/shiro/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authc/AuthenticationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCache:Lorg/apache/shiro/cache/Cache;

    return-object v0
.end method

.method protected getAuthenticationCacheKey(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 624
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getPrincipal()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAuthenticationCacheKey(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAvailablePrincipal(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getCachedAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v0

    .line 566
    .local v0, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    if-nez v0, :cond_1

    .line 568
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/AuthenticatingRealm;->doGetAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v0

    .line 569
    sget-object v1, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v2, "Looked up AuthenticationInfo [{}] from doGetAuthenticationInfo"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0, p1, v0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->cacheAuthenticationInfoIfPossible(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V

    .line 577
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->assertCredentialsMatch(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V

    .line 583
    :goto_1
    return-object v0

    .line 574
    :cond_1
    sget-object v1, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v2, "Using cached authentication info [{}] to perform credentials matching."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 580
    :cond_2
    sget-object v1, Lorg/apache/shiro/realm/AuthenticatingRealm;->log:Lorg/slf4j/Logger;

    const-string v2, "No AuthenticationInfo found for submitted AuthenticationToken [{}].  Returning null."

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getAuthenticationTokenClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationTokenClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getCredentialsMatcher()Lorg/apache/shiro/authc/credential/CredentialsMatcher;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->credentialsMatcher:Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    return-object v0
.end method

.method public final init()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAvailableAuthenticationCache()Lorg/apache/shiro/cache/Cache;

    .line 395
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->onInit()V

    .line 396
    return-void
.end method

.method public isAuthenticationCachingEnabled()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCachingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->isCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAuthenticationCachingEnabled(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Z
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 536
    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->isAuthenticationCachingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public setAuthenticationCache(Lorg/apache/shiro/cache/Cache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/cache/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/shiro/authc/AuthenticationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "authenticationCache":Lorg/apache/shiro/cache/Cache;, "Lorg/apache/shiro/cache/Cache<Ljava/lang/Object;Lorg/apache/shiro/authc/AuthenticationInfo;>;"
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCache:Lorg/apache/shiro/cache/Cache;

    .line 257
    return-void
.end method

.method public setAuthenticationCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationCacheName"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCacheName:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setAuthenticationCachingEnabled(Z)V
    .locals 1
    .param p1, "authenticationCachingEnabled"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCachingEnabled:Z

    .line 335
    if-eqz p1, :cond_0

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->setCachingEnabled(Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public setAuthenticationTokenClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/authc/AuthenticationToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "authenticationTokenClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/shiro/authc/AuthenticationToken;>;"
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationTokenClass:Ljava/lang/Class;

    .line 240
    return-void
.end method

.method public setCredentialsMatcher(Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V
    .locals 0
    .param p1, "credentialsMatcher"    # Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    .prologue
    .line 208
    iput-object p1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->credentialsMatcher:Lorg/apache/shiro/authc/credential/CredentialsMatcher;

    .line 209
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-super {p0, p1}, Lorg/apache/shiro/realm/CachingRealm;->setName(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCacheName:Ljava/lang/String;

    .line 343
    .local v0, "authcCacheName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".authenticationCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/realm/AuthenticatingRealm;->authenticationCacheName:Ljava/lang/String;

    .line 348
    :cond_0
    return-void
.end method

.method public supports(Lorg/apache/shiro/authc/AuthenticationToken;)Z
    .locals 2
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/realm/AuthenticatingRealm;->getAuthenticationTokenClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
