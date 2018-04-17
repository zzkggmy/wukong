.class public Lorg/apache/shiro/web/env/DefaultWebEnvironment;
.super Lorg/apache/shiro/env/DefaultEnvironment;
.source "DefaultWebEnvironment.java"

# interfaces
.implements Lorg/apache/shiro/web/env/MutableWebEnvironment;


# static fields
.field private static final DEFAULT_FILTER_CHAIN_RESOLVER_NAME:Ljava/lang/String; = "filterChainResolver"


# instance fields
.field private servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/shiro/env/DefaultEnvironment;-><init>()V

    .line 42
    return-void
.end method

.method private assertWebSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 3
    .param p1, "sm"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 74
    instance-of v1, p1, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityManager instance must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getFilterChainResolver()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    .locals 2

    .prologue
    .line 45
    const-string v0, "filterChainResolver"

    const-class v1, Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/web/env/DefaultWebEnvironment;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    return-object v0
.end method

.method public getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/DefaultWebEnvironment;->getWebSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v0

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/shiro/web/env/DefaultWebEnvironment;->servletContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getWebSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lorg/apache/shiro/env/DefaultEnvironment;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    .line 65
    .local v0, "sm":Lorg/apache/shiro/mgt/SecurityManager;
    invoke-direct {p0, v0}, Lorg/apache/shiro/web/env/DefaultWebEnvironment;->assertWebSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 66
    check-cast v0, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    .end local v0    # "sm":Lorg/apache/shiro/mgt/SecurityManager;
    return-object v0
.end method

.method public setFilterChainResolver(Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V
    .locals 1
    .param p1, "filterChainResolver"    # Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    .prologue
    .line 49
    const-string v0, "filterChainResolver"

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/env/DefaultWebEnvironment;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 0
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/env/DefaultWebEnvironment;->assertWebSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 60
    invoke-super {p0, p1}, Lorg/apache/shiro/env/DefaultEnvironment;->setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 61
    return-void
.end method

.method public setServletContext(Ljavax/servlet/ServletContext;)V
    .locals 0
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/shiro/web/env/DefaultWebEnvironment;->servletContext:Ljavax/servlet/ServletContext;

    .line 86
    return-void
.end method

.method public setWebSecurityManager(Lorg/apache/shiro/web/mgt/WebSecurityManager;)V
    .locals 0
    .param p1, "wsm"    # Lorg/apache/shiro/web/mgt/WebSecurityManager;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lorg/apache/shiro/env/DefaultEnvironment;->setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 71
    return-void
.end method
