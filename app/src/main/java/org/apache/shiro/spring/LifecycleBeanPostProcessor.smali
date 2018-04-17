.class public Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;
.super Ljava/lang/Object;
.source "LifecycleBeanPostProcessor.java"

# interfaces
.implements Lorg/springframework/beans/factory/config/DestructionAwareBeanPostProcessor;
.implements Lorg/springframework/core/PriorityOrdered;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private order:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;->order:I

    .line 72
    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;->order:I

    return v0
.end method

.method public postProcessAfterInitialization(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/beans/BeansException;
        }
    .end annotation

    .prologue
    .line 103
    return-object p1
.end method

.method public postProcessBeforeDestruction(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/beans/BeansException;
        }
    .end annotation

    .prologue
    .line 115
    instance-of v1, p1, Lorg/apache/shiro/util/Destroyable;

    if-eqz v1, :cond_1

    .line 117
    :try_start_0
    sget-object v1, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying bean ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 121
    :cond_0
    check-cast p1, Lorg/apache/shiro/util/Destroyable;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/shiro/util/Destroyable;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_1
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/springframework/beans/FatalBeanException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error destroying bean ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/springframework/beans/FatalBeanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public postProcessBeforeInitialization(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/beans/BeansException;
        }
    .end annotation

    .prologue
    .line 83
    instance-of v2, p1, Lorg/apache/shiro/util/Initializable;

    if-eqz v2, :cond_1

    .line 85
    :try_start_0
    sget-object v2, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    sget-object v2, Lorg/apache/shiro/spring/LifecycleBeanPostProcessor;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing bean ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 89
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/shiro/util/Initializable;

    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/shiro/util/Initializable;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_1
    return-object p1

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/springframework/beans/FatalBeanException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error initializing bean ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/springframework/beans/FatalBeanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
