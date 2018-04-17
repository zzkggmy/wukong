.class public abstract Lorg/apache/shiro/crypto/JcaCipherService;
.super Ljava/lang/Object;
.source "JcaCipherService.java"

# interfaces
.implements Lorg/apache/shiro/crypto/CipherService;


# static fields
.field private static final BITS_PER_BYTE:I = 0x8

.field private static final DEFAULT_KEY_SIZE:I = 0x80

.field private static final DEFAULT_STREAMING_BUFFER_SIZE:I = 0x200

.field private static final RANDOM_NUM_GENERATOR_ALGORITHM_NAME:Ljava/lang/String; = "SHA1PRNG"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private generateInitializationVectors:Z

.field private initializationVectorSize:I

.field private keySize:I

.field private secureRandom:Ljava/security/SecureRandom;

.field private streamingBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/apache/shiro/crypto/JcaCipherService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/crypto/JcaCipherService;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithmName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithmName argument cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->algorithmName:Ljava/lang/String;

    .line 130
    iput v1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->keySize:I

    .line 131
    iput v1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->initializationVectorSize:I

    .line 132
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->streamingBufferSize:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->generateInitializationVectors:Z

    .line 134
    return-void
.end method

.method private crypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B[BI)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "keyBytes"    # [B
    .param p4, "iv"    # [B
    .param p5, "cryptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "InputStream argument cannot be null."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 567
    :cond_0
    if-nez p2, :cond_1

    .line 568
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "OutputStream argument cannot be null."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 571
    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, p5, p3, p4, v6}, Lorg/apache/shiro/crypto/JcaCipherService;->initNewCipher(I[B[BZ)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 573
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 575
    .local v4, "cis":Ljavax/crypto/CipherInputStream;
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getStreamingBufferSize()I

    move-result v0

    .line 576
    .local v0, "bufSize":I
    new-array v1, v0, [B

    .line 580
    .local v1, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {v4, v1}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    .line 581
    const/4 v6, 0x0

    invoke-virtual {p2, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v5

    .line 584
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/shiro/crypto/CryptoException;

    invoke-direct {v6, v5}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 586
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "bytesRead":I
    :cond_2
    return-void
.end method

.method private crypt(Ljavax/crypto/Cipher;[B)[B
    .locals 4
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 459
    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute \'doFinal\' with cipher instance ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/crypto/CryptoException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private crypt([B[B[BI)[B
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 442
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key argument cannot be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p4, p2, p3, v1}, Lorg/apache/shiro/crypto/JcaCipherService;->initNewCipher(I[B[BZ)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 445
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/crypto/JcaCipherService;->crypt(Ljavax/crypto/Cipher;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private decrypt([B[B[B)Lorg/apache/shiro/util/ByteSource;
    .locals 4
    .param p1, "ciphertext"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v1, Lorg/apache/shiro/crypto/JcaCipherService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    sget-object v2, Lorg/apache/shiro/crypto/JcaCipherService;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to decrypt incoming byte array of length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 390
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/shiro/crypto/JcaCipherService;->crypt([B[B[BI)[B

    move-result-object v0

    .line 391
    .local v0, "decrypted":[B
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 387
    .end local v0    # "decrypted":[B
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 391
    .restart local v0    # "decrypted":[B
    :cond_2
    invoke-static {v0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v1

    goto :goto_1
.end method

.method private decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[BZ)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "key"    # [B
    .param p4, "ivPrepended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v1, 0x0

    .line 534
    .local v1, "iv":[B
    if-eqz p4, :cond_0

    .line 537
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getInitializationVectorSize()I

    move-result v3

    .line 538
    .local v3, "ivSize":I
    div-int/lit8 v2, v3, 0x8

    .line 539
    .local v2, "ivByteSize":I
    new-array v1, v2, [B

    .line 543
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 549
    .local v5, "read":I
    if-eq v5, v2, :cond_0

    .line 550
    new-instance v6, Lorg/apache/shiro/crypto/CryptoException;

    const-string v7, "Unable to read initialization vector bytes from the InputStream.  This is required when initialization vectors are autogenerated during an encryption operation."

    invoke-direct {v6, v7}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 544
    .end local v5    # "read":I
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Unable to correctly read the Initialization Vector from the input stream."

    .line 546
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Lorg/apache/shiro/crypto/CryptoException;

    invoke-direct {v6, v4, v0}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 556
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ivByteSize":I
    .end local v3    # "ivSize":I
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/shiro/crypto/JcaCipherService;->decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B[B)V

    .line 557
    return-void
.end method

.method private decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B[B)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "decryptionKey"    # [B
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 560
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/shiro/crypto/JcaCipherService;->crypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B[BI)V

    .line 561
    return-void
.end method

.method private encrypt([B[B[BZ)Lorg/apache/shiro/util/ByteSource;
    .locals 7
    .param p1, "plaintext"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .param p4, "prependIv"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    const/4 v0, 0x1

    .line 322
    .local v0, "MODE":I
    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    .line 324
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/apache/shiro/crypto/JcaCipherService;->crypt([B[B[BI)[B

    move-result-object v1

    .line 326
    .local v1, "encrypted":[B
    array-length v3, p3

    array-length v5, v1

    add-int/2addr v3, v5

    new-array v2, v3, [B

    .line 331
    .local v2, "output":[B
    array-length v3, p3

    invoke-static {p3, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    array-length v3, p3

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    .end local v1    # "encrypted":[B
    :goto_0
    sget-object v3, Lorg/apache/shiro/crypto/JcaCipherService;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    sget-object v5, Lorg/apache/shiro/crypto/JcaCipherService;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incoming plaintext of size "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".  Ciphertext "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "byte array is size "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_0

    array-length v4, v2

    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 344
    :cond_1
    invoke-static {v2}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v3

    return-object v3

    .line 336
    .end local v2    # "output":[B
    :cond_2
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/apache/shiro/crypto/JcaCipherService;->crypt([B[B[BI)[B

    move-result-object v2

    .restart local v2    # "output":[B
    goto :goto_0

    :cond_3
    move v3, v4

    .line 340
    goto :goto_1
.end method

.method private encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B[BZ)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "key"    # [B
    .param p4, "iv"    # [B
    .param p5, "prependIv"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 514
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 517
    :try_start_0
    invoke-virtual {p2, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/shiro/crypto/JcaCipherService;->crypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B[BI)V

    .line 524
    return-void

    .line 518
    :catch_0
    move-exception v6

    .line 519
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lorg/apache/shiro/crypto/CryptoException;

    invoke-direct {v0, v6}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static getDefaultSecureRandom()Ljava/security/SecureRandom;
    .locals 3

    .prologue
    .line 254
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v1

    .line 255
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 256
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lorg/apache/shiro/crypto/JcaCipherService;->log:Lorg/slf4j/Logger;

    const-string v2, "The SecureRandom SHA1PRNG algorithm is not available on the current platform.  Using the platform\'s default SecureRandom algorithm."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method private init(Ljavax/crypto/Cipher;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "mode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 480
    if-eqz p5, :cond_1

    .line 481
    if-eqz p4, :cond_0

    .line 482
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 497
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p1, p2, p3, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to init cipher instance."

    .line 495
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/crypto/CryptoException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    .line 488
    :try_start_1
    invoke-virtual {p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initNewCipher(I[B[BZ)Ljavax/crypto/Cipher;
    .locals 6
    .param p1, "jcaCipherMode"    # I
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .param p4, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0, p4}, Lorg/apache/shiro/crypto/JcaCipherService;->newCipherInstance(Z)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 592
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 593
    .local v3, "jdkKey":Ljava/security/Key;
    const/4 v4, 0x0

    .line 594
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 595
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .end local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 598
    .restart local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/shiro/crypto/JcaCipherService;->init(Ljavax/crypto/Cipher;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 600
    return-object v1
.end method

.method private newCipherInstance(Z)Ljavax/crypto/Cipher;
    .locals 5
    .param p1, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/JcaCipherService;->getTransformationString(Z)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "transformationString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to acquire a Java JCA Cipher instance using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getInstance( \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" ). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " under this configuration is required for the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instance to function."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/crypto/CryptoException;

    invoke-direct {v3, v1, v0}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public decrypt([B[B)Lorg/apache/shiro/util/ByteSource;
    .locals 9
    .param p1, "ciphertext"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 349
    move-object v1, p1

    .line 352
    .local v1, "encrypted":[B
    const/4 v3, 0x0

    .line 354
    .local v3, "iv":[B
    invoke-virtual {p0, v7}, Lorg/apache/shiro/crypto/JcaCipherService;->isGenerateInitializationVectors(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getInitializationVectorSize()I

    move-result v5

    .line 366
    .local v5, "ivSize":I
    div-int/lit8 v4, v5, 0x8

    .line 369
    .local v4, "ivByteSize":I
    new-array v3, v4, [B

    .line 370
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v7, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    array-length v7, p1

    sub-int v2, v7, v4

    .line 374
    .local v2, "encryptedSize":I
    new-array v1, v2, [B

    .line 375
    const/4 v7, 0x0

    invoke-static {p1, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v2    # "encryptedSize":I
    .end local v4    # "ivByteSize":I
    .end local v5    # "ivSize":I
    :cond_0
    invoke-direct {p0, v1, p2, v3}, Lorg/apache/shiro/crypto/JcaCipherService;->decrypt([B[B[B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v7

    return-object v7

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Unable to correctly extract the Initialization Vector or ciphertext."

    .line 378
    .local v6, "msg":Ljava/lang/String;
    new-instance v7, Lorg/apache/shiro/crypto/CryptoException;

    invoke-direct {v7, v6, v0}, Lorg/apache/shiro/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/JcaCipherService;->isGenerateInitializationVectors(Z)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/shiro/crypto/JcaCipherService;->decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[BZ)V

    .line 528
    return-void
.end method

.method public encrypt([B[B)Lorg/apache/shiro/util/ByteSource;
    .locals 4
    .param p1, "plaintext"    # [B
    .param p2, "key"    # [B

    .prologue
    const/4 v2, 0x0

    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, "ivBytes":[B
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/JcaCipherService;->isGenerateInitializationVectors(Z)Z

    move-result v0

    .line 306
    .local v0, "generate":Z
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0, v2}, Lorg/apache/shiro/crypto/JcaCipherService;->generateInitializationVector(Z)[B

    move-result-object v1

    .line 308
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 309
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Initialization vector generation is enabled - generated vectorcannot be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_1
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/apache/shiro/crypto/JcaCipherService;->encrypt([B[B[BZ)Lorg/apache/shiro/util/ByteSource;

    move-result-object v2

    return-object v2
.end method

.method public encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 501
    const/4 v4, 0x0

    .line 502
    .local v4, "iv":[B
    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/JcaCipherService;->isGenerateInitializationVectors(Z)Z

    move-result v5

    .line 503
    .local v5, "generate":Z
    if-eqz v5, :cond_1

    .line 504
    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/JcaCipherService;->generateInitializationVector(Z)[B

    move-result-object v4

    .line 505
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Initialization vector generation is enabled - generated vectorcannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 510
    invoke-direct/range {v0 .. v5}, Lorg/apache/shiro/crypto/JcaCipherService;->encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;[B[BZ)V

    .line 511
    return-void
.end method

.method protected ensureSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 264
    .local v0, "random":Ljava/security/SecureRandom;
    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lorg/apache/shiro/crypto/JcaCipherService;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method protected generateInitializationVector(Z)[B
    .locals 7
    .param p1, "streaming"    # Z

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getInitializationVectorSize()I

    move-result v3

    .line 286
    .local v3, "size":I
    if-gtz v3, :cond_0

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializationVectorSize property must be greater than zero.  This number is typically set in the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/apache/shiro/crypto/CipherService;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subclass constructor.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Also check your configuration to ensure that if you are setting a value, it is positive."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    rem-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_1

    .line 293
    const-string v1, "initializationVectorSize property must be a multiple of 8 to represent as a byte array."

    .line 294
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 296
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    div-int/lit8 v4, v3, 0x8

    .line 297
    .local v4, "sizeInBytes":I
    new-array v0, v4, [B

    .line 298
    .local v0, "ivBytes":[B
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->ensureSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 299
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 300
    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitializationVectorSize()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->initializationVectorSize:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->keySize:I

    return v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getStreamingBufferSize()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->streamingBufferSize:I

    return v0
.end method

.method protected getTransformationString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "streaming"    # Z

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGenerateInitializationVectors()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/apache/shiro/crypto/JcaCipherService;->generateInitializationVectors:Z

    return v0
.end method

.method protected isGenerateInitializationVectors(Z)Z
    .locals 1
    .param p1, "streaming"    # Z

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/JcaCipherService;->isGenerateInitializationVectors()Z

    move-result v0

    return v0
.end method

.method public setGenerateInitializationVectors(Z)V
    .locals 0
    .param p1, "generateInitializationVectors"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->generateInitializationVectors:Z

    .line 170
    return-void
.end method

.method public setInitializationVectorSize(I)V
    .locals 2
    .param p1, "initializationVectorSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 190
    rem-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    .line 191
    const-string v0, "Initialization vector sizes are specified in bits, but must be a multiple of 8 so they can be easily represented as a byte array."

    .line 193
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput p1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->initializationVectorSize:I

    .line 196
    return-void
.end method

.method public setKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I

    .prologue
    .line 161
    iput p1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->keySize:I

    .line 162
    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    .line 249
    iput-object p1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->secureRandom:Ljava/security/SecureRandom;

    .line 250
    return-void
.end method

.method public setStreamingBufferSize(I)V
    .locals 0
    .param p1, "streamingBufferSize"    # I

    .prologue
    .line 227
    iput p1, p0, Lorg/apache/shiro/crypto/JcaCipherService;->streamingBufferSize:I

    .line 228
    return-void
.end method
