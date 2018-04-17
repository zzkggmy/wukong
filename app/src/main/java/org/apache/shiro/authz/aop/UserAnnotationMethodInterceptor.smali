.class public Lorg/apache/shiro/authz/aop/UserAnnotationMethodInterceptor;
.super Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;
.source "UserAnnotationMethodInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/apache/shiro/authz/aop/UserAnnotationHandler;

    invoke-direct {v0}, Lorg/apache/shiro/authz/aop/UserAnnotationHandler;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/aop/AnnotationResolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/apache/shiro/aop/AnnotationResolver;

    .prologue
    .line 51
    new-instance v0, Lorg/apache/shiro/authz/aop/UserAnnotationHandler;

    invoke-direct {v0}, Lorg/apache/shiro/authz/aop/UserAnnotationHandler;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;Lorg/apache/shiro/aop/AnnotationResolver;)V

    .line 52
    return-void
.end method
