.class public interface abstract Lorg/apache/shiro/web/env/WebEnvironment;
.super Ljava/lang/Object;
.source "WebEnvironment.java"

# interfaces
.implements Lorg/apache/shiro/env/Environment;


# virtual methods
.method public abstract getFilterChainResolver()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
.end method

.method public abstract getServletContext()Ljavax/servlet/ServletContext;
.end method

.method public abstract getWebSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;
.end method
