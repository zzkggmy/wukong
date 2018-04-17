.class public interface abstract Lorg/apache/shiro/crypto/hash/ConfigurableHashService;
.super Ljava/lang/Object;
.source "ConfigurableHashService.java"

# interfaces
.implements Lorg/apache/shiro/crypto/hash/HashService;


# virtual methods
.method public abstract setHashAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setHashIterations(I)V
.end method

.method public abstract setPrivateSalt(Lorg/apache/shiro/util/ByteSource;)V
.end method

.method public abstract setRandomNumberGenerator(Lorg/apache/shiro/crypto/RandomNumberGenerator;)V
.end method
