.class abstract Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;
.super Ljava/lang/Object;
.source "ClassUtils.java"

# interfaces
.implements Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/util/ClassUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ExceptionIgnoringAccessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/shiro/util/ClassUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/shiro/util/ClassUtils$1;

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doGetClassLoader()Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected final getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 249
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;->doGetClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/shiro/util/ClassUtils;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lorg/apache/shiro/util/ClassUtils;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Unable to acquire ClassLoader."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 241
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 244
    :cond_0
    return-object v1
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "fqcn"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {p0}, Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 226
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    :cond_0
    :goto_0
    return-object v1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lorg/apache/shiro/util/ClassUtils;->access$100()Lorg/slf4j/Logger;

    move-result-object v3

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-static {}, Lorg/apache/shiro/util/ClassUtils;->access$100()Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load clazz named ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] from class loader ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0
.end method
