.class public interface abstract Lorg/apache/shiro/crypto/hash/HashRequest;
.super Ljava/lang/Object;
.source "HashRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/crypto/hash/HashRequest$Builder;
    }
.end annotation


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getIterations()I
.end method

.method public abstract getSalt()Lorg/apache/shiro/util/ByteSource;
.end method

.method public abstract getSource()Lorg/apache/shiro/util/ByteSource;
.end method
