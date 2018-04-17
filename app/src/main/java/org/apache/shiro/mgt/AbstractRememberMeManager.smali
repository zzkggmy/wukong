.class public abstract Lorg/apache/shiro/mgt/AbstractRememberMeManager;
.super Ljava/lang/Object;
.source "AbstractRememberMeManager.java"

# interfaces
.implements Lorg/apache/shiro/mgt/RememberMeManager;


# static fields
.field private static final DEFAULT_CIPHER_KEY_BYTES:[B

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cipherService:Lorg/apache/shiro/crypto/CipherService;

.field private decryptionCipherKey:[B

.field private encryptionCipherKey:[B

.field private serializer:Lorg/apache/shiro/io/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/shiro/io/Serializer",
            "<",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->log:Lorg/slf4j/Logger;

    .line 80
    const-string v0, "kPH+bIxk5D2deZiIxcaaaA=="

    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->DEFAULT_CIPHER_KEY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/apache/shiro/io/DefaultSerializer;

    invoke-direct {v0}, Lorg/apache/shiro/io/DefaultSerializer;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->serializer:Lorg/apache/shiro/io/Serializer;

    .line 108
    new-instance v0, Lorg/apache/shiro/crypto/AesCipherService;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/AesCipherService;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->cipherService:Lorg/apache/shiro/crypto/CipherService;

    .line 109
    sget-object v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->DEFAULT_CIPHER_KEY_BYTES:[B

    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->setCipherKey([B)V

    .line 110
    return-void
.end method


# virtual methods
.method protected convertBytesToPrincipals([BLorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getCipherService()Lorg/apache/shiro/crypto/CipherService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->decrypt([B)[B

    move-result-object p1

    .line 431
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->deserialize([B)Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    return-object v0
.end method

.method protected convertPrincipalsToBytes(Lorg/apache/shiro/subject/PrincipalCollection;)[B
    .locals 2
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->serialize(Lorg/apache/shiro/subject/PrincipalCollection;)[B

    move-result-object v0

    .line 361
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getCipherService()Lorg/apache/shiro/crypto/CipherService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0, v0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->encrypt([B)[B

    move-result-object v0

    .line 364
    :cond_0
    return-object v0
.end method

.method protected decrypt([B)[B
    .locals 4
    .param p1, "encrypted"    # [B

    .prologue
    .line 486
    move-object v2, p1

    .line 487
    .local v2, "serialized":[B
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getCipherService()Lorg/apache/shiro/crypto/CipherService;

    move-result-object v1

    .line 488
    .local v1, "cipherService":Lorg/apache/shiro/crypto/CipherService;
    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getDecryptionCipherKey()[B

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lorg/apache/shiro/crypto/CipherService;->decrypt([B[B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    .line 490
    .local v0, "byteSource":Lorg/apache/shiro/util/ByteSource;
    invoke-interface {v0}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v2

    .line 492
    .end local v0    # "byteSource":Lorg/apache/shiro/util/ByteSource;
    :cond_0
    return-object v2
.end method

.method protected deserialize([B)Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 1
    .param p1, "serializedIdentity"    # [B

    .prologue
    .line 514
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getSerializer()Lorg/apache/shiro/io/Serializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/shiro/io/Serializer;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/subject/PrincipalCollection;

    return-object v0
.end method

.method protected encrypt([B)[B
    .locals 4
    .param p1, "serialized"    # [B

    .prologue
    .line 470
    move-object v2, p1

    .line 471
    .local v2, "value":[B
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getCipherService()Lorg/apache/shiro/crypto/CipherService;

    move-result-object v1

    .line 472
    .local v1, "cipherService":Lorg/apache/shiro/crypto/CipherService;
    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getEncryptionCipherKey()[B

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lorg/apache/shiro/crypto/CipherService;->encrypt([B[B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    .line 474
    .local v0, "byteSource":Lorg/apache/shiro/util/ByteSource;
    invoke-interface {v0}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v2

    .line 476
    .end local v0    # "byteSource":Lorg/apache/shiro/util/ByteSource;
    :cond_0
    return-object v2
.end method

.method protected abstract forgetIdentity(Lorg/apache/shiro/subject/Subject;)V
.end method

.method public getCipherKey()[B
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getEncryptionCipherKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getCipherService()Lorg/apache/shiro/crypto/CipherService;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->cipherService:Lorg/apache/shiro/crypto/CipherService;

    return-object v0
.end method

.method public getDecryptionCipherKey()[B
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->decryptionCipherKey:[B

    return-object v0
.end method

.method public getEncryptionCipherKey()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->encryptionCipherKey:[B

    return-object v0
.end method

.method protected getIdentityToRemember(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 333
    invoke-interface {p2}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    return-object v0
.end method

.method public getRememberedPrincipals(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 4
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getRememberedSerializedIdentity(Lorg/apache/shiro/subject/SubjectContext;)[B

    move-result-object v0

    .line 395
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 396
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->convertBytesToPrincipals([BLorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 402
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    return-object v1

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, "re":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v2, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->onRememberedPrincipalFailure(Ljava/lang/RuntimeException;Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getRememberedSerializedIdentity(Lorg/apache/shiro/subject/SubjectContext;)[B
.end method

.method public getSerializer()Lorg/apache/shiro/io/Serializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/shiro/io/Serializer",
            "<",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->serializer:Lorg/apache/shiro/io/Serializer;

    return-object v0
.end method

.method protected isRememberMe(Lorg/apache/shiro/authc/AuthenticationToken;)Z
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/shiro/authc/RememberMeAuthenticationToken;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/shiro/authc/RememberMeAuthenticationToken;

    .end local p1    # "token":Lorg/apache/shiro/authc/AuthenticationToken;
    invoke-interface {p1}, Lorg/apache/shiro/authc/RememberMeAuthenticationToken;->isRememberMe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFailedLogin(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p3, "ae"    # Lorg/apache/shiro/authc/AuthenticationException;

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->forgetIdentity(Lorg/apache/shiro/subject/Subject;)V

    .line 528
    return-void
.end method

.method public onLogout(Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->forgetIdentity(Lorg/apache/shiro/subject/Subject;)V

    .line 538
    return-void
.end method

.method protected onRememberedPrincipalFailure(Ljava/lang/RuntimeException;Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 2
    .param p1, "e"    # Ljava/lang/RuntimeException;
    .param p2, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 452
    sget-object v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->log:Lorg/slf4j/Logger;

    const-string v1, "There was a failure while trying to retrieve remembered principals.  This could be due to a configuration problem or corrupted principals.  This could also be due to a recently changed encryption key.  The remembered identity will be forgotten and not used for this request."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->forgetIdentity(Lorg/apache/shiro/subject/SubjectContext;)V

    .line 460
    throw p1
.end method

.method public onSuccessfulLogin(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 2
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p3, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->forgetIdentity(Lorg/apache/shiro/subject/Subject;)V

    .line 296
    invoke-virtual {p0, p2}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->isRememberMe(Lorg/apache/shiro/authc/AuthenticationToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->rememberIdentity(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    sget-object v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->log:Lorg/slf4j/Logger;

    const-string v1, "AuthenticationToken did not indicate RememberMe is requested.  RememberMe functionality will not be executed for corresponding account."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rememberIdentity(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p3, "authcInfo"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 320
    invoke-virtual {p0, p1, p3}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getIdentityToRemember(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    .line 321
    .local v0, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->rememberIdentity(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 322
    return-void
.end method

.method protected rememberIdentity(Lorg/apache/shiro/subject/Subject;Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "accountPrincipals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 346
    invoke-virtual {p0, p2}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->convertPrincipalsToBytes(Lorg/apache/shiro/subject/PrincipalCollection;)[B

    move-result-object v0

    .line 347
    .local v0, "bytes":[B
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->rememberSerializedIdentity(Lorg/apache/shiro/subject/Subject;[B)V

    .line 348
    return-void
.end method

.method protected abstract rememberSerializedIdentity(Lorg/apache/shiro/subject/Subject;[B)V
.end method

.method protected serialize(Lorg/apache/shiro/subject/PrincipalCollection;)[B
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 503
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->getSerializer()Lorg/apache/shiro/io/Serializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/shiro/io/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public setCipherKey([B)V
    .locals 0
    .param p1, "cipherKey"    # [B

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->setEncryptionCipherKey([B)V

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->setDecryptionCipherKey([B)V

    .line 252
    return-void
.end method

.method public setCipherService(Lorg/apache/shiro/crypto/CipherService;)V
    .locals 0
    .param p1, "cipherService"    # Lorg/apache/shiro/crypto/CipherService;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->cipherService:Lorg/apache/shiro/crypto/CipherService;

    .line 173
    return-void
.end method

.method public setDecryptionCipherKey([B)V
    .locals 0
    .param p1, "decryptionCipherKey"    # [B

    .prologue
    .line 212
    iput-object p1, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->decryptionCipherKey:[B

    .line 213
    return-void
.end method

.method public setEncryptionCipherKey([B)V
    .locals 0
    .param p1, "encryptionCipherKey"    # [B

    .prologue
    .line 192
    iput-object p1, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->encryptionCipherKey:[B

    .line 193
    return-void
.end method

.method public setSerializer(Lorg/apache/shiro/io/Serializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/io/Serializer",
            "<",
            "Lorg/apache/shiro/subject/PrincipalCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "serializer":Lorg/apache/shiro/io/Serializer;, "Lorg/apache/shiro/io/Serializer<Lorg/apache/shiro/subject/PrincipalCollection;>;"
    iput-object p1, p0, Lorg/apache/shiro/mgt/AbstractRememberMeManager;->serializer:Lorg/apache/shiro/io/Serializer;

    .line 137
    return-void
.end method
