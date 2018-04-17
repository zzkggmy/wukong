.class public abstract Lorg/apache/shiro/aop/AnnotationMethodInterceptor;
.super Lorg/apache/shiro/aop/MethodInterceptorSupport;
.source "AnnotationMethodInterceptor.java"


# instance fields
.field private handler:Lorg/apache/shiro/aop/AnnotationHandler;

.field private resolver:Lorg/apache/shiro/aop/AnnotationResolver;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/aop/AnnotationHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/shiro/aop/AnnotationHandler;

    .prologue
    .line 52
    new-instance v0, Lorg/apache/shiro/aop/DefaultAnnotationResolver;

    invoke-direct {v0}, Lorg/apache/shiro/aop/DefaultAnnotationResolver;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationHandler;Lorg/apache/shiro/aop/AnnotationResolver;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/aop/AnnotationHandler;Lorg/apache/shiro/aop/AnnotationResolver;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/shiro/aop/AnnotationHandler;
    .param p2, "resolver"    # Lorg/apache/shiro/aop/AnnotationResolver;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/shiro/aop/MethodInterceptorSupport;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AnnotationHandler argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->setHandler(Lorg/apache/shiro/aop/AnnotationHandler;)V

    .line 70
    if-eqz p2, :cond_1

    .end local p2    # "resolver":Lorg/apache/shiro/aop/AnnotationResolver;
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->setResolver(Lorg/apache/shiro/aop/AnnotationResolver;)V

    .line 71
    return-void

    .line 70
    .restart local p2    # "resolver":Lorg/apache/shiro/aop/AnnotationResolver;
    :cond_1
    new-instance p2, Lorg/apache/shiro/aop/DefaultAnnotationResolver;

    .end local p2    # "resolver":Lorg/apache/shiro/aop/AnnotationResolver;
    invoke-direct {p2}, Lorg/apache/shiro/aop/DefaultAnnotationResolver;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected getAnnotation(Lorg/apache/shiro/aop/MethodInvocation;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p1, "mi"    # Lorg/apache/shiro/aop/MethodInvocation;

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->getResolver()Lorg/apache/shiro/aop/AnnotationResolver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->getHandler()Lorg/apache/shiro/aop/AnnotationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/shiro/aop/AnnotationHandler;->getAnnotationClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/shiro/aop/AnnotationResolver;->getAnnotation(Lorg/apache/shiro/aop/MethodInvocation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/apache/shiro/aop/AnnotationHandler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->handler:Lorg/apache/shiro/aop/AnnotationHandler;

    return-object v0
.end method

.method public getResolver()Lorg/apache/shiro/aop/AnnotationResolver;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->resolver:Lorg/apache/shiro/aop/AnnotationResolver;

    return-object v0
.end method

.method public setHandler(Lorg/apache/shiro/aop/AnnotationHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/shiro/aop/AnnotationHandler;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->handler:Lorg/apache/shiro/aop/AnnotationHandler;

    .line 93
    return-void
.end method

.method public setResolver(Lorg/apache/shiro/aop/AnnotationResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/apache/shiro/aop/AnnotationResolver;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->resolver:Lorg/apache/shiro/aop/AnnotationResolver;

    .line 119
    return-void
.end method

.method public supports(Lorg/apache/shiro/aop/MethodInvocation;)Z
    .locals 1
    .param p1, "mi"    # Lorg/apache/shiro/aop/MethodInvocation;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/shiro/aop/AnnotationMethodInterceptor;->getAnnotation(Lorg/apache/shiro/aop/MethodInvocation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
