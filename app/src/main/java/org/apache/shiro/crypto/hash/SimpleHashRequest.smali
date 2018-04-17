.class public Lorg/apache/shiro/crypto/hash/SimpleHashRequest;
.super Ljava/lang/Object;
.source "SimpleHashRequest.java"

# interfaces
.implements Lorg/apache/shiro/crypto/hash/HashRequest;


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final iterations:I

.field private final salt:Lorg/apache/shiro/util/ByteSource;

.field private final source:Lorg/apache/shiro/util/ByteSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/util/ByteSource;I)V
    .locals 2
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/apache/shiro/util/ByteSource;
    .param p3, "salt"    # Lorg/apache/shiro/util/ByteSource;
    .param p4, "iterations"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p2, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->source:Lorg/apache/shiro/util/ByteSource;

    .line 54
    iput-object p3, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->salt:Lorg/apache/shiro/util/ByteSource;

    .line 55
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->algorithmName:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->iterations:I

    .line 57
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->iterations:I

    return v0
.end method

.method public getSalt()Lorg/apache/shiro/util/ByteSource;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->salt:Lorg/apache/shiro/util/ByteSource;

    return-object v0
.end method

.method public getSource()Lorg/apache/shiro/util/ByteSource;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHashRequest;->source:Lorg/apache/shiro/util/ByteSource;

    return-object v0
.end method
