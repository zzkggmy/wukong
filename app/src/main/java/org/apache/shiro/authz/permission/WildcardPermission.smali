.class public Lorg/apache/shiro/authz/permission/WildcardPermission;
.super Ljava/lang/Object;
.source "WildcardPermission.java"

# interfaces
.implements Lorg/apache/shiro/authz/Permission;
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_CASE_SENSITIVE:Z = false

.field protected static final PART_DIVIDER_TOKEN:Ljava/lang/String; = ":"

.field protected static final SUBPART_DIVIDER_TOKEN:Ljava/lang/String; = ","

.field protected static final WILDCARD_TOKEN:Ljava/lang/String; = "*"


# instance fields
.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "wildcardString"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/shiro/authz/permission/WildcardPermission;-><init>(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "wildcardString"    # Ljava/lang/String;
    .param p2, "caseSensitive"    # Z

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/authz/permission/WildcardPermission;->setParts(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method private lowercase(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "subparts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 177
    .local v1, "lowerCasedSubparts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "subpart":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v2    # "subpart":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 242
    instance-of v1, p1, Lorg/apache/shiro/authz/permission/WildcardPermission;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lorg/apache/shiro/authz/permission/WildcardPermission;

    .line 244
    .local v0, "wp":Lorg/apache/shiro/authz/permission/WildcardPermission;
    iget-object v1, p0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 246
    .end local v0    # "wp":Lorg/apache/shiro/authz/permission/WildcardPermission;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public implies(Lorg/apache/shiro/authz/Permission;)Z
    .locals 9
    .param p1, "p"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    instance-of v8, p1, Lorg/apache/shiro/authz/permission/WildcardPermission;

    if-nez v8, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v5, p1

    .line 200
    check-cast v5, Lorg/apache/shiro/authz/permission/WildcardPermission;

    .line 202
    .local v5, "wp":Lorg/apache/shiro/authz/permission/WildcardPermission;
    invoke-virtual {v5}, Lorg/apache/shiro/authz/permission/WildcardPermission;->getParts()Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, "otherParts":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 205
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 208
    .local v2, "otherPart":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;->getParts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v8, v0, :cond_2

    move v6, v7

    .line 209
    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;->getParts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 212
    .local v4, "part":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "*"

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v4, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 215
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 216
    goto :goto_1

    .line 220
    .end local v2    # "otherPart":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .end local v4    # "part":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;->getParts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 221
    invoke-virtual {p0}, Lorg/apache/shiro/authz/permission/WildcardPermission;->getParts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 222
    .restart local v4    # "part":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "*"

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    .end local v4    # "part":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    move v6, v7

    .line 227
    goto :goto_0
.end method

.method protected setParts(Ljava/lang/String;)V
    .locals 1
    .param p1, "wildcardString"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/authz/permission/WildcardPermission;->setParts(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method protected setParts(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "wildcardString"    # Ljava/lang/String;
    .param p2, "caseSensitive"    # Z

    .prologue
    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 151
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Wildcard string cannot be null or empty. Make sure permission strings are properly formatted."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 156
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/shiro/util/CollectionUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, "part":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/shiro/util/CollectionUtils;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 161
    .local v3, "subparts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_2

    .line 162
    invoke-direct {p0, v3}, Lorg/apache/shiro/authz/permission/WildcardPermission;->lowercase(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 164
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Wildcard string cannot contain parts with only dividers. Make sure permission strings are properly formatted."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_3
    iget-object v4, p0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v1    # "part":Ljava/lang/String;
    .end local v3    # "subparts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    iget-object v4, p0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 171
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Wildcard string cannot contain only dividers. Make sure permission strings are properly formatted."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/shiro/authz/permission/WildcardPermission;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 233
    .local v2, "part":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 234
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    .end local v2    # "part":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
