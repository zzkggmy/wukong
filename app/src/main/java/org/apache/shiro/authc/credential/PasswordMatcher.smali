.class public Lorg/apache/shiro/authc/credential/PasswordMatcher;
.super Ljava/lang/Object;
.source "PasswordMatcher.java"

# interfaces
.implements Lorg/apache/shiro/authc/credential/CredentialsMatcher;


# instance fields
.field private passwordService:Lorg/apache/shiro/authc/credential/PasswordService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;

    invoke-direct {v0}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authc/credential/PasswordMatcher;->passwordService:Lorg/apache/shiro/authc/credential/PasswordService;

    .line 40
    return-void
.end method

.method private assertHashingPasswordService(Lorg/apache/shiro/authc/credential/PasswordService;)Lorg/apache/shiro/authc/credential/HashingPasswordService;
    .locals 3
    .param p1, "service"    # Lorg/apache/shiro/authc/credential/PasswordService;

    .prologue
    .line 61
    instance-of v1, p1, Lorg/apache/shiro/authc/credential/HashingPasswordService;

    if-eqz v1, :cond_0

    .line 62
    check-cast p1, Lorg/apache/shiro/authc/credential/HashingPasswordService;

    .end local p1    # "service":Lorg/apache/shiro/authc/credential/PasswordService;
    return-object p1

    .line 64
    .restart local p1    # "service":Lorg/apache/shiro/authc/credential/PasswordService;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationInfo\'s stored credentials are a Hash instance, but the configured passwordService is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/authc/credential/HashingPasswordService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance.  This is required to perform Hash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "object password comparisons."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private assertStoredCredentialsType(Ljava/lang/Object;)V
    .locals 3
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 85
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/shiro/crypto/hash/Hash;

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    return-void

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored account credentials are expected to be either a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/crypto/hash/Hash;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance or a formatted hash String."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensurePasswordService()Lorg/apache/shiro/authc/credential/PasswordService;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/shiro/authc/credential/PasswordMatcher;->getPasswordService()Lorg/apache/shiro/authc/credential/PasswordService;

    move-result-object v1

    .line 73
    .local v1, "service":Lorg/apache/shiro/authc/credential/PasswordService;
    if-nez v1, :cond_0

    .line 74
    const-string v0, "Required PasswordService has not been configured."

    .line 75
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public doCredentialsMatch(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Z
    .locals 7
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/PasswordMatcher;->ensurePasswordService()Lorg/apache/shiro/authc/credential/PasswordService;

    move-result-object v3

    .line 46
    .local v3, "service":Lorg/apache/shiro/authc/credential/PasswordService;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/PasswordMatcher;->getSubmittedPassword(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    .local v5, "submittedPassword":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/apache/shiro/authc/credential/PasswordMatcher;->getStoredPassword(Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    .local v4, "storedCredentials":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lorg/apache/shiro/authc/credential/PasswordMatcher;->assertStoredCredentialsType(Ljava/lang/Object;)V

    .line 50
    instance-of v6, v4, Lorg/apache/shiro/crypto/hash/Hash;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 51
    check-cast v1, Lorg/apache/shiro/crypto/hash/Hash;

    .line 52
    .local v1, "hashedPassword":Lorg/apache/shiro/crypto/hash/Hash;
    invoke-direct {p0, v3}, Lorg/apache/shiro/authc/credential/PasswordMatcher;->assertHashingPasswordService(Lorg/apache/shiro/authc/credential/PasswordService;)Lorg/apache/shiro/authc/credential/HashingPasswordService;

    move-result-object v2

    .line 53
    .local v2, "hashingService":Lorg/apache/shiro/authc/credential/HashingPasswordService;
    invoke-interface {v2, v5, v1}, Lorg/apache/shiro/authc/credential/HashingPasswordService;->passwordsMatch(Ljava/lang/Object;Lorg/apache/shiro/crypto/hash/Hash;)Z

    move-result v6

    .line 57
    .end local v1    # "hashedPassword":Lorg/apache/shiro/crypto/hash/Hash;
    .end local v2    # "hashingService":Lorg/apache/shiro/authc/credential/HashingPasswordService;
    :goto_0
    return v6

    :cond_0
    move-object v0, v4

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "formatted":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/shiro/authc/credential/PasswordMatcher;->passwordService:Lorg/apache/shiro/authc/credential/PasswordService;

    invoke-interface {v6, v5, v0}, Lorg/apache/shiro/authc/credential/PasswordService;->passwordsMatch(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method

.method public getPasswordService()Lorg/apache/shiro/authc/credential/PasswordService;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/shiro/authc/credential/PasswordMatcher;->passwordService:Lorg/apache/shiro/authc/credential/PasswordService;

    return-object v0
.end method

.method protected getStoredPassword(Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "storedAccountInfo"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 95
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "stored":Ljava/lang/Object;
    :goto_0
    instance-of v2, v0, [C

    if-eqz v2, :cond_0

    .line 98
    new-instance v1, Ljava/lang/String;

    check-cast v0, [C

    .end local v0    # "stored":Ljava/lang/Object;
    check-cast v0, [C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .local v1, "stored":Ljava/lang/String;
    move-object v0, v1

    .line 100
    .end local v1    # "stored":Ljava/lang/String;
    .restart local v0    # "stored":Ljava/lang/Object;
    :cond_0
    return-object v0

    .line 95
    .end local v0    # "stored":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSubmittedPassword(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordService(Lorg/apache/shiro/authc/credential/PasswordService;)V
    .locals 0
    .param p1, "passwordService"    # Lorg/apache/shiro/authc/credential/PasswordService;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/shiro/authc/credential/PasswordMatcher;->passwordService:Lorg/apache/shiro/authc/credential/PasswordService;

    .line 109
    return-void
.end method
