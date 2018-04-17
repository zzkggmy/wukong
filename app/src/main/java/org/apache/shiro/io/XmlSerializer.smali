.class public Lorg/apache/shiro/io/XmlSerializer;
.super Ljava/lang/Object;
.source "XmlSerializer.java"

# interfaces
.implements Lorg/apache/shiro/io/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Object;
    .locals 5
    .param p1, "serialized"    # [B

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/beans/XMLDecoder;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/beans/XMLDecoder;-><init>(Ljava/io/InputStream;)V

    .line 75
    .local v1, "decoder":Ljava/beans/XMLDecoder;
    invoke-virtual {v1}, Ljava/beans/XMLDecoder;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/beans/XMLDecoder;->close()V

    .line 77
    return-object v2
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const-string v2, "argument cannot be null."

    .line 50
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/beans/XMLEncoder;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/beans/XMLEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 55
    .local v1, "encoder":Ljava/beans/XMLEncoder;
    invoke-virtual {v1, p1}, Ljava/beans/XMLEncoder;->writeObject(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1}, Ljava/beans/XMLEncoder;->close()V

    .line 58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
