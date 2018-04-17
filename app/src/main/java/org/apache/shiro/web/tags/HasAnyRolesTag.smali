.class public Lorg/apache/shiro/web/tags/HasAnyRolesTag;
.super Lorg/apache/shiro/web/tags/RoleTag;
.source "HasAnyRolesTag.java"


# static fields
.field private static final ROLE_NAMES_DELIMETER:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/shiro/web/tags/RoleTag;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method protected showTagBody(Ljava/lang/String;)Z
    .locals 7
    .param p1, "roleNames"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "hasAnyRole":Z
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/HasAnyRolesTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v5

    .line 44
    .local v5, "subject":Lorg/apache/shiro/subject/Subject;
    if-eqz v5, :cond_0

    .line 47
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 49
    .local v4, "role":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/shiro/subject/Subject;->hasRole(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    const/4 v1, 0x1

    .line 58
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "role":Ljava/lang/String;
    :cond_0
    return v1

    .line 47
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "role":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
