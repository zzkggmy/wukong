.class public Lorg/apache/shiro/web/tags/HasPermissionTag;
.super Lorg/apache/shiro/web/tags/PermissionTag;
.source "HasPermissionTag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/shiro/web/tags/PermissionTag;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected showTagBody(Ljava/lang/String;)Z
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/tags/HasPermissionTag;->isPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
