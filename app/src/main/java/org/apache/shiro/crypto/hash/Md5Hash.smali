.class public Lorg/apache/shiro/crypto/hash/Md5Hash;
.super Lorg/apache/shiro/crypto/hash/SimpleHash;
.source "Md5Hash.java"


# static fields
.field public static final ALGORITHM_NAME:Ljava/lang/String; = "MD5"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 44
    const-string v0, "MD5"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;

    .prologue
    .line 48
    const-string v0, "MD5"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;
    .param p3, "hashIterations"    # I

    .prologue
    .line 52
    const-string v0, "MD5"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 53
    return-void
.end method

.method public static fromBase64String(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Md5Hash;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lorg/apache/shiro/crypto/hash/Md5Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Md5Hash;-><init>()V

    .line 63
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Md5Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Md5Hash;->setBytes([B)V

    .line 64
    return-object v0
.end method

.method public static fromHexString(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Md5Hash;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lorg/apache/shiro/crypto/hash/Md5Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Md5Hash;-><init>()V

    .line 57
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Md5Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Md5Hash;->setBytes([B)V

    .line 58
    return-object v0
.end method
