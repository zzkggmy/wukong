.class public Lorg/apache/shiro/crypto/AesCipherService;
.super Lorg/apache/shiro/crypto/DefaultBlockCipherService;
.source "AesCipherService.java"


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "AES"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "AES"

    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;-><init>(Ljava/lang/String;)V

    .line 88
    return-void
.end method
