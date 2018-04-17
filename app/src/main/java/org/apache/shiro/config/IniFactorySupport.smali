.class public abstract Lorg/apache/shiro/config/IniFactorySupport;
.super Lorg/apache/shiro/util/AbstractFactory;
.source "IniFactorySupport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/shiro/util/AbstractFactory",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INI_RESOURCE_PATH:Ljava/lang/String; = "classpath:shiro.ini"

.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private ini:Lorg/apache/shiro/config/Ini;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/shiro/config/IniFactorySupport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/config/IniFactorySupport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/shiro/config/IniFactorySupport;, "Lorg/apache/shiro/config/IniFactorySupport<TT;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/AbstractFactory;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/shiro/config/IniFactorySupport;, "Lorg/apache/shiro/config/IniFactorySupport<TT;>;"
    invoke-direct {p0}, Lorg/apache/shiro/util/AbstractFactory;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/shiro/config/IniFactorySupport;->ini:Lorg/apache/shiro/config/Ini;

    .line 47
    return-void
.end method

.method public static loadDefaultClassPathIni()Lorg/apache/shiro/config/Ini;
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    const-string v1, "classpath:shiro.ini"

    invoke-static {v1}, Lorg/apache/shiro/io/ResourceUtils;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lorg/apache/shiro/config/IniFactorySupport;->log:Lorg/slf4j/Logger;

    const-string v2, "Found shiro.ini at the root of the classpath."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lorg/apache/shiro/config/Ini;

    .end local v0    # "ini":Lorg/apache/shiro/config/Ini;
    invoke-direct {v0}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 69
    .restart local v0    # "ini":Lorg/apache/shiro/config/Ini;
    const-string v1, "classpath:shiro.ini"

    invoke-virtual {v0, v1}, Lorg/apache/shiro/config/Ini;->loadFromPath(Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lorg/apache/shiro/config/IniFactorySupport;->log:Lorg/slf4j/Logger;

    const-string v2, "shiro.ini found at the root of the classpath, but it did not contain any data."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract createDefaultInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public createInstance()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/shiro/config/IniFactorySupport;, "Lorg/apache/shiro/config/IniFactorySupport<TT;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/config/IniFactorySupport;->resolveIni()Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 112
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    sget-object v3, Lorg/apache/shiro/config/IniFactorySupport;->log:Lorg/slf4j/Logger;

    const-string v4, "No populated Ini available.  Creating a default instance."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/shiro/config/IniFactorySupport;->createDefaultInstance()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "instance":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " implementation did not return a default instance in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "the event of a null/empty Ini configuration.  This is required to support the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Factory interface.  Please check your implementation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/apache/shiro/config/IniFactorySupport;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating instance from Ini ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v0}, Lorg/apache/shiro/config/IniFactorySupport;->createInstance(Lorg/apache/shiro/config/Ini;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .restart local v1    # "instance":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " implementation did not return a constructed instance from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "the createInstance(Ini) method implementation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method protected abstract createInstance(Lorg/apache/shiro/config/Ini;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/config/Ini;",
            ")TT;"
        }
    .end annotation
.end method

.method public getIni()Lorg/apache/shiro/config/Ini;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/shiro/config/IniFactorySupport;, "Lorg/apache/shiro/config/IniFactorySupport<TT;>;"
    iget-object v0, p0, Lorg/apache/shiro/config/IniFactorySupport;->ini:Lorg/apache/shiro/config/Ini;

    return-object v0
.end method

.method protected resolveIni()Lorg/apache/shiro/config/Ini;
    .locals 4

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/shiro/config/IniFactorySupport;, "Lorg/apache/shiro/config/IniFactorySupport<TT;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/config/IniFactorySupport;->getIni()Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 90
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lorg/apache/shiro/config/IniFactorySupport;->log:Lorg/slf4j/Logger;

    const-string v2, "Null or empty Ini instance.  Falling back to the default {} file."

    const-string v3, "classpath:shiro.ini"

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lorg/apache/shiro/config/IniFactorySupport;->loadDefaultClassPathIni()Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 94
    :cond_0
    return-object v0
.end method

.method public setIni(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/shiro/config/IniFactorySupport;, "Lorg/apache/shiro/config/IniFactorySupport<TT;>;"
    iput-object p1, p0, Lorg/apache/shiro/config/IniFactorySupport;->ini:Lorg/apache/shiro/config/Ini;

    .line 55
    return-void
.end method
