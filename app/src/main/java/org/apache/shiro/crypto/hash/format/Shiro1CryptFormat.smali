.class public Lorg/apache/shiro/crypto/hash/format/Shiro1CryptFormat;
.super Ljava/lang/Object;
.source "Shiro1CryptFormat.java"

# interfaces
.implements Lorg/apache/shiro/crypto/hash/format/ModularCryptFormat;
.implements Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;


# static fields
.field public static final ID:Ljava/lang/String; = "shiro1"

.field public static final MCF_PREFIX:Ljava/lang/String; = "$shiro1$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/shiro/crypto/hash/Hash;)Ljava/lang/String;
    .locals 6
    .param p1, "hash"    # Lorg/apache/shiro/crypto/hash/Hash;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    const/4 v4, 0x0

    .line 117
    :goto_0
    return-object v4

    .line 105
    :cond_0
    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/Hash;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "algorithmName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/Hash;->getSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v2

    .line 107
    .local v2, "salt":Lorg/apache/shiro/util/ByteSource;
    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/Hash;->getIterations()I

    move-result v1

    .line 108
    .local v1, "iterations":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "$shiro1$"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1

    .line 111
    invoke-interface {v2}, Lorg/apache/shiro/util/ByteSource;->toBase64()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {p1}, Lorg/apache/shiro/crypto/hash/Hash;->toBase64()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "shiro1"

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Hash;
    .locals 19
    .param p1, "formatted"    # Ljava/lang/String;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v6, 0x0

    .line 164
    :goto_0
    return-object v6

    .line 124
    :cond_0
    const-string v17, "$shiro1$"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 126
    const-string v11, "The argument is not a valid \'shiro1\' formatted hash."

    .line 127
    .local v11, "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 130
    .end local v11    # "msg":Ljava/lang/String;
    :cond_1
    const-string v17, "$shiro1$"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 131
    .local v16, "suffix":Ljava/lang/String;
    const-string v17, "\\$"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "parts":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    add-int/lit8 v7, v17, -0x1

    .line 135
    .local v7, "i":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget-object v4, v12, v7

    .line 137
    .local v4, "digestBase64":Ljava/lang/String;
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    aget-object v14, v12, v8

    .line 138
    .local v14, "saltBase64":Ljava/lang/String;
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "i":I
    .restart local v8    # "i":I
    aget-object v10, v12, v7

    .line 139
    .local v10, "iterationsString":Ljava/lang/String;
    aget-object v2, v12, v8

    .line 141
    .local v2, "algorithmName":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 142
    .local v3, "digest":[B
    const/4 v13, 0x0

    .line 144
    .local v13, "salt":Lorg/apache/shiro/util/ByteSource;
    invoke-static {v14}, Lorg/apache/shiro/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 145
    invoke-static {v14}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v15

    .line 146
    .local v15, "saltBytes":[B
    invoke-static {v15}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object v13

    .line 151
    .end local v15    # "saltBytes":[B
    :cond_2
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 157
    .local v9, "iterations":I
    new-instance v6, Lorg/apache/shiro/crypto/hash/SimpleHash;

    invoke-direct {v6, v2}, Lorg/apache/shiro/crypto/hash/SimpleHash;-><init>(Ljava/lang/String;)V

    .line 158
    .local v6, "hash":Lorg/apache/shiro/crypto/hash/SimpleHash;
    invoke-virtual {v6, v3}, Lorg/apache/shiro/crypto/hash/SimpleHash;->setBytes([B)V

    .line 159
    if-eqz v13, :cond_3

    .line 160
    invoke-virtual {v6, v13}, Lorg/apache/shiro/crypto/hash/SimpleHash;->setSalt(Lorg/apache/shiro/util/ByteSource;)V

    .line 162
    :cond_3
    invoke-virtual {v6, v9}, Lorg/apache/shiro/crypto/hash/SimpleHash;->setIterations(I)V

    goto :goto_0

    .line 152
    .end local v6    # "hash":Lorg/apache/shiro/crypto/hash/SimpleHash;
    .end local v9    # "iterations":I
    :catch_0
    move-exception v5

    .line 153
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unable to parse formatted hash string: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 154
    .restart local v11    # "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v0, v11, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method
