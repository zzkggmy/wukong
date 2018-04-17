.class public Lorg/apache/shiro/crypto/hash/Sha256Hash;
.super Lorg/apache/shiro/crypto/hash/SimpleHash;
.source "Sha256Hash.java"


# static fields
.field public static final ALGORITHM_NAME:Ljava/lang/String; = "SHA-256"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 46
    const-string v0, "SHA-256"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;

    .prologue
    .line 50
    const-string v0, "SHA-256"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;
    .param p3, "hashIterations"    # I

    .prologue
    .line 54
    const-string v0, "SHA-256"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 55
    return-void
.end method

.method public static fromBase64String(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Sha256Hash;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lorg/apache/shiro/crypto/hash/Sha256Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Sha256Hash;-><init>()V

    .line 65
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Sha256Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Sha256Hash;->setBytes([B)V

    .line 66
    return-object v0
.end method

.method public static fromHexString(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Sha256Hash;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lorg/apache/shiro/crypto/hash/Sha256Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Sha256Hash;-><init>()V

    .line 59
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Sha256Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Sha256Hash;->setBytes([B)V

    .line 60
    return-object v0
.end method
