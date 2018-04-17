.class public Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;
.super Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;
.source "HashedCredentialsMatcher.java"


# instance fields
.field private hashAlgorithm:Ljava/lang/String;

.field private hashIterations:I

.field private hashSalted:Z

.field private storedCredentialsHexEncoded:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashAlgorithm:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashSalted:Z

    .line 138
    iput v1, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashIterations:I

    .line 139
    iput-boolean v1, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->storedCredentialsHexEncoded:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hashAlgorithmName"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;-><init>()V

    .line 151
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hashAlgorithmName cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashAlgorithm:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private assertHashAlgorithmName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->getHashAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "hashAlgorithmName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 426
    const-string v1, "Required \'hashAlgorithmName\' property has not been set.  This is required to execute the hashing algorithm."

    .line 428
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public doCredentialsMatch(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Z
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 379
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashProvidedCredentials(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 380
    .local v1, "tokenHashedCredentials":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->getCredentials(Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    .local v0, "accountCredentials":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected getCredentials(Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;
    .locals 4
    .param p1, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 345
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    .line 347
    .local v0, "credentials":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->toBytes(Ljava/lang/Object;)[B

    move-result-object v2

    .line 349
    .local v2, "storedBytes":[B
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_0

    instance-of v3, v0, [C

    if-eqz v3, :cond_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->isStoredCredentialsHexEncoded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    invoke-static {v2}, Lorg/apache/shiro/codec/Hex;->decode([B)[B

    move-result-object v2

    .line 358
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->newHashInstance()Lorg/apache/shiro/crypto/hash/AbstractHash;

    move-result-object v1

    .line 359
    .local v1, "hash":Lorg/apache/shiro/crypto/hash/AbstractHash;
    invoke-virtual {v1, v2}, Lorg/apache/shiro/crypto/hash/AbstractHash;->setBytes([B)V

    .line 360
    return-object v1

    .line 355
    .end local v1    # "hash":Lorg/apache/shiro/crypto/hash/AbstractHash;
    :cond_2
    invoke-static {v2}, Lorg/apache/shiro/codec/Base64;->decode([B)[B

    move-result-object v2

    goto :goto_0
.end method

.method public getHashAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getHashIterations()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashIterations:I

    return v0
.end method

.method protected getSalt(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getPrincipal()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hashProvidedCredentials(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "salt":Ljava/lang/Object;
    instance-of v1, p2, Lorg/apache/shiro/authc/SaltedAuthenticationInfo;

    if-eqz v1, :cond_1

    .line 405
    check-cast p2, Lorg/apache/shiro/authc/SaltedAuthenticationInfo;

    .end local p2    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    invoke-interface {p2}, Lorg/apache/shiro/authc/SaltedAuthenticationInfo;->getCredentialsSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    .line 412
    .end local v0    # "salt":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getCredentials()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->getHashIterations()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashProvidedCredentials(Ljava/lang/Object;Ljava/lang/Object;I)Lorg/apache/shiro/crypto/hash/Hash;

    move-result-object v1

    return-object v1

    .line 408
    .restart local v0    # "salt":Ljava/lang/Object;
    .restart local p2    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->isHashSalted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->getSalt(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected hashProvidedCredentials(Ljava/lang/Object;Ljava/lang/Object;I)Lorg/apache/shiro/crypto/hash/Hash;
    .locals 2
    .param p1, "credentials"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;
    .param p3, "hashIterations"    # I

    .prologue
    .line 444
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->assertHashAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "hashAlgorithmName":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/crypto/hash/SimpleHash;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v1
.end method

.method public isHashSalted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashSalted:Z

    return v0
.end method

.method public isStoredCredentialsHexEncoded()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->storedCredentialsHexEncoded:Z

    return v0
.end method

.method protected newHashInstance()Lorg/apache/shiro/crypto/hash/AbstractHash;
    .locals 2

    .prologue
    .line 455
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->assertHashAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "hashAlgorithmName":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/crypto/hash/SimpleHash;

    invoke-direct {v1, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public setHashAlgorithmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashAlgorithmName"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashAlgorithm:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setHashIterations(I)V
    .locals 1
    .param p1, "hashIterations"    # I

    .prologue
    const/4 v0, 0x1

    .line 292
    if-ge p1, v0, :cond_0

    .line 293
    iput v0, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashIterations:I

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iput p1, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashIterations:I

    goto :goto_0
.end method

.method public setHashSalted(Z)V
    .locals 0
    .param p1, "hashSalted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    iput-boolean p1, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->hashSalted:Z

    .line 265
    return-void
.end method

.method public setStoredCredentialsHexEncoded(Z)V
    .locals 0
    .param p1, "storedCredentialsHexEncoded"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;->storedCredentialsHexEncoded:Z

    .line 211
    return-void
.end method
