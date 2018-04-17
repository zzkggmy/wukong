.class public interface abstract Lorg/apache/shiro/crypto/hash/Hash;
.super Ljava/lang/Object;
.source "Hash.java"

# interfaces
.implements Lorg/apache/shiro/util/ByteSource;


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getIterations()I
.end method

.method public abstract getSalt()Lorg/apache/shiro/util/ByteSource;
.end method
