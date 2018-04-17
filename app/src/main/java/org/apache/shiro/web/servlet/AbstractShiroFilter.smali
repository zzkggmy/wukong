.class public abstract Lorg/apache/shiro/web/servlet/AbstractShiroFilter;
.super Lorg/apache/shiro/web/servlet/OncePerRequestFilter;
.source "AbstractShiroFilter.java"


# static fields
.field private static final STATIC_INIT_PARAM_NAME:Ljava/lang/String; = "staticSecurityManagerEnabled"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private filterChainResolver:Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

.field private securityManager:Lorg/apache/shiro/web/mgt/WebSecurityManager;

.field private staticSecurityManagerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->staticSecurityManagerEnabled:Z

    .line 95
    return-void
.end method

.method private applyStaticSecurityManagerEnabledConfig()V
    .locals 3

    .prologue
    .line 168
    const-string v2, "staticSecurityManagerEnabled"

    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getInitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 170
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->setStaticSecurityManagerEnabled(Z)V

    .line 175
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method private ensureSecurityManager()V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v0

    .line 187
    .local v0, "securityManager":Lorg/apache/shiro/web/mgt/WebSecurityManager;
    if-nez v0, :cond_0

    .line 188
    sget-object v1, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "No SecurityManager configured.  Creating default."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->createDefaultSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->setSecurityManager(Lorg/apache/shiro/web/mgt/WebSecurityManager;)V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method protected createDefaultSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;

    invoke-direct {v0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;-><init>()V

    return-object v0
.end method

.method protected createSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/web/subject/WebSubject;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 292
    new-instance v0, Lorg/apache/shiro/web/subject/WebSubject$Builder;

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/shiro/web/subject/WebSubject$Builder;-><init>(Lorg/apache/shiro/mgt/SecurityManager;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    invoke-virtual {v0}, Lorg/apache/shiro/web/subject/WebSubject$Builder;->buildWebSubject()Lorg/apache/shiro/web/subject/WebSubject;

    move-result-object v0

    return-object v0
.end method

.method protected doFilterInternal(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 8
    .param p1, "servletRequest"    # Ljavax/servlet/ServletRequest;
    .param p2, "servletResponse"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v5, 0x0

    .line 356
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->prepareServletRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/ServletRequest;

    move-result-object v2

    .line 357
    .local v2, "request":Ljavax/servlet/ServletRequest;
    invoke-virtual {p0, v2, p2, p3}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->prepareServletResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/ServletResponse;

    move-result-object v3

    .line 359
    .local v3, "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {p0, v2, v3}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->createSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/web/subject/WebSubject;

    move-result-object v4

    .line 362
    .local v4, "subject":Lorg/apache/shiro/subject/Subject;
    new-instance v7, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;

    invoke-direct {v7, p0, v2, v3, p3}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter$1;-><init>(Lorg/apache/shiro/web/servlet/AbstractShiroFilter;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    invoke-interface {v4, v7}, Lorg/apache/shiro/subject/Subject;->execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/shiro/subject/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    .end local v2    # "request":Ljavax/servlet/ServletRequest;
    .end local v3    # "response":Ljavax/servlet/ServletResponse;
    .end local v4    # "subject":Lorg/apache/shiro/subject/Subject;
    :goto_0
    if-eqz v5, :cond_2

    .line 376
    instance-of v7, v5, Ljavax/servlet/ServletException;

    if-eqz v7, :cond_0

    .line 377
    check-cast v5, Ljavax/servlet/ServletException;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 369
    .restart local v5    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Lorg/apache/shiro/subject/ExecutionException;
    invoke-virtual {v0}, Lorg/apache/shiro/subject/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 373
    goto :goto_0

    .line 371
    .end local v0    # "ex":Lorg/apache/shiro/subject/ExecutionException;
    :catch_1
    move-exception v6

    .line 372
    .local v6, "throwable":Ljava/lang/Throwable;
    move-object v5, v6

    goto :goto_0

    .line 379
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :cond_0
    instance-of v7, v5, Ljava/io/IOException;

    if-eqz v7, :cond_1

    .line 380
    check-cast v5, Ljava/io/IOException;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 383
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v1, "Filtered request failed."

    .line 384
    .local v1, "msg":Ljava/lang/String;
    new-instance v7, Ljavax/servlet/ServletException;

    invoke-direct {v7, v1, v5}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 386
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected executeChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "origChain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getExecutionChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/FilterChain;

    move-result-object v0

    .line 449
    .local v0, "chain":Ljavax/servlet/FilterChain;
    invoke-interface {v0, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 450
    return-void
.end method

.method protected getExecutionChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/FilterChain;
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "origChain"    # Ljavax/servlet/FilterChain;

    .prologue
    .line 407
    move-object v0, p3

    .line 409
    .local v0, "chain":Ljavax/servlet/FilterChain;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getFilterChainResolver()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    move-result-object v2

    .line 410
    .local v2, "resolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    if-nez v2, :cond_0

    .line 411
    sget-object v3, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "No FilterChainResolver configured.  Returning original FilterChain."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 423
    .end local p3    # "origChain":Ljavax/servlet/FilterChain;
    :goto_0
    return-object p3

    .line 415
    .restart local p3    # "origChain":Ljavax/servlet/FilterChain;
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;->getChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/FilterChain;

    move-result-object v1

    .line 416
    .local v1, "resolved":Ljavax/servlet/FilterChain;
    if-eqz v1, :cond_1

    .line 417
    sget-object v3, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "Resolved a configured FilterChain for the current request."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 418
    move-object v0, v1

    :goto_1
    move-object p3, v0

    .line 423
    goto :goto_0

    .line 420
    :cond_1
    sget-object v3, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "No FilterChain configured for the current request.  Using the default."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFilterChainResolver()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->filterChainResolver:Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    return-object v0
.end method

.method public getSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->securityManager:Lorg/apache/shiro/web/mgt/WebSecurityManager;

    return-object v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    return-void
.end method

.method protected isHttpSessions()Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/web/mgt/WebSecurityManager;->isHttpSessionMode()Z

    move-result v0

    return v0
.end method

.method public isStaticSecurityManagerEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->staticSecurityManagerEnabled:Z

    return v0
.end method

.method protected final onFilterConfigSet()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->applyStaticSecurityManagerEnabledConfig()V

    .line 152
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->init()V

    .line 153
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->ensureSecurityManager()V

    .line 155
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->isStaticSecurityManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/SecurityUtils;->setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected prepareServletRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/ServletRequest;
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;

    .prologue
    .line 230
    move-object v1, p1

    .line 231
    .local v1, "toUse":Ljavax/servlet/ServletRequest;
    instance-of v2, p1, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 232
    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .line 233
    .local v0, "http":Ljavax/servlet/http/HttpServletRequest;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->wrapServletRequest(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 235
    .end local v0    # "http":Ljavax/servlet/http/HttpServletRequest;
    :cond_0
    return-object v1
.end method

.method protected prepareServletResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)Ljavax/servlet/ServletResponse;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;

    .prologue
    .line 272
    move-object v0, p2

    .line 273
    .local v0, "toUse":Ljavax/servlet/ServletResponse;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->isHttpSessions()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljavax/servlet/http/HttpServletResponse;

    if-eqz v1, :cond_0

    .line 277
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    check-cast p1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    invoke-virtual {p0, p2, p1}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->wrapServletResponse(Ljavax/servlet/http/HttpServletResponse;Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;)Ljavax/servlet/ServletResponse;

    move-result-object v0

    .line 279
    :cond_0
    return-object v0
.end method

.method public setFilterChainResolver(Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V
    .locals 0
    .param p1, "filterChainResolver"    # Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->filterChainResolver:Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    .line 111
    return-void
.end method

.method public setSecurityManager(Lorg/apache/shiro/web/mgt/WebSecurityManager;)V
    .locals 0
    .param p1, "sm"    # Lorg/apache/shiro/web/mgt/WebSecurityManager;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->securityManager:Lorg/apache/shiro/web/mgt/WebSecurityManager;

    .line 103
    return-void
.end method

.method public setStaticSecurityManagerEnabled(Z)V
    .locals 0
    .param p1, "staticSecurityManagerEnabled"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->staticSecurityManagerEnabled:Z

    .line 147
    return-void
.end method

.method protected updateSessionLastAccessTime(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->isHttpSessions()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v1

    .line 311
    .local v1, "subject":Lorg/apache/shiro/subject/Subject;
    if-eqz v1, :cond_0

    .line 312
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 313
    .local v0, "session":Lorg/apache/shiro/session/Session;
    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->touch()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "session":Lorg/apache/shiro/session/Session;
    .end local v1    # "subject":Lorg/apache/shiro/subject/Subject;
    :cond_0
    :goto_0
    return-void

    .line 316
    .restart local v0    # "session":Lorg/apache/shiro/session/Session;
    .restart local v1    # "subject":Lorg/apache/shiro/subject/Subject;
    :catch_0
    move-exception v2

    .line 317
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "session.touch() method invocation has failed.  Unable to updatethe corresponding session\'s last access time based on the incoming request."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected wrapServletRequest(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/ServletRequest;
    .locals 3
    .param p1, "orig"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 211
    new-instance v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->isHttpSessions()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/ServletContext;Z)V

    return-object v0
.end method

.method protected wrapServletResponse(Ljavax/servlet/http/HttpServletResponse;Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;)Ljavax/servlet/ServletResponse;
    .locals 2
    .param p1, "orig"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "request"    # Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .prologue
    .line 249
    new-instance v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;Ljavax/servlet/ServletContext;Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;)V

    return-object v0
.end method
