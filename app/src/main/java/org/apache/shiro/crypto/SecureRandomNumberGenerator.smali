.class public Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;
.super Ljava/lang/Object;
.source "SecureRandomNumberGenerator.java"

# interfaces
.implements Lorg/apache/shiro/crypto/RandomNumberGenerator;


# static fields
.field protected static final DEFAULT_NEXT_BYTES_SIZE:I = 0x10


# instance fields
.field private defaultNextBytesSize:I

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x10

    iput v0, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->defaultNextBytesSize:I

    .line 49
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 50
    return-void
.end method


# virtual methods
.method public getDefaultNextBytesSize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->defaultNextBytesSize:I

    return v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public nextBytes()Lorg/apache/shiro/util/ByteSource;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->getDefaultNextBytesSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->nextBytes(I)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public nextBytes(I)Lorg/apache/shiro/util/ByteSource;
    .locals 3
    .param p1, "numBytes"    # I

    .prologue
    .line 113
    if-gtz p1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "numBytes argument must be a positive integer (1 or larger)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    new-array v0, p1, [B

    .line 117
    .local v0, "bytes":[B
    iget-object v1, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 118
    invoke-static {v0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v1

    return-object v1
.end method

.method public setDefaultNextBytesSize(I)V
    .locals 2
    .param p1, "defaultNextBytesSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 102
    if-gtz p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size value must be a positive integer (1 or larger)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput p1, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->defaultNextBytesSize:I

    .line 106
    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SecureRandom argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 82
    return-void
.end method

.method public setSeed([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 60
    return-void
.end method
