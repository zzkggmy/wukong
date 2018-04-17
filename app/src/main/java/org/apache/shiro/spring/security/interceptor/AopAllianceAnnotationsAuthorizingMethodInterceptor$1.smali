.class Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;
.super Ljava/lang/Object;
.source "AopAllianceAnnotationsAuthorizingMethodInterceptor.java"

# interfaces
.implements Lorg/apache/shiro/aop/MethodInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;->createMethodInvocation(Ljava/lang/Object;)Lorg/apache/shiro/aop/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;

.field final synthetic val$mi:Lorg/aopalliance/intercept/MethodInvocation;


# direct methods
.method constructor <init>(Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;Lorg/aopalliance/intercept/MethodInvocation;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;->this$0:Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;

    iput-object p2, p0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;->val$mi:Lorg/aopalliance/intercept/MethodInvocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;->val$mi:Lorg/aopalliance/intercept/MethodInvocation;

    invoke-interface {v0}, Lorg/aopalliance/intercept/MethodInvocation;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;->val$mi:Lorg/aopalliance/intercept/MethodInvocation;

    invoke-interface {v0}, Lorg/aopalliance/intercept/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getThis()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;->val$mi:Lorg/aopalliance/intercept/MethodInvocation;

    invoke-interface {v0}, Lorg/aopalliance/intercept/MethodInvocation;->getThis()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public proceed()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;->val$mi:Lorg/aopalliance/intercept/MethodInvocation;

    invoke-interface {v0}, Lorg/aopalliance/intercept/MethodInvocation;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method invocation ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor$1;->val$mi:Lorg/aopalliance/intercept/MethodInvocation;

    invoke-interface {v1}, Lorg/aopalliance/intercept/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
