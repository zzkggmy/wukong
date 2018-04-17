.class public Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;
.super Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;
.source "AopAllianceAnnotationsAuthorizingMethodInterceptor.java"

# interfaces
.implements Lorg/aopalliance/intercept/MethodInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/authz/aop/AuthorizingAnnotationMethodInterceptor;>;"
    new-instance v1, Lorg/apache/shiro/spring/aop/SpringAnnotationResolver;

    invoke-direct {v1}, Lorg/apache/shiro/spring/aop/SpringAnnotationResolver;-><init>()V

    .line 48
    .local v1, "resolver":Lorg/apache/shiro/aop/AnnotationResolver;
    new-instance v2, Lorg/apache/shiro/authz/aop/RoleAnnotationMethodInterceptor;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authz/aop/RoleAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationResolver;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v2, Lorg/apache/shiro/authz/aop/PermissionAnnotationMethodInterceptor;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authz/aop/PermissionAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationResolver;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationMethodInterceptor;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authz/aop/AuthenticatedAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationResolver;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lorg/apache/shiro/authz/aop/UserAnnotationMethodInterceptor;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authz/aop/UserAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationResolver;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lorg/apache/shiro/authz/aop/GuestAnnotationMethodInterceptor;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authz/aop/GuestAnnotationMethodInterceptor;-><init>(Lorg/apache/shiro/aop/AnnotationResolver;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0, v0}, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;->setMethodInterceptors(Ljava/util/Collection;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected continueInvocation(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "aopAllianceMethodInvocation"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Lorg/aopalliance/intercept/MethodInvocation;

    .line 102
    .local v0, "mi":Lorg/aopalliance/intercept/MethodInvocation;
    invoke-interface {v0}, Lorg/aopalliance/intercept/MethodInvocation;->proceed()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected createMethodInvocation(Ljava/lang/Object;)Lorg/apache/shiro/aop/MethodInvocation;
    .locals 2
    .param p1, "implSpecificMethodInvocation"    # Ljava/lang/Object;

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Lorg/aopalliance/intercept/MethodInvocation;

    .line 68
    .local v0, "mi":Lorg/aopalliance/intercept/MethodInvocation;
    new-instance v1, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;-><init>(Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;Lorg/aopalliance/intercept/MethodInvocation;)V

    return-object v1
.end method

.method public invoke(Lorg/aopalliance/intercept/MethodInvocation;)Ljava/lang/Object;
    .locals 2
    .param p1, "methodInvocation"    # Lorg/aopalliance/intercept/MethodInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;->createMethodInvocation(Ljava/lang/Object;)Lorg/apache/shiro/aop/MethodInvocation;

    move-result-object v0

    .line 115
    .local v0, "mi":Lorg/apache/shiro/aop/MethodInvocation;
    invoke-super {p0, v0}, Lorg/apache/shiro/authz/aop/AnnotationsAuthorizingMethodInterceptor;->invoke(Lorg/apache/shiro/aop/MethodInvocation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
