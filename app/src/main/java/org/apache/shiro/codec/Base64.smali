.class public Lorg/apache/shiro/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:B = 0x3dt

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 56
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    .line 106
    new-array v2, v8, [B

    sput-object v2, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    .line 117
    const/16 v2, 0x40

    new-array v2, v2, [B

    sput-object v2, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 123
    sget-object v2, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 126
    sget-object v2, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 128
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 129
    sget-object v2, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 131
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 132
    sget-object v2, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 135
    :cond_3
    sget-object v2, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 136
    sget-object v2, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 138
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 139
    sget-object v2, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 142
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 143
    sget-object v2, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 146
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_6

    .line 147
    sget-object v2, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 150
    :cond_6
    sget-object v2, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v6

    .line 151
    sget-object v2, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v7

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .param p0, "base64Encoded"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {p0}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 414
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->decode([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    .prologue
    .line 425
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 428
    array-length v12, p0

    if-nez v12, :cond_1

    .line 429
    const/4 v12, 0x0

    new-array v5, v12, [B

    .line 479
    :cond_0
    :goto_0
    return-object v5

    .line 432
    :cond_1
    array-length v12, p0

    div-int/lit8 v11, v12, 0x4

    .line 438
    .local v11, "numberQuadruple":I
    const/4 v6, 0x0

    .line 442
    .local v6, "encodedIndex":I
    array-length v8, p0

    .line 444
    .local v8, "lastData":I
    :cond_2
    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_3

    .line 445
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_2

    .line 446
    const/4 v12, 0x0

    new-array v5, v12, [B

    goto :goto_0

    .line 449
    :cond_3
    sub-int v12, v8, v11

    new-array v5, v12, [B

    .line 452
    .local v5, "decodedData":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_0

    .line 453
    mul-int/lit8 v4, v7, 0x4

    .line 454
    .local v4, "dataIndex":I
    add-int/lit8 v12, v4, 0x2

    aget-byte v9, p0, v12

    .line 455
    .local v9, "marker0":B
    add-int/lit8 v12, v4, 0x3

    aget-byte v10, p0, v12

    .line 457
    .local v10, "marker1":B
    sget-object v12, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    aget-byte v13, p0, v4

    aget-byte v0, v12, v13

    .line 458
    .local v0, "b1":B
    sget-object v12, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v1, v12, v13

    .line 460
    .local v1, "b2":B
    const/16 v12, 0x3d

    if-eq v9, v12, :cond_4

    const/16 v12, 0x3d

    if-eq v10, v12, :cond_4

    .line 462
    sget-object v12, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 463
    .local v2, "b3":B
    sget-object v12, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    aget-byte v3, v12, v10

    .line 465
    .local v3, "b4":B
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 466
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 467
    add-int/lit8 v12, v6, 0x2

    shl-int/lit8 v13, v2, 0x6

    or-int/2addr v13, v3

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 477
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 452
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 468
    :cond_4
    const/16 v12, 0x3d

    if-ne v9, v12, :cond_5

    .line 470
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    goto :goto_2

    .line 473
    :cond_5
    sget-object v12, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 474
    .restart local v2    # "b3":B
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 475
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_2
.end method

.method public static decodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "base64Encoded"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-static {p0}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 392
    .local v0, "encodedBytes":[B
    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->decodeToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decodeToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "base64Encoded"    # [B

    .prologue
    .line 402
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->decode([B)[B

    move-result-object v0

    .line 403
    .local v0, "decoded":[B
    invoke-static {v0}, Lorg/apache/shiro/codec/CodecSupport;->toString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static discardNonBase64([B)[B
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 490
    array-length v8, p0

    new-array v4, v8, [B

    .line 491
    .local v4, "groomedData":[B
    const/4 v2, 0x0

    .line 493
    .local v2, "bytesCopied":I
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v3, v2

    .end local v2    # "bytesCopied":I
    .local v3, "bytesCopied":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, v1, v5

    .line 494
    .local v0, "aByte":B
    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->isBase64(B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 495
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bytesCopied":I
    .restart local v2    # "bytesCopied":I
    aput-byte v0, v4, v3

    .line 493
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "bytesCopied":I
    .restart local v3    # "bytesCopied":I
    goto :goto_0

    .line 499
    .end local v0    # "aByte":B
    :cond_0
    new-array v7, v3, [B

    .line 501
    .local v7, "packedData":[B
    invoke-static {v4, v9, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    return-object v7

    .end local v7    # "packedData":[B
    .restart local v0    # "aByte":B
    :cond_1
    move v2, v3

    .end local v3    # "bytesCopied":I
    .restart local v2    # "bytesCopied":I
    goto :goto_1
.end method

.method static discardWhitespace([B)[B
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 203
    array-length v8, p0

    new-array v4, v8, [B

    .line 204
    .local v4, "groomedData":[B
    const/4 v2, 0x0

    .line 206
    .local v2, "bytesCopied":I
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v3, v2

    .end local v2    # "bytesCopied":I
    .local v3, "bytesCopied":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, v1, v5

    .line 207
    .local v0, "aByte":B
    sparse-switch v0, :sswitch_data_0

    .line 214
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bytesCopied":I
    .restart local v2    # "bytesCopied":I
    aput-byte v0, v4, v3

    .line 206
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "bytesCopied":I
    .restart local v3    # "bytesCopied":I
    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 212
    .end local v3    # "bytesCopied":I
    .restart local v2    # "bytesCopied":I
    goto :goto_1

    .line 218
    .end local v0    # "aByte":B
    .end local v2    # "bytesCopied":I
    .restart local v3    # "bytesCopied":I
    :cond_0
    new-array v7, v3, [B

    .line 220
    .local v7, "packedData":[B
    invoke-static {v4, v9, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    return-object v7

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encode([B)[B
    .locals 1
    .param p0, "pArray"    # [B

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/shiro/codec/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[B
    .locals 34
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 266
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v8, v0

    .line 267
    .local v8, "binaryDataLength":J
    const-wide/16 v30, 0x8

    mul-long v22, v8, v30

    .line 268
    .local v22, "lengthDataBits":J
    const-wide/16 v30, 0x18

    rem-long v18, v22, v30

    .line 269
    .local v18, "fewerThan24bits":J
    const-wide/16 v30, 0x18

    div-long v26, v22, v30

    .line 271
    .local v26, "tripletCount":J
    const/4 v7, 0x0

    .line 273
    .local v7, "chunckCount":I
    const-wide/16 v30, 0x0

    cmp-long v30, v18, v30

    if-eqz v30, :cond_1

    .line 275
    const-wide/16 v30, 0x1

    add-long v30, v30, v26

    const-wide/16 v32, 0x4

    mul-long v14, v30, v32

    .line 284
    .local v14, "encodedDataLengthLong":J
    :goto_0
    if-eqz p1, :cond_0

    .line 286
    sget-object v30, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    if-nez v30, :cond_2

    const/4 v7, 0x0

    .line 288
    :goto_1
    sget-object v30, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    mul-int v30, v30, v7

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v14, v14, v30

    .line 291
    :cond_0
    const-wide/32 v30, 0x7fffffff

    cmp-long v30, v14, v30

    if-lez v30, :cond_3

    .line 292
    new-instance v30, Ljava/lang/IllegalArgumentException;

    const-string v31, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 278
    .end local v14    # "encodedDataLengthLong":J
    :cond_1
    const-wide/16 v30, 0x4

    mul-long v14, v26, v30

    .restart local v14    # "encodedDataLengthLong":J
    goto :goto_0

    .line 286
    :cond_2
    long-to-float v0, v14

    move/from16 v30, v0

    const/high16 v31, 0x42980000    # 76.0f

    div-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v7, v0

    goto :goto_1

    .line 295
    :cond_3
    long-to-int v13, v14

    .line 296
    .local v13, "encodedDataLength":I
    new-array v12, v13, [B

    .line 300
    .local v12, "encodedData":[B
    const/16 v16, 0x0

    .line 303
    .local v16, "encodedIndex":I
    const/16 v24, 0x4c

    .line 304
    .local v24, "nextSeparatorIndex":I
    const/4 v10, 0x0

    .line 307
    .local v10, "chunksSoFar":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v30, v30, v26

    if-gez v30, :cond_8

    .line 308
    mul-int/lit8 v11, v17, 0x3

    .line 309
    .local v11, "dataIndex":I
    aget-byte v4, p0, v11

    .line 310
    .local v4, "b1":B
    add-int/lit8 v30, v11, 0x1

    aget-byte v5, p0, v30

    .line 311
    .local v5, "b2":B
    add-int/lit8 v30, v11, 0x2

    aget-byte v6, p0, v30

    .line 315
    .local v6, "b3":B
    and-int/lit8 v30, v5, 0xf

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 316
    .local v21, "l":B
    and-int/lit8 v30, v4, 0x3

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 318
    .local v20, "k":B
    and-int/lit8 v30, v4, -0x80

    if-nez v30, :cond_5

    shr-int/lit8 v30, v4, 0x2

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 319
    .local v25, "val1":B
    :goto_3
    and-int/lit8 v30, v5, -0x80

    if-nez v30, :cond_6

    shr-int/lit8 v30, v5, 0x4

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v28, v0

    .line 320
    .local v28, "val2":B
    :goto_4
    and-int/lit8 v30, v6, -0x80

    if-nez v30, :cond_7

    shr-int/lit8 v30, v6, 0x6

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v29, v0

    .line 322
    .local v29, "val3":B
    :goto_5
    sget-object v30, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    aget-byte v30, v30, v25

    aput-byte v30, v12, v16

    .line 326
    add-int/lit8 v30, v16, 0x1

    sget-object v31, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v32, v20, 0x4

    or-int v32, v32, v28

    aget-byte v31, v31, v32

    aput-byte v31, v12, v30

    .line 327
    add-int/lit8 v30, v16, 0x2

    sget-object v31, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v32, v21, 0x2

    or-int v32, v32, v29

    aget-byte v31, v31, v32

    aput-byte v31, v12, v30

    .line 328
    add-int/lit8 v30, v16, 0x3

    sget-object v31, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v32, v6, 0x3f

    aget-byte v31, v31, v32

    aput-byte v31, v12, v30

    .line 330
    add-int/lit8 v16, v16, 0x4

    .line 333
    if-eqz p1, :cond_4

    .line 335
    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 336
    sget-object v30, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    const/16 v31, 0x0

    sget-object v32, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v32

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    add-int/lit8 v10, v10, 0x1

    .line 338
    add-int/lit8 v30, v10, 0x1

    mul-int/lit8 v30, v30, 0x4c

    sget-object v31, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    mul-int v31, v31, v10

    add-int v24, v30, v31

    .line 339
    sget-object v30, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int v16, v16, v30

    .line 307
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 318
    .end local v25    # "val1":B
    .end local v28    # "val2":B
    .end local v29    # "val3":B
    :cond_5
    shr-int/lit8 v30, v4, 0x2

    move/from16 v0, v30

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v25, v0

    goto/16 :goto_3

    .line 319
    .restart local v25    # "val1":B
    :cond_6
    shr-int/lit8 v30, v5, 0x4

    move/from16 v0, v30

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v28, v0

    goto/16 :goto_4

    .line 320
    .restart local v28    # "val2":B
    :cond_7
    shr-int/lit8 v30, v6, 0x6

    move/from16 v0, v30

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v29, v0

    goto/16 :goto_5

    .line 345
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v11    # "dataIndex":I
    .end local v20    # "k":B
    .end local v21    # "l":B
    .end local v25    # "val1":B
    .end local v28    # "val2":B
    :cond_8
    mul-int/lit8 v11, v17, 0x3

    .line 347
    .restart local v11    # "dataIndex":I
    const-wide/16 v30, 0x8

    cmp-long v30, v18, v30

    if-nez v30, :cond_c

    .line 348
    aget-byte v4, p0, v11

    .line 349
    .restart local v4    # "b1":B
    and-int/lit8 v30, v4, 0x3

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 352
    .restart local v20    # "k":B
    and-int/lit8 v30, v4, -0x80

    if-nez v30, :cond_b

    shr-int/lit8 v30, v4, 0x2

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 353
    .restart local v25    # "val1":B
    :goto_6
    sget-object v30, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    aget-byte v30, v30, v25

    aput-byte v30, v12, v16

    .line 354
    add-int/lit8 v30, v16, 0x1

    sget-object v31, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v32, v20, 0x4

    aget-byte v31, v31, v32

    aput-byte v31, v12, v30

    .line 355
    add-int/lit8 v30, v16, 0x2

    const/16 v31, 0x3d

    aput-byte v31, v12, v30

    .line 356
    add-int/lit8 v30, v16, 0x3

    const/16 v31, 0x3d

    aput-byte v31, v12, v30

    .line 373
    .end local v4    # "b1":B
    .end local v20    # "k":B
    .end local v25    # "val1":B
    :cond_9
    :goto_7
    if-eqz p1, :cond_a

    .line 375
    if-ge v10, v7, :cond_a

    .line 376
    sget-object v30, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    const/16 v31, 0x0

    sget-object v32, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    sub-int v32, v13, v32

    sget-object v33, Lorg/apache/shiro/codec/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    :cond_a
    return-object v12

    .line 352
    .restart local v4    # "b1":B
    .restart local v20    # "k":B
    :cond_b
    shr-int/lit8 v30, v4, 0x2

    move/from16 v0, v30

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v25, v0

    goto :goto_6

    .line 357
    .end local v4    # "b1":B
    .end local v20    # "k":B
    :cond_c
    const-wide/16 v30, 0x10

    cmp-long v30, v18, v30

    if-nez v30, :cond_9

    .line 359
    aget-byte v4, p0, v11

    .line 360
    .restart local v4    # "b1":B
    add-int/lit8 v30, v11, 0x1

    aget-byte v5, p0, v30

    .line 361
    .restart local v5    # "b2":B
    and-int/lit8 v30, v5, 0xf

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 362
    .restart local v21    # "l":B
    and-int/lit8 v30, v4, 0x3

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 364
    .restart local v20    # "k":B
    and-int/lit8 v30, v4, -0x80

    if-nez v30, :cond_d

    shr-int/lit8 v30, v4, 0x2

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 365
    .restart local v25    # "val1":B
    :goto_8
    and-int/lit8 v30, v5, -0x80

    if-nez v30, :cond_e

    shr-int/lit8 v30, v5, 0x4

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v28, v0

    .line 367
    .restart local v28    # "val2":B
    :goto_9
    sget-object v30, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    aget-byte v30, v30, v25

    aput-byte v30, v12, v16

    .line 368
    add-int/lit8 v30, v16, 0x1

    sget-object v31, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v32, v20, 0x4

    or-int v32, v32, v28

    aget-byte v31, v31, v32

    aput-byte v31, v12, v30

    .line 369
    add-int/lit8 v30, v16, 0x2

    sget-object v31, Lorg/apache/shiro/codec/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v32, v21, 0x2

    aget-byte v31, v31, v32

    aput-byte v31, v12, v30

    .line 370
    add-int/lit8 v30, v16, 0x3

    const/16 v31, 0x3d

    aput-byte v31, v12, v30

    goto/16 :goto_7

    .line 364
    .end local v25    # "val1":B
    .end local v28    # "val2":B
    :cond_d
    shr-int/lit8 v30, v4, 0x2

    move/from16 v0, v30

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v25, v0

    goto :goto_8

    .line 365
    .restart local v25    # "val1":B
    :cond_e
    shr-int/lit8 v30, v5, 0x4

    move/from16 v0, v30

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v28, v0

    goto :goto_9
.end method

.method public static encodeChunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 244
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/shiro/codec/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 233
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->encode([B)[B

    move-result-object v0

    .line 234
    .local v0, "encoded":[B
    invoke-static {v0}, Lorg/apache/shiro/codec/CodecSupport;->toString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    .prologue
    const/4 v0, 0x1

    .line 161
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    if-ltz p0, :cond_2

    sget-object v1, Lorg/apache/shiro/codec/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBase64([B)Z
    .locals 4
    .param p0, "arrayOctect"    # [B

    .prologue
    const/4 v2, 0x1

    .line 180
    invoke-static {p0}, Lorg/apache/shiro/codec/Base64;->discardWhitespace([B)[B

    move-result-object p0

    .line 182
    array-length v1, p0

    .line 183
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 188
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 189
    aget-byte v3, p0, v0

    invoke-static {v3}, Lorg/apache/shiro/codec/Base64;->isBase64(B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    const/4 v2, 0x0

    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
