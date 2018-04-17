.class public Lorg/apache/shiro/crypto/hash/SimpleHash;
.super Lorg/apache/shiro/crypto/hash/AbstractHash;
.source "SimpleHash.java"


# static fields
.field private static final DEFAULT_ITERATIONS:I = 0x1


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private transient base64Encoded:Ljava/lang/String;

.field private bytes:[B

.field private transient hexEncoded:Ljava/lang/String;

.field private iterations:I

.field private salt:Lorg/apache/shiro/util/ByteSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lorg/apache/shiro/crypto/hash/AbstractHash;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->hexEncoded:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->base64Encoded:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->algorithmName:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->iterations:I

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;,
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "salt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;,
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "salt"    # Ljava/lang/Object;
    .param p4, "hashIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;,
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Lorg/apache/shiro/crypto/hash/AbstractHash;-><init>()V

    .line 70
    iput-object v2, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->hexEncoded:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->base64Encoded:Ljava/lang/String;

    .line 167
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "algorithmName argument cannot be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->algorithmName:Ljava/lang/String;

    .line 171
    const/4 v2, 0x1

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->iterations:I

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "saltBytes":Lorg/apache/shiro/util/ByteSource;
    if-eqz p3, :cond_1

    .line 174
    invoke-virtual {p0, p3}, Lorg/apache/shiro/crypto/hash/SimpleHash;->convertSaltToBytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    .line 175
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->salt:Lorg/apache/shiro/util/ByteSource;

    .line 177
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/shiro/crypto/hash/SimpleHash;->convertSourceToBytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v1

    .line 178
    .local v1, "sourceBytes":Lorg/apache/shiro/util/ByteSource;
    invoke-direct {p0, v1, v0, p4}, Lorg/apache/shiro/crypto/hash/SimpleHash;->hash(Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/util/ByteSource;I)V

    .line 179
    return-void
.end method

.method private hash(Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/util/ByteSource;I)V
    .locals 3
    .param p1, "source"    # Lorg/apache/shiro/util/ByteSource;
    .param p2, "salt"    # Lorg/apache/shiro/util/ByteSource;
    .param p3, "hashIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;,
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    .line 228
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v1

    .line 229
    .local v1, "saltBytes":[B
    :goto_0
    invoke-interface {p1}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/shiro/crypto/hash/SimpleHash;->hash([B[BI)[B

    move-result-object v0

    .line 230
    .local v0, "hashedBytes":[B
    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;->setBytes([B)V

    .line 231
    return-void

    .line 228
    .end local v0    # "hashedBytes":[B
    .end local v1    # "saltBytes":[B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected convertSaltToBytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p1, "salt"    # Ljava/lang/Object;

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/SimpleHash;->toByteSource(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method protected convertSourceToBytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/SimpleHash;->toByteSource(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 413
    instance-of v1, p1, Lorg/apache/shiro/crypto/hash/Hash;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 414
    check-cast v0, Lorg/apache/shiro/crypto/hash/Hash;

    .line 415
    .local v0, "other":Lorg/apache/shiro/crypto/hash/Hash;
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/SimpleHash;->getBytes()[B

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/shiro/crypto/hash/Hash;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 417
    .end local v0    # "other":Lorg/apache/shiro/crypto/hash/Hash;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->bytes:[B

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
    .line 303
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
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

    .line 306
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/crypto/UnknownAlgorithmException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/crypto/UnknownAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->iterations:I

    return v0
.end method

.method public getSalt()Lorg/apache/shiro/util/ByteSource;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->salt:Lorg/apache/shiro/util/ByteSource;

    return-object v0
.end method

.method protected hash([B)[B
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/shiro/crypto/hash/SimpleHash;->hash([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected hash([B[B)[B
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/crypto/UnknownAlgorithmException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;->hash([B[BI)[B

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
    .line 343
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/SimpleHash;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/shiro/crypto/hash/SimpleHash;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 344
    .local v0, "digest":Ljava/security/MessageDigest;
    if-eqz p2, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 346
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 348
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 349
    .local v1, "hashed":[B
    add-int/lit8 v3, p3, -0x1

    .line 351
    .local v3, "iterations":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 352
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 353
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBytes([B)V
    .locals 1
    .param p1, "alreadyHashedBytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 263
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->bytes:[B

    .line 264
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->hexEncoded:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->base64Encoded:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setIterations(I)V
    .locals 1
    .param p1, "iterations"    # I

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->iterations:I

    .line 279
    return-void
.end method

.method public setSalt(Lorg/apache/shiro/util/ByteSource;)V
    .locals 0
    .param p1, "salt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 291
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->salt:Lorg/apache/shiro/util/ByteSource;

    .line 292
    return-void
.end method

.method public toBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->base64Encoded:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/SimpleHash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->base64Encoded:Ljava/lang/String;

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->base64Encoded:Ljava/lang/String;

    return-object v0
.end method

.method protected toByteSource(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    const/4 p1, 0x0

    .line 224
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 220
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lorg/apache/shiro/util/ByteSource;

    if-eqz v1, :cond_1

    .line 221
    check-cast p1, Lorg/apache/shiro/util/ByteSource;

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/SimpleHash;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 224
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object p1

    goto :goto_0
.end method

.method public toHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->hexEncoded:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/SimpleHash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/codec/Hex;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->hexEncoded:Ljava/lang/String;

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/SimpleHash;->hexEncoded:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/SimpleHash;->toHex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
