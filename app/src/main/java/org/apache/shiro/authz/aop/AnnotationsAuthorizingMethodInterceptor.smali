.class public abstract Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;
.super Lorg/apache/shiro/authz/aop/AuthorizingMethodInterceptor;
.source "AnnotationsAuthorizingMethodInterceptor.java"


# instance fields
.field protected methodInterceptors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/shiro/authz/aop/AuthorizingMethodInterceptor;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    .line 56
    iget-object v0, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    new-instance v1, Lorg/apache/shiro/authz/aop/RoleAnnotationMethodInterceptor;

    invoke-direct {v1}, Lorg/apache/shiro/authz/aop/RoleAnnotationMethodInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    new-instance v1, Lorg/apache/shiro/authz/aop/PermissionAnnotationMethodInterceptor;

    invoke-direct {v1}, Lorg/apache/shiro/authz/aop/PermissionAnnotationMethodInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    new-instance v1, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationMethodInterceptor;

    invoke-direct {v1}, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationMethodInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    new-instance v1, Lorg/apache/shiro/authz/aop/UserAnnotationMethodInterceptor;

    invoke-direct {v1}, Lorg/apache/shiro/authz/aop/UserAnnotationMethodInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    new-instance v1, Lorg/apache/shiro/authz/aop/GuestAnnotationMethodInterceptor;

    invoke-direct {v1}, Lorg/apache/shiro/authz/aop/GuestAnnotationMethodInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method


# virtual methods
.method protected assertAuthorized(Lorg/apache/shiro/aop/MethodInvocation;)V
    .locals 4
    .param p1, "methodInvocation"    # Lorg/apache/shiro/aop/MethodInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->getMethodInterceptors()Ljava/util/Collection;

    move-result-object v1

    .line 97
    .local v1, "aamis":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;

    .line 99
    .local v0, "aami":Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;
    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;->supports(Lorg/apache/shiro/aop/MethodInvocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;->assertAuthorized(Lorg/apache/shiro/aop/MethodInvocation;)V

    goto :goto_0

    .line 104
    .end local v0    # "aami":Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getMethodInterceptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    return-object v0
.end method

.method public setMethodInterceptors(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "methodInterceptors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;>;"
    iput-object p1, p0, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->methodInterceptors:Ljava/util/Collection;

    .line 84
    return-void
.end method
