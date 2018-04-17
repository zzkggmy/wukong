.class public Lcom/baidu/tts/o/a;
.super Ljava/lang/Object;
.source "CommonUtility.java"


# direct methods
.method public static a([B[BI)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-static {p1}, Lcom/baidu/tts/o/a;->a([B)[I

    move-result-object v2

    .line 60
    const/4 v0, 0x0

    .line 61
    array-length v3, p0

    if-nez v3, :cond_0

    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 63
    :cond_0
    array-length v3, p0

    if-lt p2, v3, :cond_6

    move v0, v1

    .line 64
    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    .line 67
    :cond_2
    if-lez v0, :cond_3

    aget-byte v3, p1, v0

    aget-byte v4, p0, p2

    if-ne v3, v4, :cond_1

    .line 70
    :cond_3
    aget-byte v3, p1, v0

    aget-byte v4, p0, p2

    if-ne v3, v4, :cond_4

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 73
    :cond_4
    array-length v3, p1

    if-ne v0, v3, :cond_5

    .line 74
    array-length v0, p1

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_5
    add-int/lit8 p2, p2, 0x1

    :cond_6
    array-length v3, p0

    if-lt p2, v3, :cond_2

    move v0, v1

    .line 77
    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static a([BII)[B
    .locals 4

    .prologue
    .line 143
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 150
    :cond_1
    return-object v0

    .line 146
    :cond_2
    sub-int v0, p2, p1

    new-array v0, v0, [B

    move v1, p1

    .line 147
    :goto_0
    if-ge v1, p2, :cond_1

    .line 148
    sub-int v2, v1, p1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a([S)[B
    .locals 5

    .prologue
    .line 42
    array-length v1, p0

    .line 43
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    aget-short v4, p0, v0

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([B)[I
    .locals 5

    .prologue
    .line 85
    array-length v0, p0

    new-array v2, v0, [I

    .line 87
    const/4 v1, 0x0

    .line 88
    const/4 v0, 0x1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_1

    .line 98
    return-object v2

    .line 90
    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    .line 89
    :cond_1
    if-lez v1, :cond_2

    aget-byte v3, p0, v1

    aget-byte v4, p0, v0

    if-ne v3, v4, :cond_0

    .line 92
    :cond_2
    aget-byte v3, p0, v1

    aget-byte v4, p0, v0

    if-ne v3, v4, :cond_3

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 95
    :cond_3
    aput v1, v2, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
