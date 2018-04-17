.class public Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationMethodInterceptor;
.super Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;
.source "AuthenticatedAnnotationMethodInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationHandler;

    invoke-direct {v0}, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationHandler;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/aop/AnnotationResolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/apache/shiro/aop/AnnotationResolver;

    .prologue
    .line 47
    new-instance v0, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationHandler;

    invoke-direct {v0}, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationHandler;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;Lorg/apache/shiro/aop/AnnotationResolver;)V

    .line 48
    return-void
.end method
