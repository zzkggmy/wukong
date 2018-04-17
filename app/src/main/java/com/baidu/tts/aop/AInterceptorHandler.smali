.class public abstract Lcom/baidu/tts/aop/AInterceptorHandler;
.super Ljava/lang/Object;
.source "AInterceptorHandler.java"

# interfaces
.implements Lcom/baidu/tts/aop/IInterceptorHandler;


# static fields
.field public static final DEFAULT:Ljava/lang/Object;

.field public static final END:Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/aop/IInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Object;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 107
    sget-object v1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 109
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-lt v1, v2, :cond_1

    .line 115
    :cond_0
    return-object v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/aop/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/tts/aop/IInterceptor;->before(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    sget-object v3, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 119
    sget-object v1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    if-gez v1, :cond_0

    .line 124
    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/aop/IInterceptor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/tts/aop/IInterceptor;->after(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 121
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public bind(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxied"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/aop/IInterceptor;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/tts/aop/IInterceptor;>;"
    iput-object p1, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->a:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    const-string v1, "AInterceptorHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proxy="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public canIntercept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/baidu/tts/aop/AInterceptorHandler;->canIntercept(Ljava/lang/String;)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, p3}, Lcom/baidu/tts/aop/AInterceptorHandler;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 74
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/baidu/tts/aop/AInterceptorHandler;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public registerMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method

.method public unregisterMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptorHandler;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method
