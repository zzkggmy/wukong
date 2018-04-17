.class public final Lorg/apache/shiro/util/ByteSource$Util;
.super Ljava/lang/Object;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/util/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes(Ljava/io/File;)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 124
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource;

    invoke-direct {v0, p0}, Lorg/apache/shiro/util/SimpleByteSource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static bytes(Ljava/io/InputStream;)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 134
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource;

    invoke-direct {v0, p0}, Lorg/apache/shiro/util/SimpleByteSource;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static bytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;
    .locals 3
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 p0, 0x0

    .line 183
    .end local p0    # "source":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 166
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Lorg/apache/shiro/util/ByteSource$Util;->isCompatible(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to heuristically acquire bytes for object of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].  If this type is indeed a byte-backed data type, you might "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "want to write your own ByteSource implementation to extract its bytes explicitly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    .line 173
    check-cast p0, [B

    .end local p0    # "source":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([B)Lorg/apache/shiro/util/ByteSource;

    move-result-object p0

    goto :goto_0

    .line 174
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Lorg/apache/shiro/util/ByteSource;

    if-eqz v1, :cond_3

    .line 175
    check-cast p0, Lorg/apache/shiro/util/ByteSource;

    goto :goto_0

    .line 176
    :cond_3
    instance-of v1, p0, [C

    if-eqz v1, :cond_4

    .line 177
    check-cast p0, [C

    .end local p0    # "source":Ljava/lang/Object;
    check-cast p0, [C

    invoke-static {p0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes([C)Lorg/apache/shiro/util/ByteSource;

    move-result-object p0

    goto :goto_0

    .line 178
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 179
    check-cast p0, Ljava/lang/String;

    .end local p0    # "source":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes(Ljava/lang/String;)Lorg/apache/shiro/util/ByteSource;

    move-result-object p0

    goto :goto_0

    .line 180
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_5
    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_6

    .line 181
    check-cast p0, Ljava/io/File;

    .end local p0    # "source":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes(Ljava/io/File;)Lorg/apache/shiro/util/ByteSource;

    move-result-object p0

    goto :goto_0

    .line 182
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_6
    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_7

    .line 183
    check-cast p0, Ljava/io/InputStream;

    .end local p0    # "source":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/util/ByteSource$Util;->bytes(Ljava/io/InputStream;)Lorg/apache/shiro/util/ByteSource;

    move-result-object p0

    goto :goto_0

    .line 185
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Encountered unexpected byte source.  This is a bug - please notify the Shiro developer list asap (the isCompatible implementation does not reflect this method\'s implementation)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static bytes(Ljava/lang/String;)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource;

    invoke-direct {v0, p0}, Lorg/apache/shiro/util/SimpleByteSource;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bytes(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p0, "source"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 114
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource;

    invoke-direct {v0, p0}, Lorg/apache/shiro/util/SimpleByteSource;-><init>(Lorg/apache/shiro/util/ByteSource;)V

    return-object v0
.end method

.method public static bytes([B)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 82
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource;

    invoke-direct {v0, p0}, Lorg/apache/shiro/util/SimpleByteSource;-><init>([B)V

    return-object v0
.end method

.method public static bytes([C)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p0, "chars"    # [C

    .prologue
    .line 93
    new-instance v0, Lorg/apache/shiro/util/SimpleByteSource;

    invoke-direct {v0, p0}, Lorg/apache/shiro/util/SimpleByteSource;-><init>([C)V

    return-object v0
.end method

.method public static isCompatible(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;

    .prologue
    .line 149
    invoke-static {p0}, Lorg/apache/shiro/util/SimpleByteSource;->isCompatible(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
