.class public interface abstract Lorg/apache/shiro/authc/credential/HashingPasswordService;
.super Ljava/lang/Object;
.source "HashingPasswordService.java"

# interfaces
.implements Lorg/apache/shiro/authc/credential/PasswordService;


# virtual methods
.method public abstract hashPassword(Ljava/lang/Object;)Lorg/apache/shiro/crypto/hash/Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract passwordsMatch(Ljava/lang/Object;Lorg/apache/shiro/crypto/hash/Hash;)Z
.end method
