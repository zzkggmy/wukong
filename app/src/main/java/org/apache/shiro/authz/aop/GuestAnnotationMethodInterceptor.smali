.class public Lorg/apache/shiro/authz/aop/GuestAnnotationMethodInterceptor;
.super Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;
.source "GuestAnnotationMethodInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/apache/shiro/authz/aop/GuestAnnotationHandler;

    invoke-direct {v0}, Lorg/apache/shiro/authz/aop/GuestAnnotationHandler;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/aop/AnnotationResolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/apache/shiro/aop/AnnotationResolver;

    .prologue
    .line 48
    new-instance v0, Lorg/apache/shiro/authz/aop/GuestAnnotationHandler;

    invoke-direct {v0}, Lorg/apache/shiro/authz/aop/GuestAnnotationHandler;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;Lorg/apache/shiro/aop/AnnotationResolver;)V

    .line 49
    return-void
.end method
