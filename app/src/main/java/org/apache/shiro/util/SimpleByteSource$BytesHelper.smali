.class final Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;
.super Lorg/apache/shiro/codec/CodecSupport;
.source "SimpleByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/util/SimpleByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/apache/shiro/codec/CodecSupport;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/shiro/util/SimpleByteSource$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/shiro/util/SimpleByteSource$1;

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes(Ljava/io/File;)[B
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;->toBytes(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/io/InputStream;)[B
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lorg/apache/shiro/util/SimpleByteSource$BytesHelper;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method
