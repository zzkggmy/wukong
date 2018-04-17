.class public interface abstract Lorg/apache/shiro/aop/MethodInvocation;
.super Ljava/lang/Object;
.source "MethodInvocation.java"


# virtual methods
.method public abstract getArguments()[Ljava/lang/Object;
.end method

.method public abstract getMethod()Ljava/lang/reflect/Method;
.end method

.method public abstract getThis()Ljava/lang/Object;
.end method

.method public abstract proceed()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
