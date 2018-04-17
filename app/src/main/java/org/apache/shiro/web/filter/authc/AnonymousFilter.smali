.class public Lorg/apache/shiro/web/filter/authc/AnonymousFilter;
.super Lorg/apache/shiro/web/filter/PathMatchingFilter;
.source "AnonymousFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/PathMatchingFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPreHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
