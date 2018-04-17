.class public Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;
.super Ljava/lang/Object;
.source "PathMatchingFilterChainResolver.java"

# interfaces
.implements Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;


# static fields
.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private filterChainManager:Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

.field private pathMatcher:Lorg/apache/shiro/util/PatternMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/shiro/util/AntPathMatcher;

    invoke-direct {v0}, Lorg/apache/shiro/util/AntPathMatcher;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->pathMatcher:Lorg/apache/shiro/util/PatternMatcher;

    .line 52
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;

    invoke-direct {v0}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->filterChainManager:Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/shiro/util/AntPathMatcher;

    invoke-direct {v0}, Lorg/apache/shiro/util/AntPathMatcher;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->pathMatcher:Lorg/apache/shiro/util/PatternMatcher;

    .line 57
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;

    invoke-direct {v0, p1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilterChainManager;-><init>(Ljavax/servlet/FilterConfig;)V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->filterChainManager:Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    .line 58
    return-void
.end method


# virtual methods
.method public getChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/FilterChain;
    .locals 7
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "originalChain"    # Ljavax/servlet/FilterChain;

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->getFilterChainManager()Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    move-result-object v0

    .line 95
    .local v0, "filterChainManager":Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    invoke-interface {v0}, Lorg/apache/shiro/web/filter/mgt/FilterChainManager;->hasChains()Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v4

    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->getPathWithinApplication(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "requestURI":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/shiro/web/filter/mgt/FilterChainManager;->getChainNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "pathPattern":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->pathMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    sget-object v4, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    sget-object v4, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched path pattern ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for requestURI ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Utilizing corresponding filter chain..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 111
    :cond_3
    invoke-interface {v0, p3, v2}, Lorg/apache/shiro/web/filter/mgt/FilterChainManager;->proxy(Ljavax/servlet/FilterChain;Ljava/lang/String;)Ljavax/servlet/FilterChain;

    move-result-object v4

    goto :goto_0
.end method

.method public getFilterChainManager()Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->filterChainManager:Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    return-object v0
.end method

.method public getPathMatcher()Lorg/apache/shiro/util/PatternMatcher;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->pathMatcher:Lorg/apache/shiro/util/PatternMatcher;

    return-object v0
.end method

.method protected getPathWithinApplication(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 147
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/web/util/WebUtils;->getPathWithinApplication(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected pathMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->getPathMatcher()Lorg/apache/shiro/util/PatternMatcher;

    move-result-object v0

    .line 135
    .local v0, "pathMatcher":Lorg/apache/shiro/util/PatternMatcher;
    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/util/PatternMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setFilterChainManager(Lorg/apache/shiro/web/filter/mgt/FilterChainManager;)V
    .locals 0
    .param p1, "filterChainManager"    # Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->filterChainManager:Lorg/apache/shiro/web/filter/mgt/FilterChainManager;

    .line 91
    return-void
.end method

.method public setPathMatcher(Lorg/apache/shiro/util/PatternMatcher;)V
    .locals 0
    .param p1, "pathMatcher"    # Lorg/apache/shiro/util/PatternMatcher;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/shiro/web/filter/mgt/PathMatchingFilterChainResolver;->pathMatcher:Lorg/apache/shiro/util/PatternMatcher;

    .line 82
    return-void
.end method
