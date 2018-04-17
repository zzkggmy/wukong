.class public abstract Lorg/apache/shiro/web/servlet/AbstractFilter;
.super Lorg/apache/shiro/web/servlet/ServletContextSupport;
.source "AbstractFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# static fields
.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field protected filterConfig:Ljavax/servlet/FilterConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/shiro/web/servlet/AbstractFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/AbstractFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/ServletContextSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/AbstractFilter;->filterConfig:Ljavax/servlet/FilterConfig;

    return-object v0
.end method

.method protected getInitParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractFilter;->getFilterConfig()Ljavax/servlet/FilterConfig;

    move-result-object v0

    .line 81
    .local v0, "config":Ljavax/servlet/FilterConfig;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final init(Ljavax/servlet/FilterConfig;)V
    .locals 4
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/AbstractFilter;->setFilterConfig(Ljavax/servlet/FilterConfig;)V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/AbstractFilter;->onFilterConfigSet()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/servlet/ServletException;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Ljavax/servlet/ServletException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 102
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lorg/apache/shiro/web/servlet/AbstractFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    sget-object v1, Lorg/apache/shiro/web/servlet/AbstractFilter;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start Filter: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_1
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onFilterConfigSet()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    return-void
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/AbstractFilter;->filterConfig:Ljavax/servlet/FilterConfig;

    .line 68
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/AbstractFilter;->setServletContext(Ljavax/servlet/ServletContext;)V

    .line 69
    return-void
.end method
