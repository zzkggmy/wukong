.class public Lorg/apache/shiro/crypto/hash/Md2Hash;
.super Lorg/apache/shiro/crypto/hash/SimpleHash;
.source "Md2Hash.java"


# static fields
.field public static final ALGORITHM_NAME:Ljava/lang/String; = "MD2"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "MD2"

    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 43
    const-string v0, "MD2"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;

    .prologue
    .line 47
    const-string v0, "MD2"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;
    .param p3, "hashIterations"    # I

    .prologue
    .line 51
    const-string v0, "MD2"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 52
    return-void
.end method

.method public static fromBase64String(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Md2Hash;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lorg/apache/shiro/crypto/hash/Md2Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Md2Hash;-><init>()V

    .line 62
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Md2Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Md2Hash;->setBytes([B)V

    .line 63
    return-object v0
.end method

.method public static fromHexString(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Md2Hash;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lorg/apache/shiro/crypto/hash/Md2Hash;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/Md2Hash;-><init>()V

    .line 56
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Md2Hash;
    invoke-static {p0}, Lorg/apache/shiro/codec/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/Md2Hash;->setBytes([B)V

    .line 57
    return-object v0
.end method
