.class final Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean$SpringShiroFilter;
.super Lorg/apache/shiro/web/servlet/AbstractShiroFilter;
.source "ShiroFilterFactoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpringShiroFilter"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/shiro/web/mgt/WebSecurityManager;Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V
    .locals 2
    .param p1, "webSecurityManager"    # Lorg/apache/shiro/web/mgt/WebSecurityManager;
    .param p2, "resolver"    # Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    .prologue
    .line 531
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;-><init>()V

    .line 532
    if-nez p1, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WebSecurityManager property cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean$SpringShiroFilter;->setSecurityManager(Lorg/apache/shiro/web/mgt/WebSecurityManager;)V

    .line 536
    if-eqz p2, :cond_1

    .line 537
    invoke-virtual {p0, p2}, Lorg/apache/shiro/spring/web/ShiroFilterFactoryBean$SpringShiroFilter;->setFilterChainResolver(Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V

    .line 539
    :cond_1
    return-void
.end method
