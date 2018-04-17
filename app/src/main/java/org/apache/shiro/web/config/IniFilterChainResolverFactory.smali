.class public Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;
.super Lorg/apache/shiro/config/IniFactorySupport;
.source "IniFilterChainResolverFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/shiro/config/IniFactorySupport",
        "<",
        "Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILTERS:Ljava/lang/String; = "filters"

.field public static final URLS:Ljava/lang/String; = "urls"

.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private defaultBeans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private filterConfig:Ljavax/servlet/FilterConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/shiro/config/IniFactorySupport;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/shiro/config/IniFactorySupport;-><init>(Lorg/apache/shiro/config/Ini;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/config/Ini;Ljava/util/Map;)V
    .locals 0
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/config/Ini;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "defaultBeans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;-><init>(Lorg/apache/shiro/config/Ini;)V

    .line 64
    iput-object p2, p0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->defaultBeans:Ljava/util/Map;

    .line 65
    return-void
.end method

.method private extractFilters(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "objects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    const/4 v1, 0x0

    .line 174
    :cond_0
    return-object v1

    .line 166
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 167
    .local v1, "filterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 170
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/servlet/Filter;

    if-eqz v5, :cond_2

    .line 171
    check-cast v4, Ljavax/servlet/Filter;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected buildChains(Lorg/apache/shiro/web/filter/mgt/FilterChainManager;Lorg/apache/shiro/config/Ini;)V
    .locals 8
    .param p1, "manager"    # Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    .param p2, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 96
    const-string v5, "filters"

    invoke-virtual {p2, v5}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v4

    .line 98
    .local v4, "section":Lorg/apache/shiro/config/Ini$Section;
    invoke-static {v4}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    const-string v3, "The [{}] section has been deprecated and will be removed in a future release!  Please move all object configuration (filters and all other objects) to the [{}] section."

    .line 101
    .local v3, "msg":Ljava/lang/String;
    sget-object v5, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->log:Lorg/slf4j/Logger;

    const-string v6, "filters"

    const-string v7, "main"

    invoke-interface {v5, v3, v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 106
    .local v1, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lorg/apache/shiro/web/filter/mgt/FilterChainManager;->getFilters()Ljava/util/Map;

    move-result-object v0

    .line 111
    .local v0, "defaultFilters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    :cond_1
    iget-object v5, p0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->defaultBeans:Ljava/util/Map;

    invoke-static {v5}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 117
    iget-object v5, p0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->defaultBeans:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 120
    :cond_2
    invoke-virtual {p0, v4, v1}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->getFilters(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 123
    .local v2, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-virtual {p0, v2, p1}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->registerFilters(Ljava/util/Map;Lorg/apache/shiro/web/filter/mgt/FilterChainManager;)V

    .line 126
    const-string v5, "urls"

    invoke-virtual {p2, v5}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v4

    .line 127
    invoke-virtual {p0, v4, p1}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->createChains(Ljava/util/Map;Lorg/apache/shiro/web/filter/mgt/FilterChainManager;)V

    .line 128
    return-void
.end method

.method protected createChains(Ljava/util/Map;Lorg/apache/shiro/web/filter/mgt/FilterChainManager;)V
    .locals 6
    .param p2, "manager"    # Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/shiro/web/filter/mgt/FilterChainManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "urls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    sget-object v4, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    sget-object v4, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->log:Lorg/slf4j/Logger;

    const-string v5, "No urls to process."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void

    .line 185
    :cond_1
    sget-object v4, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    sget-object v4, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->log:Lorg/slf4j/Logger;

    const-string v5, "Before url processing."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 189
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, "path":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    .local v3, "value":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lorg/apache/shiro/web/filter/mgt/FilterChainManager;->createChain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic createDefaultInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->createDefaultInstance()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultInstance()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->getFilterConfig()Ljavax/servlet/FilterConfig;

    move-result-object v0

    .line 87
    .local v0, "filterConfig":Ljavax/servlet/FilterConfig;
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;

    invoke-direct {v1, v0}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;-><init>(Ljavax/servlet/FilterConfig;)V

    .line 90
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;

    invoke-direct {v1}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;-><init>()V

    goto :goto_0
.end method

.method protected bridge synthetic createInstance(Lorg/apache/shiro/config/Ini;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->createInstance(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    .locals 4
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->createDefaultInstance()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    move-result-object v0

    .line 77
    .local v0, "filterChainResolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    instance-of v3, v0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 78
    check-cast v2, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;

    .line 79
    .local v2, "resolver":Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;
    invoke-virtual {v2}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->getFilterChainManager()Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    move-result-object v1

    .line 80
    .local v1, "manager":Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    invoke-virtual {p0, v1, p1}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->buildChains(Lorg/apache/shiro/web/filter/mgt/FilterChainManager;Lorg/apache/shiro/config/Ini;)V

    .line 82
    .end local v1    # "manager":Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    .end local v2    # "resolver":Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;
    :cond_0
    return-object v0
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->filterConfig:Ljavax/servlet/FilterConfig;

    return-object v0
.end method

.method protected getFilters(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "section":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p2}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->extractFilters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 145
    .local v2, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    new-instance v0, Lorg/apache/shiro/config/ReflectionBuilder;

    invoke-direct {v0, p2}, Lorg/apache/shiro/config/ReflectionBuilder;-><init>(Ljava/util/Map;)V

    .line 147
    .local v0, "builder":Lorg/apache/shiro/config/ReflectionBuilder;
    invoke-virtual {v0, p1}, Lorg/apache/shiro/config/ReflectionBuilder;->buildObjects(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 148
    .local v1, "built":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, v1}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->extractFilters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 150
    .local v3, "sectionFilters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    move-object v2, v3

    .line 159
    .end local v0    # "builder":Lorg/apache/shiro/config/ReflectionBuilder;
    .end local v1    # "built":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v3    # "sectionFilters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 153
    .restart local v0    # "builder":Lorg/apache/shiro/config/ReflectionBuilder;
    .restart local v1    # "built":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v3    # "sectionFilters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    :cond_1
    invoke-static {v3}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected registerFilters(Ljava/util/Map;Lorg/apache/shiro/web/filter/mgt/FilterChainManager;)V
    .locals 6
    .param p2, "manager"    # Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;",
            "Lorg/apache/shiro/web/filter/mgt/FilterChainManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    invoke-virtual {p0}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->getFilterConfig()Ljavax/servlet/FilterConfig;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 133
    .local v3, "init":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/Filter;

    .line 136
    .local v1, "filter":Ljavax/servlet/Filter;
    invoke-interface {p2, v4, v1, v3}, Lorg/apache/shiro/web/filter/mgt/FilterChainManager;->addFilter(Ljava/lang/String;Ljavax/servlet/Filter;Z)V

    goto :goto_1

    .line 132
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    .end local v1    # "filter":Ljavax/servlet/Filter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "init":Z
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .locals 0
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->filterConfig:Ljavax/servlet/FilterConfig;

    .line 73
    return-void
.end method
