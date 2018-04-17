.class public interface abstract Lorg/apache/shiro/crypto/CipherService;
.super Ljava/lang/Object;
.source "CipherService.java"


# virtual methods
.method public abstract decrypt([B[B)Lorg/apache/shiro/util/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation
.end method

.method public abstract decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation
.end method

.method public abstract encrypt([B[B)Lorg/apache/shiro/util/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation
.end method

.method public abstract encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation
.end method
