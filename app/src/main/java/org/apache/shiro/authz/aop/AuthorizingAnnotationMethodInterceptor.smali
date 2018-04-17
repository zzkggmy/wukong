.class public abstract Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;
.super Lorg/apache/shiro/aop/AnnotationMethodInterceptor;
.source "AuthorizingAnnotationMethodInterceptor.java"


# direct methods
.method public constructor <init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationHandler;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;Lorg/apache/shiro/aop/AnnotationResolver;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;
    .param p2, "resolver"    # Lorg/apache/shiro/aop/AnnotationResolver;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationHandler;Lorg/apache/shiro/aop/AnnotationResolver;)V

    .line 55
    return-void
.end method


# virtual methods
.method public assertAuthorized(Lorg/apache/shiro/aop/MethodInvocation;)V
    .locals 4
    .param p1, "mi"    # Lorg/apache/shiro/aop/MethodInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;->getHandler()Lorg/apache/shiro/aop/AnnotationHandler;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;

    invoke-virtual {p0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;->getAnnotation(Lorg/apache/shiro/aop/MethodInvocation;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationHandler;->assertAuthorized(Ljava/lang/annotation/Annotation;)V
    :try_end_0
    .catch Lorg/apache/shiro/authz/AuthorizationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ae":Lorg/apache/shiro/authz/AuthorizationException;
    invoke-virtual {v0}, Lorg/apache/shiro/authz/AuthorizationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/shiro/authz/AuthorizationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not authorized to invoke method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/shiro/authz/AuthorizationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/shiro/authz/AuthorizationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 91
    :cond_0
    throw v0
.end method

.method public invoke(Lorg/apache/shiro/aop/MethodInvocation;)Ljava/lang/Object;
    .locals 1
    .param p1, "methodInvocation"    # Lorg/apache/shiro/aop/MethodInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;->assertAuthorized(Lorg/apache/shiro/aop/MethodInvocation;)V

    .line 68
    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
