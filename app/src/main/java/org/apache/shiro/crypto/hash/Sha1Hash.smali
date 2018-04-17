.class public Lorg/apache/shiro/crypto/hash/Sha1Hash;
.super Lorg/apache/shiro/crypto/hash/SimpleHash;
.source "Sha1Hash.java"


# static fields
.field public static final ALGORITHM_NAME:Ljava/lang/String; = "SHA-1"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 45
    const-string v0, "SHA-1"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;

    .prologue
    .line 49
    const-string v0, "SHA-1"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;
    .param p3, "hashIterations"    # I

    .prologue
    .line 53
    const-string v0, "SHA-1"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 54
    return-void
.end method

.method public static fromBase64String(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Sha1Hash;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lorg/apache/shiro/crypto/hash/Sha1Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Sha1Hash;-><init>()V

    .line 64
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Sha1Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Sha1Hash;->setBytes([B)V

    .line 65
    return-object v0
.end method

.method public static fromHexString(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Sha1Hash;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lorg/apache/shiro/crypto/hash/Sha1Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Sha1Hash;-><init>()V

    .line 58
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Sha1Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Sha1Hash;->setBytes([B)V

    .line 59
    return-object v0
.end method
