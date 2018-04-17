.class public Lorg/apache/shiro/authc/SimpleAccount;
.super Ljava/lang/Object;
.source "SimpleAccount.java"

# interfaces
.implements Lorg/apache/shiro/authc/Account;
.implements Lorg/apache/shiro/authc/MergableAuthenticationInfo;
.implements Lorg/apache/shiro/authc/SaltedAuthenticationInfo;
.implements Ljava/io/Serializable;


# instance fields
.field private authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

.field private authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

.field private credentialsExpired:Z

.field private locked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "credentials"    # Ljava/lang/Object;
    .param p3, "realmName"    # Ljava/lang/String;

    .prologue
    .line 84
    instance-of v0, p1, Lorg/apache/shiro/subject/PrincipalCollection;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/shiro/subject/PrincipalCollection;

    .end local p1    # "principal":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/authc/SimpleAccount;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V

    .line 85
    return-void

    .line 84
    .restart local p1    # "principal":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v0, p1, p3}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "credentials"    # Ljava/lang/Object;
    .param p3, "realmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p4, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    new-instance v1, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v1, p1, p3}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    .line 167
    new-instance v0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v0, p4}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    .line 168
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p5}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->setObjectPermissions(Ljava/util/Set;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/shiro/util/ByteSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "hashedCredentials"    # Ljava/lang/Object;
    .param p3, "credentialsSalt"    # Lorg/apache/shiro/util/ByteSource;
    .param p4, "realmName"    # Ljava/lang/String;

    .prologue
    .line 99
    instance-of v0, p1, Lorg/apache/shiro/subject/PrincipalCollection;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/shiro/subject/PrincipalCollection;

    .end local p1    # "principal":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/shiro/authc/SimpleAccount;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;Lorg/apache/shiro/util/ByteSource;)V

    .line 101
    return-void

    .line 99
    .restart local p1    # "principal":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v0, p1, p4}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "principals"    # Ljava/util/Collection;
    .param p2, "credentials"    # Ljava/lang/Object;
    .param p3, "realmName"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v0, p1, p3}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/shiro/authc/SimpleAccount;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p1, "principals"    # Ljava/util/Collection;
    .param p2, "credentials"    # Ljava/lang/Object;
    .param p3, "realmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p4, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    new-instance v1, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v1, p1, p3}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    .line 184
    new-instance v0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v0, p4}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    .line 185
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p5}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->setObjectPermissions(Ljava/util/Set;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-direct {v0, p1, p2}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    .line 124
    new-instance v0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "credentials"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p3, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-direct {v0, p1, p2}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    .line 152
    new-instance v0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v0, p3}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    .line 153
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "credentials"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p3, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-direct {v0, p1, p2}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    .line 200
    new-instance v0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v0, p3}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    .line 201
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p4}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->setObjectPermissions(Ljava/util/Set;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;Lorg/apache/shiro/util/ByteSource;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "hashedCredentials"    # Ljava/lang/Object;
    .param p3, "credentialsSalt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;Lorg/apache/shiro/util/ByteSource;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    .line 139
    new-instance v0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    .line 140
    return-void
.end method


# virtual methods
.method public addObjectPermission(Lorg/apache/shiro/authz/Permission;)V
    .locals 1
    .param p1, "permission"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->addObjectPermission(Lorg/apache/shiro/authz/Permission;)V

    .line 378
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
    .line 386
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authz/Permission;>;"
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->addObjectPermissions(Ljava/util/Collection;)V

    .line 387
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->addRole(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public addRole(Ljava/util/Collection;)V
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
    .line 311
    .local p1, "roles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->addRoles(Ljava/util/Collection;)V

    .line 312
    return-void
.end method

.method public addStringPermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->addStringPermission(Ljava/lang/String;)V

    .line 342
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
    .line 350
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->addStringPermissions(Ljava/util/Collection;)V

    .line 351
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    if-ne p1, p0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    .line 476
    :cond_1
    instance-of v3, p1, Lorg/apache/shiro/authc/SimpleAccount;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 477
    check-cast v0, Lorg/apache/shiro/authc/SimpleAccount;

    .line 479
    .local v0, "sa":Lorg/apache/shiro/authc/SimpleAccount;
    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "sa":Lorg/apache/shiro/authc/SimpleAccount;
    :cond_3
    move v1, v2

    .line 481
    goto :goto_0
.end method

.method public getCredentials()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialsSalt()Lorg/apache/shiro/util/ByteSource;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->getCredentialsSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public getObjectPermissions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->getObjectPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->getRoles()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStringPermissions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->getStringPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCredentialsExpired()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->credentialsExpired:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->locked:Z

    return v0
.end method

.method public merge(Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v1, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v1, p1}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->merge(Lorg/apache/shiro/authc/AuthenticationInfo;)V

    .line 442
    instance-of v1, p1, Lorg/apache/shiro/authc/SimpleAccount;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 443
    check-cast v0, Lorg/apache/shiro/authc/SimpleAccount;

    .line 444
    .local v0, "otherAccount":Lorg/apache/shiro/authc/SimpleAccount;
    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAccount;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0, v2}, Lorg/apache/shiro/authc/SimpleAccount;->setLocked(Z)V

    .line 448
    :cond_0
    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAccount;->isCredentialsExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0, v2}, Lorg/apache/shiro/authc/SimpleAccount;->setCredentialsExpired(Z)V

    .line 452
    .end local v0    # "otherAccount":Lorg/apache/shiro/authc/SimpleAccount;
    :cond_1
    return-void
.end method

.method public setCredentials(Ljava/lang/Object;)V
    .locals 1
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->setCredentials(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public setCredentialsExpired(Z)V
    .locals 0
    .param p1, "credentialsExpired"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lorg/apache/shiro/authc/SimpleAccount;->credentialsExpired:Z

    .line 426
    return-void
.end method

.method public setCredentialsSalt(Lorg/apache/shiro/util/ByteSource;)V
    .locals 1
    .param p1, "salt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->setCredentialsSalt(Lorg/apache/shiro/util/ByteSource;)V

    .line 273
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lorg/apache/shiro/authc/SimpleAccount;->locked:Z

    .line 405
    return-void
.end method

.method public setObjectPermissions(Ljava/util/Set;)V
    .locals 1
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
    .line 368
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->setObjectPermissions(Ljava/util/Set;)V

    .line 369
    return-void
.end method

.method public setPrincipals(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authcInfo:Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->setPrincipals(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 227
    return-void
.end method

.method public setRoles(Ljava/util/Set;)V
    .locals 1
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
    .line 291
    .local p1, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->setRoles(Ljava/util/Set;)V

    .line 292
    return-void
.end method

.method public setStringPermissions(Ljava/util/Set;)V
    .locals 1
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
    .line 332
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAccount;->authzInfo:Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->setStringPermissions(Ljava/util/Set;)V

    .line 333
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "empty"

    goto :goto_0
.end method
