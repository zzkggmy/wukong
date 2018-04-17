.class public Lorg/apache/shiro/web/tags/LacksRoleTag;
.super Lorg/apache/shiro/web/tags/RoleTag;
.source "LacksRoleTag.java"


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
    .locals 4
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/LacksRoleTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/LacksRoleTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/shiro/subject/Subject;->hasRole(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 33
    .local v0, "hasRole":Z
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "hasRole":Z
    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    .restart local v0    # "hasRole":Z
    :cond_1
    move v1, v2

    .line 33
    goto :goto_1
.end method
