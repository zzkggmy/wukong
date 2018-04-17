.class public Lorg/apache/shiro/crypto/BlowfishCipherService;
.super Lorg/apache/shiro/crypto/DefaultBlockCipherService;
.source "BlowfishCipherService.java"


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "Blowfish"

.field private static final BLOCK_SIZE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "Blowfish"

    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;-><init>(Ljava/lang/String;)V

    .line 90
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/BlowfishCipherService;->setInitializationVectorSize(I)V

    .line 91
    return-void
.end method
