.class public Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
.super Ljava/lang/Object;
.source "HashRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/crypto/hash/HashRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private iterations:I

.field private salt:Lorg/apache/shiro/util/ByteSource;

.field private source:Lorg/apache/shiro/util/ByteSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->iterations:I

    .line 97
    return-void
.end method


# virtual methods
.method public build()Lorg/apache/shiro/crypto/hash/HashRequest;
    .locals 5

    .prologue
    .line 222
    new-instance v0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;

    iget-object v1, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->algorithmName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->source:Lorg/apache/shiro/util/ByteSource;

    iget-object v3, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->salt:Lorg/apache/shiro/util/ByteSource;

    iget v4, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->iterations:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;-><init>(Ljava/lang/String;Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/util/ByteSource;I)V

    return-object v0
.end method

.method public setAlgorithmName(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
    .locals 0
    .param p1, "algorithmName"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->algorithmName:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public setIterations(I)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
    .locals 0
    .param p1, "iterations"    # I

    .prologue
    .line 190
    iput p1, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->iterations:I

    .line 191
    return-object p0
.end method

.method public setSalt(Ljava/lang/Object;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
    .locals 1
    .param p1, "salt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1}, Lorg/apache/shiro/util/ByteSource$Util;->bytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->salt:Lorg/apache/shiro/util/ByteSource;

    .line 170
    return-object p0
.end method

.method public setSalt(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
    .locals 0
    .param p1, "salt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->salt:Lorg/apache/shiro/util/ByteSource;

    .line 149
    return-object p0
.end method

.method public setSource(Ljava/lang/Object;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Lorg/apache/shiro/util/ByteSource$Util;->bytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->source:Lorg/apache/shiro/util/ByteSource;

    .line 131
    return-object p0
.end method

.method public setSource(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
    .locals 0
    .param p1, "source"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->source:Lorg/apache/shiro/util/ByteSource;

    .line 110
    return-object p0
.end method
