.class public abstract Lorg/apache/shiro/authz/aop/AuthorizingMethodInterceptor;
.super Lorg/apache/shiro/aop/MethodInterceptorSupport;
.source "AuthorizingMethodInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/shiro/aop/MethodInterceptorSupport;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract assertAuthorized(Lorg/apache/shiro/aop/MethodInvocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
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
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authz/aop/AuthorizingMethodInterceptor;->assertAuthorized(Lorg/apache/shiro/aop/MethodInvocation;)V

    .line 39
    invoke-interface {p1}, Lorg/apache/shiro/aop/MethodInvocation;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
