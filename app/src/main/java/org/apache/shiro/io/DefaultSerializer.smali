.class public Lorg/apache/shiro/io/DefaultSerializer;
.super Ljava/lang/Object;
.source "DefaultSerializer.java"

# interfaces
.implements Lorg/apache/shiro/io/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/shiro/io/Serializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lorg/apache/shiro/io/DefaultSerializer;, "Lorg/apache/shiro/io/DefaultSerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Object;
    .locals 7
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/io/SerializationException;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/shiro/io/DefaultSerializer;, "Lorg/apache/shiro/io/DefaultSerializer<TT;>;"
    if-nez p1, :cond_0

    .line 69
    const-string v4, "argument cannot be null."

    .line 70
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 72
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 73
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Lorg/apache/shiro/io/ClassResolvingObjectInputStream;

    invoke-direct {v5, v1}, Lorg/apache/shiro/io/ClassResolvingObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "deserialized":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v2

    .line 80
    .end local v2    # "deserialized":Ljava/lang/Object;, "TT;"
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Unable to deserialze argument byte array."

    .line 82
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Lorg/apache/shiro/io/SerializationException;

    invoke-direct {v6, v4, v3}, Lorg/apache/shiro/io/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/io/SerializationException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/shiro/io/DefaultSerializer;, "Lorg/apache/shiro/io/DefaultSerializer<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 40
    const-string v3, "argument cannot be null."

    .line 41
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 43
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 51
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to serialize object ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "In order for the DefaultSerializer to serialize this object, the ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "class must implement java.io.Serializable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/shiro/io/SerializationException;

    invoke-direct {v5, v3, v2}, Lorg/apache/shiro/io/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
