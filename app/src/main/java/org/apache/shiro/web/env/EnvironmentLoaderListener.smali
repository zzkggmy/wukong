.class public Lorg/apache/shiro/web/env/EnvironmentLoaderListener;
.super Lorg/apache/shiro/web/env/EnvironmentLoader;
.source "EnvironmentLoaderListener.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/shiro/web/env/EnvironmentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 1
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 68
    invoke-virtual {p1}, Ljavax/servlet/ServletContextEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/env/EnvironmentLoaderListener;->destroyEnvironment(Ljavax/servlet/ServletContext;)V

    .line 69
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 1
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 58
    invoke-virtual {p1}, Ljavax/servlet/ServletContextEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/env/EnvironmentLoaderListener;->initEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;

    .line 59
    return-void
.end method
