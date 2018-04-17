.class public abstract Lorg/apache/shiro/crypto/hash/AbstractHash;
.super Lorg/apache/shiro/codec/CodecSupport;
.source "AbstractHash.java"

# interfaces
.implements Lorg/apache/shiro/crypto/hash/Hash;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private transient base64Encoded:Ljava/lang/String;

.field private bytes:[B

.field private transient hexEncoded:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lorg/apache/shiro/codec/CodecSupport;-><init>()V

    .line 52
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->bytes:[B

    .line 57
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->hexEncoded:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->base64Encoded:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/shiro/crypto/hash/AbstractHash;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/shiro/crypto/hash/AbstractHash;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "salt"    # Ljava/lang/Object;
    .param p3, "hashIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Lorg/apache/shiro/codec/CodecSupport;-><init>()V

    .line 52
    iput-object v3, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->bytes:[B

    .line 57
    iput-object v3, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->hexEncoded:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->base64Encoded:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/AbstractHash;->toBytes(Ljava/lang/Object;)[B

    move-result-object v2

    .line 131
    .local v2, "sourceBytes":[B
    const/4 v1, 0x0

    .line 132
    .local v1, "saltBytes":[B
    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p0, p2}, Lorg/apache/shiro/crypto/hash/AbstractHash;->toBytes(Ljava/lang/Object;)[B

    move-result-object v1

    .line 135
    :cond_0
    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/shiro/crypto/hash/AbstractHash;->hash([B[BI)[B

    move-result-object v0

    .line 136
    .local v0, "hashedBytes":[B
    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/hash/AbstractHash;->setBytes([B)V

    .line 137
    return-void
.end method

.method static doMain(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 16
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/crypto/hash/AbstractHash;",
            ">;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/shiro/crypto/hash/AbstractHash;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 312
    .local v10, "simple":Ljava/lang/String;
    const-string v14, "Hash"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 313
    .local v7, "index":I
    const/4 v14, 0x0

    invoke-virtual {v10, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 315
    .local v13, "type":Ljava/lang/String;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x1

    if-lt v14, v15, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x7

    if-le v14, v15, :cond_1

    .line 316
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/shiro/crypto/hash/AbstractHash;->printMainUsage(Ljava/lang/Class;Ljava/lang/String;)V

    .line 317
    const/4 v14, -0x1

    .line 359
    :goto_0
    return v14

    .line 319
    :cond_1
    const/4 v5, 0x1

    .line 320
    .local v5, "hex":Z
    const/4 v9, 0x0

    .line 321
    .local v9, "salt":Ljava/lang/String;
    const/4 v12, 0x1

    .line 322
    .local v12, "times":I
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-object v11, p1, v14

    .line 323
    .local v11, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v6, v14, :cond_7

    .line 324
    aget-object v1, p1, v6

    .line 325
    .local v1, "arg":Ljava/lang/String;
    const-string v14, "-base64"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 326
    const/4 v5, 0x0

    .line 323
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 327
    :cond_3
    const-string v14, "-salt"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 328
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-lt v14, v15, :cond_4

    .line 329
    const-string v8, "Salt argument must be followed by a salt value.  The final argument is reserved for the value to hash."

    .line 331
    .local v8, "msg":Ljava/lang/String;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/shiro/crypto/hash/AbstractHash;->printMainUsage(Ljava/lang/Class;Ljava/lang/String;)V

    .line 333
    const/4 v14, -0x1

    goto :goto_0

    .line 335
    .end local v8    # "msg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v14, v6, 0x1

    aget-object v9, p1, v14

    goto :goto_2

    .line 336
    :cond_5
    const-string v14, "-times"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 337
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-lt v14, v15, :cond_6

    .line 338
    const-string v8, "Times argument must be followed by an integer value.  The final argument is reserved for the value to hash"

    .line 340
    .restart local v8    # "msg":Ljava/lang/String;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/shiro/crypto/hash/AbstractHash;->printMainUsage(Ljava/lang/Class;Ljava/lang/String;)V

    .line 342
    const/4 v14, -0x1

    goto :goto_0

    .line 345
    .end local v8    # "msg":Ljava/lang/String;
    :cond_6
    add-int/lit8 v14, v6, 0x1

    :try_start_0
    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_2

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Times argument must be followed by an integer value."

    .line 348
    .restart local v8    # "msg":Ljava/lang/String;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/shiro/crypto/hash/AbstractHash;->printMainUsage(Ljava/lang/Class;Ljava/lang/String;)V

    .line 350
    const/4 v14, -0x1

    goto :goto_0

    .line 355
    .end local v1    # "arg":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "msg":Ljava/lang/String;
    :cond_7
    new-instance v3, Lorg/apache/shiro/crypto/hash/Md2Hash;

    invoke-direct {v3, v11, v9, v12}, Lorg/apache/shiro/crypto/hash/Md2Hash;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 356
    .local v3, "hash":Lorg/apache/shiro/crypto/hash/Hash;
    if-eqz v5, :cond_8

    invoke-interface {v3}, Lorg/apache/shiro/crypto/hash/Hash;->toHex()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "hashed":Ljava/lang/String;
    :goto_3
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz v5, :cond_9

    const-string v14, "Hex: "

    :goto_4
    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 358
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 356
    .end local v4    # "hashed":Ljava/lang/String;
    :cond_8
    invoke-interface {v3}, Lorg/apache/shiro/crypto/hash/Hash;->toBase64()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 357
    .restart local v4    # "hashed":Ljava/lang/String;
    :cond_9
    const-string v14, "Base64: "

    goto :goto_4
.end method

.method private static isReserved(Ljava/lang/String;)Z
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v0, "-base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-times"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-salt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static printMainUsage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/shiro/crypto/hash/AbstractHash;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/shiro/crypto/hash/AbstractHash;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prints an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hash value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [-base64] [-salt <saltValue>] [-times <N>] <valueToHash>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t-base64\t\tPrints the hash value as a base64 String instead of the default hex."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t-salt\t\tSalts the hash with the specified <saltValue>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t-times\t\tHashes the input <N> number of times"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 278
    instance-of v1, p1, Lorg/apache/shiro/crypto/hash/Hash;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 279
    check-cast v0, Lorg/apache/shiro/crypto/hash/Hash;

    .line 280
    .local v0, "other":Lorg/apache/shiro/crypto/hash/Hash;
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/AbstractHash;->getBytes()[B

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/shiro/crypto/hash/Hash;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 282
    .end local v0    # "other":Lorg/apache/shiro/crypto/hash/Hash;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->bytes:[B

    return-object v0
.end method

.method protected getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p1, "algorithmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No native \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' MessageDigest instance available on the current JVM."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/crypto/UnknownAlgorithmException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/crypto/UnknownAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected hash([B)[B
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/shiro/crypto/hash/AbstractHash;->hash([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected hash([B[B)[B
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "salt"    # [B

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/crypto/hash/AbstractHash;->hash([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected hash([B[BI)[B
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "salt"    # [B
    .param p3, "hashIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/AbstractHash;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/shiro/crypto/hash/AbstractHash;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 213
    .local v0, "digest":Ljava/security/MessageDigest;
    if-eqz p2, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 215
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 217
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 218
    .local v1, "hashed":[B
    add-int/lit8 v3, p3, -0x1

    .line 220
    .local v3, "iterations":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 221
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 222
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0
.end method

.method public setBytes([B)V
    .locals 1
    .param p1, "alreadyHashedBytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 160
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->bytes:[B

    .line 161
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->hexEncoded:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->base64Encoded:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->base64Encoded:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/AbstractHash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->base64Encoded:Ljava/lang/String;

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->base64Encoded:Ljava/lang/String;

    return-object v0
.end method

.method public toHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->hexEncoded:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/AbstractHash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/codec/Hex;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->hexEncoded:Ljava/lang/String;

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/AbstractHash;->hexEncoded:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/AbstractHash;->toHex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
