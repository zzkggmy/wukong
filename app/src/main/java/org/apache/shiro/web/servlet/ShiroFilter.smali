.class public Lorg/apache/shiro/web/servlet/ShiroFilter;
.super Lorg/apache/shiro/web/servlet/AbstractShiroFilter;
.source "ShiroFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroFilter;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/shiro/web/util/WebUtils;->getRequiredWebEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;

    move-result-object v0

    .line 75
    .local v0, "env":Lorg/apache/shiro/web/env/WebEnvironment;
    invoke-interface {v0}, Lorg/apache/shiro/web/env/WebEnvironment;->getWebSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/ShiroFilter;->setSecurityManager(Lorg/apache/shiro/web/mgt/WebSecurityManager;)V

    .line 77
    invoke-interface {v0}, Lorg/apache/shiro/web/env/WebEnvironment;->getFilterChainResolver()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    move-result-object v1

    .line 78
    .local v1, "resolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/servlet/ShiroFilter;->setFilterChainResolver(Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V

    .line 81
    :cond_0
    return-void
.end method
