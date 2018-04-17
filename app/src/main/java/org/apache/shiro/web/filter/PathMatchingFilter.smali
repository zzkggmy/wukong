.class public abstract Lorg/apache/shiro/web/filter/PathMatchingFilter;
.super Lorg/apache/shiro/web/servlet/AdviceFilter;
.source "PathMatchingFilter.java"

# interfaces
.implements Lorg/apache/shiro/web/filter/PathConfigProcessor;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected appliedPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected pathMatcher:Lorg/apache/shiro/util/PatternMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/shiro/web/filter/PathMatchingFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AdviceFilter;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/shiro/util/AntPathMatcher;

    invoke-direct {v0}, Lorg/apache/shiro/util/AntPathMatcher;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->pathMatcher:Lorg/apache/shiro/util/PatternMatcher;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->appliedPaths:Ljava/util/Map;

    return-void
.end method

.method private isFilterChainContinued(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "pathConfig"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->isEnabled(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    sget-object v1, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "Filter \'{}\' is enabled for the current request under path \'{}\' with config [{}].  Delegating to subclass implementation for \'onPreHandle\' check."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p3, v3, v0

    aput-object p4, v3, v6

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->onPreHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z

    move-result v0

    .line 214
    :cond_1
    :goto_0
    return v0

    .line 206
    :cond_2
    sget-object v1, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    sget-object v1, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "Filter \'{}\' is disabled for the current request under path \'{}\' with config [{}].  The next element in the FilterChain will be called immediately."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p3, v3, v0

    aput-object p4, v3, v6

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getPathWithinApplication(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 103
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/web/util/WebUtils;->getPathWithinApplication(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEnabled(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->isEnabled(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    return v0
.end method

.method protected onPreHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method protected pathsMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->pathMatcher:Lorg/apache/shiro/util/PatternMatcher;

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/util/PatternMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected pathsMatch(Ljava/lang/String;Ljavax/servlet/ServletRequest;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 122
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->getPathWithinApplication(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "requestURI":Ljava/lang/String;
    sget-object v1, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "Attempting to match pattern \'{}\' with current requestURI \'{}\'..."

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->pathsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected preHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 6
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v4, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->appliedPaths:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->appliedPaths:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    :cond_0
    sget-object v4, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    sget-object v4, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    const-string v5, "appliedPaths property is null or empty.  This Filter will passthrough immediately."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 183
    :cond_1
    :goto_0
    return v3

    .line 172
    :cond_2
    iget-object v4, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->appliedPaths:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->pathsMatch(Ljava/lang/String;Ljavax/servlet/ServletRequest;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    sget-object v3, Lorg/apache/shiro/web/filter/PathMatchingFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "Current requestURI matches pattern \'{}\'.  Determining filter chain execution..."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v3, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->appliedPaths:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "config":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/apache/shiro/web/filter/PathMatchingFilter;->isFilterChainContinued(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public processPathConfig(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/Filter;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 85
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/apache/shiro/web/filter/PathMatchingFilter;->appliedPaths:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object p0
.end method
