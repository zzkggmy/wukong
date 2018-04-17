.class public Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;
.super Ljava/lang/Object;
.source "ShiroFilterFactoryBean.java"

# interfaces
.implements Lorg/springframework/beans/factory/FactoryBean;
.implements Lorg/springframework/beans/factory/config/BeanPostProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean$SpringShiroFilter;
    }
.end annotation


# static fields
.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private filterChainDefinitionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private instance:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

.field private loginUrl:Ljava/lang/String;

.field private securityManager:Lorg/apache/shiro/mgt/SecurityManager;

.field private successUrl:Ljava/lang/String;

.field private unauthorizedUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-class v0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->filters:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->filterChainDefinitionMap:Ljava/util/Map;

    .line 135
    return-void
.end method

.method private applyGlobalPropertiesIfNecessary(Ljavax/servlet/Filter;)V
    .locals 0
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->applyLoginUrlIfNecessary(Ljavax/servlet/Filter;)V

    .line 490
    invoke-direct {p0, p1}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->applySuccessUrlIfNecessary(Ljavax/servlet/Filter;)V

    .line 491
    invoke-direct {p0, p1}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->applyUnauthorizedUrlIfNecessary(Ljavax/servlet/Filter;)V

    .line 492
    return-void
.end method

.method private applyLoginUrlIfNecessary(Ljavax/servlet/Filter;)V
    .locals 4
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "loginUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Lorg/apache/shiro/web/filter/AccessControlFilter;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 455
    check-cast v0, Lorg/apache/shiro/web/filter/AccessControlFilter;

    .line 457
    .local v0, "acFilter":Lorg/apache/shiro/web/filter/AccessControlFilter;
    invoke-virtual {v0}, Lorg/apache/shiro/web/filter/AccessControlFilter;->getLoginUrl()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "existingLoginUrl":Ljava/lang/String;
    const-string v3, "/login.jsp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-virtual {v0, v2}, Lorg/apache/shiro/web/filter/AccessControlFilter;->setLoginUrl(Ljava/lang/String;)V

    .line 462
    .end local v0    # "acFilter":Lorg/apache/shiro/web/filter/AccessControlFilter;
    .end local v1    # "existingLoginUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private applySuccessUrlIfNecessary(Ljavax/servlet/Filter;)V
    .locals 4
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 465
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->getSuccessUrl()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "successUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 467
    check-cast v0, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;

    .line 469
    .local v0, "authcFilter":Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;
    invoke-virtual {v0}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->getSuccessUrl()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "existingSuccessUrl":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    invoke-virtual {v0, v2}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->setSuccessUrl(Ljava/lang/String;)V

    .line 474
    .end local v0    # "authcFilter":Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;
    .end local v1    # "existingSuccessUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private applyUnauthorizedUrlIfNecessary(Ljavax/servlet/Filter;)V
    .locals 4
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->getUnauthorizedUrl()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "unauthorizedUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 479
    check-cast v0, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;

    .line 481
    .local v0, "authzFilter":Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;
    invoke-virtual {v0}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;->getUnauthorizedUrl()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "existingUnauthorizedUrl":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 483
    invoke-virtual {v0, v2}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;->setUnauthorizedUrl(Ljava/lang/String;)V

    .line 486
    .end local v0    # "authzFilter":Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;
    .end local v1    # "existingUnauthorizedUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected createFilterChainManager()Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    .locals 12

    .prologue
    .line 368
    new-instance v8, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;

    invoke-direct {v8}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;-><init>()V

    .line 369
    .local v8, "manager":Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;
    invoke-virtual {v8}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->getFilters()Ljava/util/Map;

    move-result-object v2

    .line 371
    .local v2, "defaultFilters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/servlet/Filter;

    .line 372
    .local v5, "filter":Ljavax/servlet/Filter;
    invoke-direct {p0, v5}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->applyGlobalPropertiesIfNecessary(Ljavax/servlet/Filter;)V

    goto :goto_0

    .line 376
    .end local v5    # "filter":Ljavax/servlet/Filter;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->getFilters()Ljava/util/Map;

    move-result-object v6

    .line 377
    .local v6, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-static {v6}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 378
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 379
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 380
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/servlet/Filter;

    .line 381
    .restart local v5    # "filter":Ljavax/servlet/Filter;
    invoke-direct {p0, v5}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->applyGlobalPropertiesIfNecessary(Ljavax/servlet/Filter;)V

    .line 382
    instance-of v11, v5, Lorg/apache/shiro/util/Nameable;

    if-eqz v11, :cond_1

    move-object v11, v5

    .line 383
    check-cast v11, Lorg/apache/shiro/util/Nameable;

    invoke-interface {v11, v9}, Lorg/apache/shiro/util/Nameable;->setName(Ljava/lang/String;)V

    .line 387
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v8, v9, v5, v11}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addFilter(Ljava/lang/String;Ljavax/servlet/Filter;Z)V

    goto :goto_1

    .line 392
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    .end local v5    # "filter":Ljavax/servlet/Filter;
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->getFilterChainDefinitionMap()Ljava/util/Map;

    move-result-object v1

    .line 393
    .local v1, "chains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 394
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 395
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 396
    .local v10, "url":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    .local v0, "chainDefinition":Ljava/lang/String;
    invoke-virtual {v8, v10, v0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->createChain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 401
    .end local v0    # "chainDefinition":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "url":Ljava/lang/String;
    :cond_3
    return-object v8
.end method

.method protected createInstance()Lorg/apache/shiro/web/servlet/AbstractShiroFilter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 424
    sget-object v4, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->log:Lorg/slf4j/Logger;

    const-string v5, "Creating Shiro Filter instance."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v3

    .line 427
    .local v3, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    if-nez v3, :cond_0

    .line 428
    const-string v2, "SecurityManager property must be set."

    .line 429
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Lorg/springframework/beans/factory/BeanInitializationException;

    invoke-direct {v4, v2}, Lorg/springframework/beans/factory/BeanInitializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 432
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    instance-of v4, v3, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    if-nez v4, :cond_1

    .line 433
    const-string v2, "The security manager does not implement the WebSecurityManager interface."

    .line 434
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v4, Lorg/springframework/beans/factory/BeanInitializationException;

    invoke-direct {v4, v2}, Lorg/springframework/beans/factory/BeanInitializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 437
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->createFilterChainManager()Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    move-result-object v1

    .line 442
    .local v1, "manager":Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;

    invoke-direct {v0}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;-><init>()V

    .line 443
    .local v0, "chainResolver":Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;
    invoke-virtual {v0, v1}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->setFilterChainManager(Lorg/apache/shiro/web/filter/mgt/FilterChainManager;)V

    .line 449
    new-instance v4, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean$SpringShiroFilter;

    check-cast v3, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    .end local v3    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    invoke-direct {v4, v3, v0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean$SpringShiroFilter;-><init>(Lorg/apache/shiro/web/mgt/WebSecurityManager;Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V

    return-object v4
.end method

.method public getFilterChainDefinitionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->filterChainDefinitionMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFilters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->filters:Ljava/util/Map;

    return-object v0
.end method

.method public getLoginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->loginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->instance:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->createInstance()Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->instance:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->instance:Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    return-object v0
.end method

.method public getObjectType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 354
    const-class v0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean$SpringShiroFilter;

    return-object v0
.end method

.method public getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    return-object v0
.end method

.method public getSuccessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->successUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUnauthorizedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->unauthorizedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSingleton()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public postProcessAfterInitialization(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "beanName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/beans/BeansException;
        }
    .end annotation

    .prologue
    .line 516
    return-object p1
.end method

.method public postProcessBeforeInitialization(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "beanName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/beans/BeansException;
        }
    .end annotation

    .prologue
    .line 500
    instance-of v1, p1, Ljavax/servlet/Filter;

    if-eqz v1, :cond_0

    .line 501
    sget-object v1, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->log:Lorg/slf4j/Logger;

    const-string v2, "Found filter chain candidate filter \'{}\'"

    invoke-interface {v1, v2, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p1

    .line 502
    check-cast v0, Ljavax/servlet/Filter;

    .line 503
    .local v0, "filter":Ljavax/servlet/Filter;
    invoke-direct {p0, v0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->applyGlobalPropertiesIfNecessary(Ljavax/servlet/Filter;)V

    .line 504
    invoke-virtual {p0}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->getFilters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .end local v0    # "filter":Ljavax/servlet/Filter;
    :goto_0
    return-object p1

    .line 506
    :cond_0
    sget-object v1, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->log:Lorg/slf4j/Logger;

    const-string v2, "Ignoring non-Filter bean \'{}\'"

    invoke-interface {v1, v2, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setFilterChainDefinitionMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "filterChainDefinitionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->filterChainDefinitionMap:Ljava/util/Map;

    .line 309
    return-void
.end method

.method public setFilterChainDefinitions(Ljava/lang/String;)V
    .locals 3
    .param p1, "definitions"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Lorg/apache/shiro/config/Ini;

    invoke-direct {v0}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 323
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {v0, p1}, Lorg/apache/shiro/config/Ini;->load(Ljava/lang/String;)V

    .line 325
    const-string v2, "urls"

    invoke-virtual {v0, v2}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 326
    .local v1, "section":Lorg/apache/shiro/config/Ini$Section;
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 331
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->setFilterChainDefinitionMap(Ljava/util/Map;)V

    .line 332
    return-void
.end method

.method public setFilters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    iput-object p1, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->filters:Ljava/util/Map;

    .line 283
    return-void
.end method

.method public setLoginUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginUrl"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->loginUrl:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 0
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 154
    iput-object p1, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 155
    return-void
.end method

.method public setSuccessUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "successUrl"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->successUrl:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setUnauthorizedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "unauthorizedUrl"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;->unauthorizedUrl:Ljava/lang/String;

    .line 251
    return-void
.end method
