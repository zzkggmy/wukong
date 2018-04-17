.class public Lorg/apache/shiro/util/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/util/ClassUtils$ExceptionIgnoringAccessor;,
        Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;
    }
.end annotation


# static fields
.field private static final CLASS_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

.field private static final SYSTEM_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

.field private static final THREAD_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/util/ClassUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    .line 46
    new-instance v0, Lorg/apache/shiro/util/ClassUtils$1;

    invoke-direct {v0}, Lorg/apache/shiro/util/ClassUtils$1;-><init>()V

    sput-object v0, Lorg/apache/shiro/util/ClassUtils;->THREAD_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    .line 56
    new-instance v0, Lorg/apache/shiro/util/ClassUtils$2;

    invoke-direct {v0}, Lorg/apache/shiro/util/ClassUtils$2;-><init>()V

    sput-object v0, Lorg/apache/shiro/util/ClassUtils;->CLASS_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    .line 66
    new-instance v0, Lorg/apache/shiro/util/ClassUtils$3;

    invoke-direct {v0}, Lorg/apache/shiro/util/ClassUtils$3;-><init>()V

    sput-object v0, Lorg/apache/shiro/util/ClassUtils;->SYSTEM_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/util/UnknownClassException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v2, Lorg/apache/shiro/util/ClassUtils;->THREAD_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    invoke-interface {v2, p0}, Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "clazz":Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 130
    sget-object v2, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    sget-object v2, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load class named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from the thread context ClassLoader.  Trying the current ClassLoader..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 134
    :cond_0
    sget-object v2, Lorg/apache/shiro/util/ClassUtils;->CLASS_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    invoke-interface {v2, p0}, Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    :cond_1
    if-nez v0, :cond_3

    .line 138
    sget-object v2, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    sget-object v2, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load class named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from the current ClassLoader.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Trying the system/application ClassLoader..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 142
    :cond_2
    sget-object v2, Lorg/apache/shiro/util/ClassUtils;->SYSTEM_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    invoke-interface {v2, p0}, Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    :cond_3
    if-nez v0, :cond_4

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load class named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] from the thread context, current, or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "system/application ClassLoaders.  All heuristics have been exhausted.  Class could not be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/util/UnknownClassException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/util/UnknownClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "argTypes"    # [Ljava/lang/Class;

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->THREAD_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    invoke-interface {v1, p0}, Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 90
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] was not found via the thread context ClassLoader.  Trying the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "current ClassLoader..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 94
    :cond_0
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->CLASS_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    invoke-interface {v1, p0}, Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 97
    :cond_1
    if-nez v0, :cond_3

    .line 98
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] was not found via the current class loader.  Trying the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "system/application ClassLoader..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 102
    :cond_2
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->SYSTEM_CL_ACCESSOR:Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;

    invoke-interface {v1, p0}, Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 105
    :cond_3
    if-nez v0, :cond_4

    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    sget-object v1, Lorg/apache/shiro/util/ClassUtils;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] was not found via the thread context, current, or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "system/application ClassLoaders.  All heuristics have been exhausted.  Returning null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 110
    :cond_4
    return-object v0
.end method

.method public static varargs instantiate(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "ctor"    # Ljava/lang/reflect/Constructor;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate Permission instance with constructor ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/util/InstantiationException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/util/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fullyQualifiedClassName"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-static {p0}, Lorg/apache/shiro/util/ClassUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Lorg/apache/shiro/util/UnknownClassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v1, 0x1

    .line 159
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/apache/shiro/util/UnknownClassException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    const-string v1, "Class method parameter cannot be null."

    .line 174
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/shiro/util/InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate class ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/shiro/util/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 184
    array-length v3, p1

    new-array v0, v3, [Ljava/lang/Class;

    .line 185
    .local v0, "argTypes":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 186
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/shiro/util/ClassUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 189
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    invoke-static {v1, p1}, Lorg/apache/shiro/util/ClassUtils;->instantiate(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "fqcn"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Lorg/apache/shiro/util/ClassUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/ClassUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 168
    invoke-static {p0}, Lorg/apache/shiro/util/ClassUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/shiro/util/ClassUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
