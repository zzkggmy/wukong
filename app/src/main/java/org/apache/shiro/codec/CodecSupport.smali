.class public abstract Lorg/apache/shiro/codec/CodecSupport;
.super Ljava/lang/Object;
.source "CodecSupport.java"


# static fields
.field public static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert source ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to byte array using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "encoding \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/codec/CodecException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/codec/CodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toBytes([C)[B
    .locals 2
    .param p0, "chars"    # [C

    .prologue
    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toBytes([CLjava/lang/String;)[B
    .locals 1
    .param p0, "chars"    # [C
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, p1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toChars([B)[C
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 140
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/shiro/codec/CodecSupport;->toChars([BLjava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static toChars([BLjava/lang/String;)[C
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p0, p1}, Lorg/apache/shiro/codec/CodecSupport;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 108
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/shiro/codec/CodecSupport;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/codec/CodecException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert byte array to String with encoding \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/codec/CodecException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/codec/CodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected isByteSource(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 178
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    instance-of v0, p1, [C

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/shiro/util/ByteSource;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected objectToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation only supports conversion to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "byte[] if the source is of type byte[], char[], String, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/util/ByteSource;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " File or InputStream.  The instance provided as a method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "argument is of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].  If you would like to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this argument type to a byte[], you can 1) convert the argument to one of the supported types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yourself and then use that as the method argument or 2) subclass "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and override the objectToBytes(Object o) method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/codec/CodecException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/codec/CodecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toBytes(Ljava/io/File;)[B
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File argument cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v2}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to acquire InputStream for file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/codec/CodecException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/codec/CodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected toBytes(Ljava/io/InputStream;)[B
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0x200

    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "InputStream argument cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_0
    const/16 v0, 0x200

    .line 270
    .local v0, "BUFFER_SIZE":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 271
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-array v1, v5, [B

    .line 274
    .local v1, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 275
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 278
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v3

    .line 279
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lorg/apache/shiro/codec/CodecException;

    invoke-direct {v5, v3}, Lorg/apache/shiro/codec/CodecException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 282
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 286
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 288
    :goto_2
    throw v5

    .line 277
    .restart local v2    # "bytesRead":I
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 282
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 286
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 288
    :goto_4
    return-object v5

    .line 283
    :catch_1
    move-exception v6

    goto :goto_3

    .line 287
    :catch_2
    move-exception v6

    goto :goto_4

    .line 283
    .end local v2    # "bytesRead":I
    :catch_3
    move-exception v6

    goto :goto_1

    .line 287
    :catch_4
    move-exception v6

    goto :goto_2
.end method

.method protected toBytes(Ljava/lang/Object;)[B
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string v0, "Argument for byte conversion cannot be null."

    .line 197
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    instance-of v1, p1, [B

    if-eqz v1, :cond_1

    .line 200
    check-cast p1, [B

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [B

    .line 212
    :goto_0
    return-object p1

    .line 201
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lorg/apache/shiro/util/ByteSource;

    if-eqz v1, :cond_2

    .line 202
    check-cast p1, Lorg/apache/shiro/util/ByteSource;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/shiro/util/ByteSource;->getBytes()[B

    move-result-object p1

    goto :goto_0

    .line 203
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, [C

    if-eqz v1, :cond_3

    .line 204
    check-cast p1, [C

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {p1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes([C)[B

    move-result-object p1

    goto :goto_0

    .line 205
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 206
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 207
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_5

    .line 208
    check-cast p1, Ljava/io/File;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/io/File;)[B

    move-result-object p1

    goto :goto_0

    .line 209
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v1, p1, Ljava/io/InputStream;

    if-eqz v1, :cond_6

    .line 210
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/codec/CodecSupport;->toBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    goto :goto_0

    .line 212
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/shiro/codec/CodecSupport;->objectToBytes(Ljava/lang/Object;)[B

    move-result-object p1

    goto :goto_0
.end method

.method protected toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    const-string v0, "Argument for String conversion cannot be null."

    .line 231
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    instance-of v1, p1, [B

    if-eqz v1, :cond_1

    .line 234
    check-cast p1, [B

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/shiro/codec/CodecSupport;->toString([B)Ljava/lang/String;

    move-result-object p1

    .line 240
    :goto_0
    return-object p1

    .line 235
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, [C

    if-eqz v1, :cond_2

    .line 236
    new-instance v1, Ljava/lang/String;

    check-cast p1, [C

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [C

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v1

    goto :goto_0

    .line 237
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 238
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/shiro/codec/CodecSupport;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
