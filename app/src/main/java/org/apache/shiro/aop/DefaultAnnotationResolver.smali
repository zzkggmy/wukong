.class public Lorg/apache/shiro/aop/DefaultAnnotationResolver;
.super Ljava/lang/Object;
.source "DefaultAnnotationResolver.java"

# interfaces
.implements Lorg/apache/shiro/aop/AnnotationResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotation(Lorg/apache/shiro/aop/MethodInvocation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
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
    .line 52
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    .line 53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "method argument cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    .local v1, "m":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lorg/apache/shiro/aop/MethodInvocation;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parameter incorrectly constructed.  getMethod() returned null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 62
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->getThis()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    return-object v0
.end method
