.class public Lorg/apache/shiro/crypto/hash/DefaultHashService;
.super Ljava/lang/Object;
.source "DefaultHashService.java"

# interfaces
.implements Lorg/apache/shiro/crypto/hash/ConfigurableHashService;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private generatePublicSalt:Z

.field private iterations:I

.field private privateSalt:Lorg/apache/shiro/util/ByteSource;

.field private rng:Lorg/apache/shiro/crypto/RandomNumberGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/shiro/crypto/hash/DefaultHashService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, "SHA-512"

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->algorithmName:Ljava/lang/String;

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->iterations:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->generatePublicSalt:Z

    .line 114
    new-instance v0, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/SecureRandomNumberGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->rng:Lorg/apache/shiro/crypto/RandomNumberGenerator;

    .line 115
    return-void
.end method


# virtual methods
.method protected combine(Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/util/ByteSource;
    .locals 10
    .param p1, "privateSalt"    # Lorg/apache/shiro/util/ByteSource;
    .param p2, "publicSalt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 248
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v6

    .line 249
    .local v6, "privateSaltBytes":[B
    :goto_0
    if-eqz v6, :cond_2

    array-length v7, v6

    .line 251
    .local v7, "privateSaltLength":I
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v8

    .line 252
    .local v8, "publicSaltBytes":[B
    :goto_2
    if-eqz v8, :cond_0

    array-length v1, v8

    .line 254
    .local v1, "extraBytesLength":I
    :cond_0
    add-int v5, v7, v1

    .line 256
    .local v5, "length":I
    if-gtz v5, :cond_4

    .line 272
    :goto_3
    return-object v9

    .end local v1    # "extraBytesLength":I
    .end local v5    # "length":I
    .end local v6    # "privateSaltBytes":[B
    .end local v7    # "privateSaltLength":I
    .end local v8    # "publicSaltBytes":[B
    :cond_1
    move-object v6, v9

    .line 248
    goto :goto_0

    .restart local v6    # "privateSaltBytes":[B
    :cond_2
    move v7, v1

    .line 249
    goto :goto_1

    .restart local v7    # "privateSaltLength":I
    :cond_3
    move-object v8, v9

    .line 251
    goto :goto_2

    .line 260
    .restart local v1    # "extraBytesLength":I
    .restart local v5    # "length":I
    .restart local v8    # "publicSaltBytes":[B
    :cond_4
    new-array v0, v5, [B

    .line 262
    .local v0, "combined":[B
    const/4 v2, 0x0

    .line 263
    .local v2, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_4
    if-ge v4, v7, :cond_6

    .line 264
    sget-boolean v9, Lorg/apache/shiro/crypto/hash/DefaultHashService;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    if-nez v6, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 265
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, v6, v4

    aput-byte v9, v0, v3

    .line 263
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 267
    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_8

    .line 268
    sget-boolean v9, Lorg/apache/shiro/crypto/hash/DefaultHashService;->$assertionsDisabled:Z

    if-nez v9, :cond_7

    if-nez v8, :cond_7

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 269
    :cond_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, v8, v4

    aput-byte v9, v0, v3

    .line 267
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_5

    .line 272
    :cond_8
    invoke-static {v0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v9

    goto :goto_3
.end method

.method public computeHash(Lorg/apache/shiro/crypto/hash/HashRequest;)Lorg/apache/shiro/crypto/hash/Hash;
    .locals 9
    .param p1, "request"    # Lorg/apache/shiro/crypto/hash/HashRequest;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/HashRequest;->getSource()Lorg/apache/shiro/util/ByteSource;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/HashRequest;->getSource()Lorg/apache/shiro/util/ByteSource;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    :cond_0
    const/4 v5, 0x0

    .line 171
    :goto_0
    return-object v5

    .line 155
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getAlgorithmName(Lorg/apache/shiro/crypto/hash/HashRequest;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "algorithmName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/HashRequest;->getSource()Lorg/apache/shiro/util/ByteSource;

    move-result-object v7

    .line 157
    .local v7, "source":Lorg/apache/shiro/util/ByteSource;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getIterations(Lorg/apache/shiro/crypto/hash/HashRequest;)I

    move-result v2

    .line 159
    .local v2, "iterations":I
    invoke-virtual {p0, p1}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getPublicSalt(Lorg/apache/shiro/crypto/hash/HashRequest;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v4

    .line 160
    .local v4, "publicSalt":Lorg/apache/shiro/util/ByteSource;
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getPrivateSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v3

    .line 161
    .local v3, "privateSalt":Lorg/apache/shiro/util/ByteSource;
    invoke-virtual {p0, v3, v4}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->combine(Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v6

    .line 163
    .local v6, "salt":Lorg/apache/shiro/util/ByteSource;
    new-instance v1, Lorg/apache/shiro/crypto/hash/SimpleHash;

    invoke-direct {v1, v0, v7, v6, v2}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 165
    .local v1, "computed":Lorg/apache/shiro/crypto/hash/Hash;
    new-instance v5, Lorg/apache/shiro/crypto/hash/SimpleHash;

    invoke-direct {v5, v0}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;)V

    .line 166
    .local v5, "result":Lorg/apache/shiro/crypto/hash/SimpleHash;
    invoke-interface {v1}, Lorg/apache/shiro/crypto/hash/Hash;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/shiro/crypto/hash/SimpleHash;->setBytes([B)V

    .line 167
    invoke-virtual {v5, v2}, Lorg/apache/shiro/crypto/hash/SimpleHash;->setIterations(I)V

    .line 169
    invoke-virtual {v5, v4}, Lorg/apache/shiro/crypto/hash/SimpleHash;->setSalt(Lorg/apache/shiro/util/ByteSource;)V

    goto :goto_0
.end method

.method protected getAlgorithmName(Lorg/apache/shiro/crypto/hash/HashRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lorg/apache/shiro/crypto/hash/HashRequest;

    .prologue
    .line 175
    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/HashRequest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getHashAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    return-object v0
.end method

.method public getHashAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getHashIterations()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->iterations:I

    return v0
.end method

.method protected getIterations(Lorg/apache/shiro/crypto/hash/HashRequest;)I
    .locals 4
    .param p1, "request"    # Lorg/apache/shiro/crypto/hash/HashRequest;

    .prologue
    const/4 v3, 0x1

    .line 183
    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/HashRequest;->getIterations()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 184
    .local v0, "iterations":I
    if-ge v0, v3, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getHashIterations()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 187
    :cond_0
    return v0
.end method

.method public getPrivateSalt()Lorg/apache/shiro/util/ByteSource;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->privateSalt:Lorg/apache/shiro/util/ByteSource;

    return-object v0
.end method

.method protected getPublicSalt(Lorg/apache/shiro/crypto/hash/HashRequest;)Lorg/apache/shiro/util/ByteSource;
    .locals 5
    .param p1, "request"    # Lorg/apache/shiro/crypto/hash/HashRequest;

    .prologue
    .line 214
    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/HashRequest;->getSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v2

    .line 216
    .local v2, "publicSalt":Lorg/apache/shiro/util/ByteSource;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v2

    .line 233
    .end local v2    # "publicSalt":Lorg/apache/shiro/util/ByteSource;
    .local v3, "publicSalt":Lorg/apache/shiro/util/ByteSource;
    :goto_0
    return-object v3

    .line 221
    .end local v3    # "publicSalt":Lorg/apache/shiro/util/ByteSource;
    .restart local v2    # "publicSalt":Lorg/apache/shiro/util/ByteSource;
    :cond_0
    const/4 v2, 0x0

    .line 224
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getPrivateSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    .line 225
    .local v0, "privateSalt":Lorg/apache/shiro/util/ByteSource;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 229
    .local v1, "privateSaltExists":Z
    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->isGeneratePublicSalt()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    :cond_1
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->getRandomNumberGenerator()Lorg/apache/shiro/crypto/RandomNumberGenerator;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/shiro/crypto/RandomNumberGenerator;->nextBytes()Lorg/apache/shiro/util/ByteSource;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 233
    .end local v2    # "publicSalt":Lorg/apache/shiro/util/ByteSource;
    .restart local v3    # "publicSalt":Lorg/apache/shiro/util/ByteSource;
    goto :goto_0

    .line 225
    .end local v1    # "privateSaltExists":Z
    .end local v3    # "publicSalt":Lorg/apache/shiro/util/ByteSource;
    .restart local v2    # "publicSalt":Lorg/apache/shiro/util/ByteSource;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRandomNumberGenerator()Lorg/apache/shiro/crypto/RandomNumberGenerator;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->rng:Lorg/apache/shiro/crypto/RandomNumberGenerator;

    return-object v0
.end method

.method public isGeneratePublicSalt()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->generatePublicSalt:Z

    return v0
.end method

.method public setGeneratePublicSalt(Z)V
    .locals 0
    .param p1, "generatePublicSalt"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->generatePublicSalt:Z

    .line 343
    return-void
.end method

.method public setHashAlgorithmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->algorithmName:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setHashIterations(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 292
    iput p1, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->iterations:I

    .line 293
    return-void
.end method

.method public setPrivateSalt(Lorg/apache/shiro/util/ByteSource;)V
    .locals 0
    .param p1, "privateSalt"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 284
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->privateSalt:Lorg/apache/shiro/util/ByteSource;

    .line 285
    return-void
.end method

.method public setRandomNumberGenerator(Lorg/apache/shiro/crypto/RandomNumberGenerator;)V
    .locals 0
    .param p1, "rng"    # Lorg/apache/shiro/crypto/RandomNumberGenerator;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/shiro/crypto/hash/DefaultHashService;->rng:Lorg/apache/shiro/crypto/RandomNumberGenerator;

    .line 301
    return-void
.end method
