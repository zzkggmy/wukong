.class public Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;
.super Lorg/apache/shiro/session/mgt/DefaultSessionContext;
.source "DefaultWebSessionContext.java"

# interfaces
.implements Lorg/apache/shiro/web/session/mgt/WebSessionContext;


# static fields
.field private static final SERVLET_REQUEST:Ljava/lang/String;

.field private static final SERVLET_RESPONSE:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x3728a1e7ba79c740L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SERVLET_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->SERVLET_REQUEST:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SERVLET_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->SERVLET_RESPONSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;-><init>(Ljava/util/Map;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getServletRequest()Ljavax/servlet/ServletRequest;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->SERVLET_REQUEST:Ljava/lang/String;

    const-class v1, Ljavax/servlet/ServletRequest;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletRequest;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->SERVLET_RESPONSE:Ljava/lang/String;

    const-class v1, Ljavax/servlet/ServletResponse;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public setServletRequest(Ljavax/servlet/ServletRequest;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    sget-object v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->SERVLET_REQUEST:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-void
.end method

.method public setServletResponse(Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    sget-object v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->SERVLET_RESPONSE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    return-void
.end method
