.class public Lorg/apache/shiro/util/SimpleByteSource;
.super Ljava/lang/Object;
.source "SimpleByteSource.java"

# interfaces
.implements Lorg/apache/shiro/util/ByteSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/util/SimpleByteSource$1;,
        Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private cachedBase64:Ljava/lang/String;

.field private cachedHex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;-><init>(Lorg/apache/shiro/util/SimpleByteSource$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;->getBytes(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;-><init>(Lorg/apache/shiro/util/SimpleByteSource$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/util/ByteSource;)V
    .locals 1
    .param p1, "source"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface {p1}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    .line 86
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    .line 55
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes([C)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    .line 65
    return-void
.end method

.method public static isCompatible(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 129
    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, [C

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/shiro/util/ByteSource;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/File;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 167
    if-ne p1, p0, :cond_0

    .line 168
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    .line 170
    :cond_0
    instance-of v1, p1, Lorg/apache/shiro/util/ByteSource;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 171
    check-cast v0, Lorg/apache/shiro/util/ByteSource;

    .line 172
    .local v0, "bs":Lorg/apache/shiro/util/ByteSource;
    invoke-virtual {p0}, Lorg/apache/shiro/util/SimpleByteSource;->getBytes()[B

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 174
    .end local v0    # "bs":Lorg/apache/shiro/util/ByteSource;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->bytes:[B

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

.method public toBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->cachedBase64:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/apache/shiro/util/SimpleByteSource;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->cachedBase64:Ljava/lang/String;

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->cachedBase64:Ljava/lang/String;

    return-object v0
.end method

.method public toHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->cachedHex:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/apache/shiro/util/SimpleByteSource;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/codec/Hex;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->cachedHex:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/util/SimpleByteSource;->cachedHex:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/apache/shiro/util/SimpleByteSource;->toBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
