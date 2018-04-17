.class public Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;
.super Ljava/lang/Object;
.source "DefaultFilterChainManager.java"

# interfaces
.implements Lorg/apache/shiro/web/filter/mgt/FilterChainManager;


# static fields
.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private filterChains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/web/filter/mgt/NamedFilterList;",
            ">;"
        }
    .end annotation
.end field

.field private filterConfig:Ljavax/servlet/FilterConfig;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filters:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addDefaultFilters(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filters:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->setFilterConfig(Ljavax/servlet/FilterConfig;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addDefaultFilters(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method protected addDefaultFilters(Z)V
    .locals 7
    .param p1, "init"    # Z

    .prologue
    .line 346
    invoke-static {}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->values()[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 347
    .local v1, "defaultFilter":Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    invoke-virtual {v1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->newInstance()Ljavax/servlet/Filter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, p1, v6}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addFilter(Ljava/lang/String;Ljavax/servlet/Filter;ZZ)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "defaultFilter":Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    :cond_0
    return-void
.end method

.method public addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addFilter(Ljava/lang/String;Ljavax/servlet/Filter;Z)V

    .line 112
    return-void
.end method

.method public addFilter(Ljava/lang/String;Ljavax/servlet/Filter;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Ljavax/servlet/Filter;
    .param p3, "init"    # Z

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addFilter(Ljava/lang/String;Ljavax/servlet/Filter;ZZ)V

    .line 116
    return-void
.end method

.method protected addFilter(Ljava/lang/String;Ljavax/servlet/Filter;ZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Ljavax/servlet/Filter;
    .param p3, "init"    # Z
    .param p4, "overwrite"    # Z

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->getFilter(Ljava/lang/String;)Ljavax/servlet/Filter;

    move-result-object v0

    .line 244
    .local v0, "existing":Ljavax/servlet/Filter;
    if-eqz v0, :cond_0

    if-eqz p4, :cond_3

    .line 245
    :cond_0
    instance-of v1, p2, Lorg/apache/shiro/util/Nameable;

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 246
    check-cast v1, Lorg/apache/shiro/util/Nameable;

    invoke-interface {v1, p1}, Lorg/apache/shiro/util/Nameable;->setName(Ljava/lang/String;)V

    .line 248
    :cond_1
    if-eqz p3, :cond_2

    .line 249
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->initFilter(Ljavax/servlet/Filter;)V

    .line 251
    :cond_2
    iget-object v1, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filters:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_3
    return-void
.end method

.method public addToChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addToChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public addToChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "chainSpecificFilterConfig"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "chainName cannot be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->getFilter(Ljava/lang/String;)Ljavax/servlet/Filter;

    move-result-object v1

    .line 264
    .local v1, "filter":Ljavax/servlet/Filter;
    if-nez v1, :cond_1

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no filter with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to apply to chain ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in the pool of available Filters.  Ensure a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "filter with that name/path has first been registered with the addFilter method(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_1
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->applyChainConfig(Ljava/lang/String;Ljavax/servlet/Filter;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->ensureChain(Ljava/lang/String;)Lorg/apache/shiro/web/filter/mgt/NamedFilterList;

    move-result-object v0

    .line 273
    .local v0, "chain":Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
    invoke-interface {v0, v1}, Lorg/apache/shiro/web/filter/mgt/NamedFilterList;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method protected applyChainConfig(Ljava/lang/String;Ljavax/servlet/Filter;Ljava/lang/String;)V
    .locals 4
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljavax/servlet/Filter;
    .param p3, "chainSpecificFilterConfig"    # Ljava/lang/String;

    .prologue
    .line 277
    sget-object v1, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    sget-object v1, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to apply path ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to filter ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with config ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 281
    :cond_0
    instance-of v1, p2, Lorg/apache/shiro/web/filter/PathConfigProcessor;

    if-eqz v1, :cond_2

    .line 282
    check-cast p2, Lorg/apache/shiro/web/filter/PathConfigProcessor;

    .end local p2    # "filter":Ljavax/servlet/Filter;
    invoke-interface {p2, p1, p3}, Lorg/apache/shiro/web/filter/PathConfigProcessor;->processPathConfig(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/Filter;

    .line 294
    :cond_1
    return-void

    .line 284
    .restart local p2    # "filter":Ljavax/servlet/Filter;
    :cond_2
    invoke-static {p3}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chainSpecificFilterConfig was specified, but the underlying Filter instance is not an \'instanceof\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/web/filter/PathConfigProcessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  This is required if the filter is to accept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chain-specific configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "chainDefinition"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 120
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "chainName cannot be null or empty."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    :cond_0
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 123
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "chainDefinition cannot be null or empty."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    :cond_1
    sget-object v6, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    sget-object v6, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating chain ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] from String definition ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 140
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->splitChainDefinition(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "filterTokens":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 145
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->toNameConfigPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "nameConfigPair":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->addToChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v4    # "nameConfigPair":[Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected ensureChain(Ljava/lang/String;)Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
    .locals 2
    .param p1, "chainName"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->getChain(Ljava/lang/String;)Lorg/apache/shiro/web/filter/mgt/NamedFilterList;

    move-result-object v0

    .line 298
    .local v0, "chain":Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;

    .end local v0    # "chain":Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
    invoke-direct {v0, p1}, Lorg/apache/shiro/web/filter/mgt/SimpleNamedFilterList;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v0    # "chain":Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
    iget-object v1, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    return-object v0
.end method

.method public getChain(Ljava/lang/String;)Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
    .locals 1
    .param p1, "chainName"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/web/filter/mgt/NamedFilterList;

    return-object v0
.end method

.method public getChainNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0
.end method

.method public getFilter(Ljava/lang/String;)Ljavax/servlet/Filter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    return-object v0
.end method

.method public getFilterChains()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/web/filter/mgt/NamedFilterList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    return-object v0
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterConfig:Ljavax/servlet/FilterConfig;

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
    .line 89
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filters:Ljava/util/Map;

    return-object v0
.end method

.method public hasChains()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initFilter(Ljavax/servlet/Filter;)V
    .locals 4
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->getFilterConfig()Ljavax/servlet/FilterConfig;

    move-result-object v1

    .line 334
    .local v1, "filterConfig":Ljavax/servlet/FilterConfig;
    if-nez v1, :cond_0

    .line 335
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "FilterConfig attribute has not been set.  This must occur before filter initialization can occur."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_0
    :try_start_0
    invoke-interface {p1, v1}, Ljavax/servlet/Filter;->init(Ljavax/servlet/FilterConfig;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljavax/servlet/ServletException;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public proxy(Ljavax/servlet/FilterChain;Ljava/lang/String;)Ljavax/servlet/FilterChain;
    .locals 4
    .param p1, "original"    # Ljavax/servlet/FilterChain;
    .param p2, "chainName"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->getChain(Ljava/lang/String;)Lorg/apache/shiro/web/filter/mgt/NamedFilterList;

    move-result-object v0

    .line 320
    .local v0, "configured":Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
    if-nez v0, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no configured chain under the name/key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/shiro/web/filter/mgt/NamedFilterList;->proxy(Ljavax/servlet/FilterChain;)Ljavax/servlet/FilterChain;

    move-result-object v2

    return-object v2
.end method

.method public setFilterChains(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/web/filter/mgt/NamedFilterList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "filterChains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/shiro/web/filter/mgt/NamedFilterList;>;"
    iput-object p1, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterChains:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .locals 0
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filterConfig:Ljavax/servlet/FilterConfig;

    .line 86
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
    .line 94
    .local p1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    iput-object p1, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;->filters:Ljava/util/Map;

    .line 95
    return-void
.end method

.method protected splitChainDefinition(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "chainDefinition"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 171
    const/16 v1, 0x2c

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    move-object v0, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;CCCZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toNameConfigPair(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 200
    :try_start_0
    const-string v6, "\\["

    const/4 v7, 0x2

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "pair":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 204
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter name not found for filter chain definition token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pair":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse filter chain definition token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "msg":Ljava/lang/String;
    new-instance v6, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v6, v2, v1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "pair":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, "config":Ljava/lang/String;
    :try_start_1
    array-length v6, v4

    if-ne v6, v8, :cond_1

    .line 209
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 219
    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "stripped":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    if-eqz v5, :cond_1

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 225
    move-object v0, v5

    .line 234
    .end local v5    # "stripped":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6
.end method
