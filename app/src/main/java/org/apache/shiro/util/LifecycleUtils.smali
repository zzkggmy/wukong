.class public abstract Lorg/apache/shiro/util/LifecycleUtils;
.super Ljava/lang/Object;
.source "LifecycleUtils.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/shiro/util/LifecycleUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/util/LifecycleUtils;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy(Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 66
    instance-of v0, p0, Lorg/apache/shiro/util/Destroyable;

    if-eqz v0, :cond_1

    .line 67
    check-cast p0, Lorg/apache/shiro/util/Destroyable;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Lorg/apache/shiro/util/Destroyable;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static destroy(Ljava/util/Collection;)V
    .locals 3
    .param p0, "c"    # Ljava/util/Collection;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static destroy(Lorg/apache/shiro/util/Destroyable;)V
    .locals 4
    .param p0, "d"    # Lorg/apache/shiro/util/Destroyable;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {p0}, Lorg/apache/shiro/util/Destroyable;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/apache/shiro/util/LifecycleUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to cleanly destroy instance ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/shiro/util/LifecycleUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static init(Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/ShiroException;
        }
    .end annotation

    .prologue
    .line 39
    instance-of v0, p0, Lorg/apache/shiro/util/Initializable;

    if-eqz v0, :cond_0

    .line 40
    check-cast p0, Lorg/apache/shiro/util/Initializable;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/util/LifecycleUtils;->init(Lorg/apache/shiro/util/Initializable;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static init(Ljava/util/Collection;)V
    .locals 3
    .param p0, "c"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/ShiroException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 61
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/shiro/util/LifecycleUtils;->init(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init(Lorg/apache/shiro/util/Initializable;)V
    .locals 0
    .param p0, "initializable"    # Lorg/apache/shiro/util/Initializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/ShiroException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-interface {p0}, Lorg/apache/shiro/util/Initializable;->init()V

    .line 46
    return-void
.end method
