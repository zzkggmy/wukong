.class public Lorg/apache/shiro/io/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field public static final CLASSPATH_PREFIX:Ljava/lang/String; = "classpath:"

.field public static final FILE_PREFIX:Ljava/lang/String; = "file:"

.field public static final URL_PREFIX:Ljava/lang/String; = "url:"

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/shiro/io/ResourceUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/io/ResourceUtils;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 175
    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/shiro/io/ResourceUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Error closing input stream."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInputStreamForPath(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "resourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v1, "classpath:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {p0}, Lorg/apache/shiro/io/ResourceUtils;->stripPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/io/ResourceUtils;->loadFromClassPath(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 138
    .local v0, "is":Ljava/io/InputStream;
    :goto_0
    if-nez v0, :cond_3

    .line 139
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] could not be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    const-string v1, "url:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-static {p0}, Lorg/apache/shiro/io/ResourceUtils;->stripPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/io/ResourceUtils;->loadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 131
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v1, "file:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-static {p0}, Lorg/apache/shiro/io/ResourceUtils;->stripPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/io/ResourceUtils;->loadFromFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 135
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {p0}, Lorg/apache/shiro/io/ResourceUtils;->loadFromFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 142
    :cond_3
    return-object v0
.end method

.method public static hasResourcePrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p0, :cond_1

    const-string v0, "classpath:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "url:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadFromClassPath(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lorg/apache/shiro/io/ResourceUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "Opening resource from class path [{}]"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-static {p0}, Lorg/apache/shiro/util/ClassUtils;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static loadFromFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lorg/apache/shiro/io/ResourceUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lorg/apache/shiro/io/ResourceUtils;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 149
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static loadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "urlPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v1, Lorg/apache/shiro/io/ResourceUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Opening url {}"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public static resourceExists(Ljava/lang/String;)Z
    .locals 5
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 93
    .local v1, "exists":Z
    :try_start_0
    invoke-static {p0}, Lorg/apache/shiro/io/ResourceUtils;->getInputStreamForPath(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 94
    const/4 v1, 0x1

    .line 98
    if-eqz v2, :cond_0

    .line 100
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 98
    if-eqz v2, :cond_0

    .line 100
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v3

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 100
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 102
    :cond_1
    :goto_1
    throw v3

    .line 101
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private static stripPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
