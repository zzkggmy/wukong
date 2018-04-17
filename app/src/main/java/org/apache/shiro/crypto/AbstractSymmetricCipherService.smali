.class public abstract Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;
.super Lorg/apache/shiro/crypto/JcaCipherService;
.source "AbstractSymmetricCipherService.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithmName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/shiro/crypto/JcaCipherService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public generateNewKey()Ljava/security/Key;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;->getKeySize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;->generateNewKey(I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public generateNewKey(I)Ljava/security/Key;
    .locals 5
    .param p1, "keyBitSize"    # I

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v1, p1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 62
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 57
    .end local v1    # "kg":Ljavax/crypto/KeyGenerator;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to acquire "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " algorithm.  This is required to function."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
