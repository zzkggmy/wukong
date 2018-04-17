.class public Lorg/apache/shiro/authz/SimpleRole;
.super Ljava/lang/Object;
.source "SimpleRole.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected name:Ljava/lang/String;

.field protected permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleRole;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleRole;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authz/SimpleRole;->setName(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleRole;->name:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authz/SimpleRole;->setName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p2}, Lorg/apache/shiro/authz/SimpleRole;->setPermissions(Ljava/util/Set;)V

    .line 47
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/shiro/authz/Permission;)V
    .locals 1
    .param p1, "permission"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getPermissions()Ljava/util/Set;

    move-result-object v0

    .line 67
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    .restart local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/SimpleRole;->setPermissions(Ljava/util/Set;)V

    .line 71
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getPermissions()Ljava/util/Set;

    move-result-object v0

    .line 77
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 79
    .restart local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {p0, v0}, Lorg/apache/shiro/authz/SimpleRole;->setPermissions(Ljava/util/Set;)V

    .line 81
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-ne p1, p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    instance-of v3, p1, Lorg/apache/shiro/authz/SimpleRole;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 106
    check-cast v0, Lorg/apache/shiro/authz/SimpleRole;

    .line 108
    .local v0, "sr":Lorg/apache/shiro/authz/SimpleRole;
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "sr":Lorg/apache/shiro/authz/SimpleRole;
    :cond_3
    move v1, v2

    .line 110
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleRole;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleRole;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermitted(Lorg/apache/shiro/authz/Permission;)Z
    .locals 4
    .param p1, "p"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 87
    .local v2, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/Permission;

    .line 89
    .local v1, "perm":Lorg/apache/shiro/authz/Permission;
    invoke-interface {v1, p1}, Lorg/apache/shiro/authz/Permission;->implies(Lorg/apache/shiro/authz/Permission;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v3, 0x1

    .line 94
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "perm":Lorg/apache/shiro/authz/Permission;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/apache/shiro/authz/SimpleRole;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPermissions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    iput-object p1, p0, Lorg/apache/shiro/authz/SimpleRole;->permissions:Ljava/util/Set;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
