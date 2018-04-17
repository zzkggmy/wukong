.class public Lorg/apache/shiro/web/tags/HasRoleTag;
.super Lorg/apache/shiro/web/tags/RoleTag;
.source "HasRoleTag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/shiro/web/tags/RoleTag;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected showTagBody(Ljava/lang/String;)Z
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/HasRoleTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/HasRoleTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/Subject;->hasRole(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
