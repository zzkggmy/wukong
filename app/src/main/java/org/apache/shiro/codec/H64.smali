.class public Lorg/apache/shiro/codec/H64;
.super Ljava/lang/Object;
.source "H64.java"


# static fields
.field private static final itoa64:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/codec/H64;->itoa64:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/Appendable;C)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/Appendable;
    .param p1, "c"    # C

    .prologue
    .line 82
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to append character to internal buffer."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encodeAndAppend(ILjava/lang/Appendable;I)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "buf"    # Ljava/lang/Appendable;
    .param p2, "numChars"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 97
    sget-object v1, Lorg/apache/shiro/codec/H64;->itoa64:[C

    and-int/lit8 v2, p0, 0x3f

    aget-char v1, v1, v2

    invoke-static {p1, v1}, Lorg/apache/shiro/codec/H64;->append(Ljava/lang/Appendable;C)V

    .line 98
    shr-int/lit8 p0, p0, 0x6

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 109
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    .line 127
    :goto_0
    return-object v7

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v4, p0

    .line 114
    .local v4, "length":I
    rem-int/lit8 v5, v4, 0x3

    .line 115
    .local v5, "remainder":I
    const/4 v2, 0x0

    .line 116
    .local v2, "i":I
    sub-int v3, v4, v5

    .line 118
    .local v3, "last3ByteIndex":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 119
    const/4 v7, 0x3

    invoke-static {p0, v2, v7}, Lorg/apache/shiro/codec/H64;->toInt([BII)I

    move-result v6

    .line 120
    .local v6, "twentyFourBit":I
    const/4 v7, 0x4

    invoke-static {v6, v1, v7}, Lorg/apache/shiro/codec/H64;->encodeAndAppend(ILjava/lang/Appendable;I)V

    .line 118
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 122
    .end local v6    # "twentyFourBit":I
    :cond_2
    if-lez v5, :cond_3

    .line 124
    invoke-static {p0, v2, v5}, Lorg/apache/shiro/codec/H64;->toInt([BII)I

    move-result v0

    .line 125
    .local v0, "a":I
    add-int/lit8 v7, v5, 0x1

    invoke-static {v0, v1, v7}, Lorg/apache/shiro/codec/H64;->encodeAndAppend(ILjava/lang/Appendable;I)V

    .line 127
    .end local v0    # "a":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static toInt([BII)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "numBytes"    # I

    .prologue
    .line 57
    const/4 v3, 0x1

    if-lt p2, v3, :cond_0

    const/4 v3, 0x4

    if-le p2, v3, :cond_1

    .line 58
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "numBytes must be between 1 and 4."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_1
    aget-byte v3, p0, p1

    invoke-static {v3}, Lorg/apache/shiro/codec/H64;->toShort(B)S

    move-result v2

    .line 61
    .local v2, "val":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 62
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    invoke-static {v3}, Lorg/apache/shiro/codec/H64;->toShort(B)S

    move-result v1

    .line 63
    .local v1, "s":S
    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :pswitch_0
    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    goto :goto_1

    .line 65
    :pswitch_1
    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    goto :goto_1

    .line 66
    :pswitch_2
    shl-int/lit8 v3, v1, 0x18

    or-int/2addr v2, v3

    goto :goto_1

    .line 69
    .end local v1    # "s":S
    :cond_2
    return v2

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static toShort(B)S
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 53
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method
