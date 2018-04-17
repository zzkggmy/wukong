.class public abstract Lorg/apache/shiro/aop/MethodInterceptorSupport;
.super Ljava/lang/Object;
.source "MethodInterceptorSupport.java"

# interfaces
.implements Lorg/apache/shiro/aop/MethodInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method
