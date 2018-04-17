.class public Lorg/apache/shiro/authz/SimpleAuthorizationInfo;
.super Ljava/lang/Object;
.source "SimpleAuthorizationInfo.java"

# interfaces
.implements Lorg/apache/shiro/authz/AuthorizationInfo;


# instance fields
.field protected objectPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation
.end field

.field protected roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected stringPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    .line 61
    return-void
.end method


# virtual methods
.method public addObjectPermission(Lorg/apache/shiro/authz/Permission;)V
    .locals 1
    .param p1, "permission"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public addObjectPermissions(Ljava/util/Collection;)V
    .locals 1
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
    .line 172
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public addRoles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "roles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 97
    return-void
.end method

.method public addStringPermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addStringPermissions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 136
    return-void
.end method

.method public bridge synthetic getObjectPermissions()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->getObjectPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getObjectPermissions()Ljava/util/Set;
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
    .line 139
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic getRoles()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->getRoles()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic getStringPermissions()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->getStringPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStringPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public setObjectPermissions(Ljava/util/Set;)V
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
    .line 150
    .local p1, "objectPermissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    iput-object p1, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->objectPermissions:Ljava/util/Set;

    .line 151
    return-void
.end method

.method public setRoles(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->roles:Ljava/util/Set;

    .line 73
    return-void
.end method

.method public setStringPermissions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "stringPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->stringPermissions:Ljava/util/Set;

    .line 112
    return-void
.end method
