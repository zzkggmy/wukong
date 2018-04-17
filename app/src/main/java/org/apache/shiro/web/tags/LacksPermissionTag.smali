.class public Lorg/apache/shiro/web/tags/LacksPermissionTag;
.super Lorg/apache/shiro/web/tags/PermissionTag;
.source "LacksPermissionTag.java"


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
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/tags/LacksPermissionTag;->isPermitted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
