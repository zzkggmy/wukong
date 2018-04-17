.class public Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
.super Ljava/lang/Object;
.source "SimpleAuthenticationInfo.java"

# interfaces
.implements Lorg/apache/shiro/authc/MergableAuthenticationInfo;
.implements Lorg/apache/shiro/authc/SaltedAuthenticationInfo;


# instance fields
.field protected credentials:Ljava/lang/Object;

.field protected credentialsSalt:Lorg/apache/shiro/util/ByteSource;

.field protected principals:Lorg/apache/shiro/subject/PrincipalCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "credentials"    # Ljava/lang/Object;
    .param p3, "realmName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v0, p1, p3}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 75
    iput-object p2, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentials:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/shiro/util/ByteSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "hashedCredentials"    # Ljava/lang/Object;
    .param p3, "credentialsSalt"    # Lorg/apache/shiro/util/ByteSource;
    .param p4, "realmName"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v0, p1, p4}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 94
    iput-object p2, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentials:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentialsSalt:Lorg/apache/shiro/util/ByteSource;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v0, p1}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 107
    iput-object p2, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentials:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;Ljava/lang/Object;Lorg/apache/shiro/util/ByteSource;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "hashedCredentials"    # Ljava/lang/Object;
    .param p3, "credentialsSalt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    invoke-direct {v0, p1}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;)V

    iput-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 122
    iput-object p2, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentials:Ljava/lang/Object;

    .line 123
    iput-object p3, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentialsSalt:Lorg/apache/shiro/util/ByteSource;

    .line 124
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    if-ne p0, p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    instance-of v3, p1, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 256
    check-cast v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    .line 259
    .local v0, "that":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    iget-object v3, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    iget-object v4, v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getCredentials()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentials:Ljava/lang/Object;

    return-object v0
.end method

.method public getCredentialsSalt()Lorg/apache/shiro/util/ByteSource;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentialsSalt:Lorg/apache/shiro/util/ByteSource;

    return-object v0
.end method

.method public getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 6
    .param p1, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/shiro/subject/PrincipalCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v4, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    if-nez v4, :cond_3

    .line 199
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 213
    :goto_1
    iget-object v4, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentialsSalt:Lorg/apache/shiro/util/ByteSource;

    if-nez v4, :cond_2

    instance-of v4, p1, Lorg/apache/shiro/authc/SaltedAuthenticationInfo;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 214
    check-cast v4, Lorg/apache/shiro/authc/SaltedAuthenticationInfo;

    invoke-interface {v4}, Lorg/apache/shiro/authc/SaltedAuthenticationInfo;->getCredentialsSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentialsSalt:Lorg/apache/shiro/util/ByteSource;

    .line 217
    :cond_2
    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->getCredentials()Ljava/lang/Object;

    move-result-object v3

    .line 218
    .local v3, "thisCredentials":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getCredentials()Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "otherCredentials":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 224
    if-nez v3, :cond_5

    .line 225
    iput-object v2, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentials:Ljava/lang/Object;

    goto :goto_0

    .line 201
    .end local v2    # "otherCredentials":Ljava/lang/Object;
    .end local v3    # "thisCredentials":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    instance-of v4, v4, Lorg/apache/shiro/subject/MutablePrincipalCollection;

    if-nez v4, :cond_4

    .line 202
    new-instance v4, Lorg/apache/shiro/subject/SimplePrincipalCollection;

    iget-object v5, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    invoke-direct {v4, v5}, Lorg/apache/shiro/subject/SimplePrincipalCollection;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;)V

    iput-object v4, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 204
    :cond_4
    iget-object v4, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    check-cast v4, Lorg/apache/shiro/subject/MutablePrincipalCollection;

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/shiro/subject/MutablePrincipalCollection;->addAll(Lorg/apache/shiro/subject/PrincipalCollection;)V

    goto :goto_1

    .line 229
    .restart local v2    # "otherCredentials":Ljava/lang/Object;
    .restart local v3    # "thisCredentials":Ljava/lang/Object;
    :cond_5
    instance-of v4, v3, Ljava/util/Collection;

    if-nez v4, :cond_6

    .line 230
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 231
    .local v1, "newSet":Ljava/util/Set;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {p0, v1}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->setCredentials(Ljava/lang/Object;)V

    .line 236
    .end local v1    # "newSet":Ljava/util/Set;
    :cond_6
    invoke-virtual {p0}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 237
    .local v0, "credentialCollection":Ljava/util/Collection;
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_7

    .line 238
    check-cast v2, Ljava/util/Collection;

    .end local v2    # "otherCredentials":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 240
    .restart local v2    # "otherCredentials":Ljava/lang/Object;
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCredentials(Ljava/lang/Object;)V
    .locals 0
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentials:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public setCredentialsSalt(Lorg/apache/shiro/util/ByteSource;)V
    .locals 0
    .param p1, "salt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->credentialsSalt:Lorg/apache/shiro/util/ByteSource;

    .line 185
    return-void
.end method

.method public setPrincipals(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->principals:Lorg/apache/shiro/subject/PrincipalCollection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
