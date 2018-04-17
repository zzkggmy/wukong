.class public Lorg/apache/shiro/spring/aop/SpringAnnotationResolver;
.super Ljava/lang/Object;
.source "SpringAnnotationResolver.java"

# interfaces
.implements Lorg/apache/shiro/aop/AnnotationResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotation(Lorg/apache/shiro/aop/MethodInvocation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .param p1, "mi"    # Lorg/apache/shiro/aop/MethodInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/aop/MethodInvocation;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 42
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-static {v1, p2}, Lorg/springframework/core/annotation/AnnotationUtils;->findAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 43
    .local v0, "a":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 55
    :goto_0
    return-object v3

    .line 50
    :cond_0
    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->getThis()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 51
    .local v2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v2}, Lorg/springframework/util/ClassUtils;->getMostSpecificMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 52
    invoke-static {v1, p2}, Lorg/springframework/core/annotation/AnnotationUtils;->findAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    move-object v3, v0

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->getThis()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/springframework/core/annotation/AnnotationUtils;->findAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    goto :goto_0
.end method
