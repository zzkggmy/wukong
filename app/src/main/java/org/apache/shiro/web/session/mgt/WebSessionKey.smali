.class public Lorg/apache/shiro/web/session/mgt/WebSessionKey;
.super Lorg/apache/shiro/session/mgt/DefaultSessionKey;
.source "WebSessionKey.java"

# interfaces
.implements Lorg/apache/shiro/web/util/RequestPairSource;


# instance fields
.field private final servletRequest:Ljavax/servlet/ServletRequest;

.field private final servletResponse:Ljavax/servlet/ServletResponse;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/io/Serializable;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 49
    invoke-direct {p0, p2, p3}, Lorg/apache/shiro/web/session/mgt/WebSessionKey;-><init>(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/session/mgt/WebSessionKey;->setSessionId(Ljava/io/Serializable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionKey;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "request argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "response argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lorg/apache/shiro/web/session/mgt/WebSessionKey;->servletRequest:Ljavax/servlet/ServletRequest;

    .line 45
    iput-object p2, p0, Lorg/apache/shiro/web/session/mgt/WebSessionKey;->servletResponse:Ljavax/servlet/ServletResponse;

    .line 46
    return-void
.end method


# virtual methods
.method public getServletRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/shiro/web/session/mgt/WebSessionKey;->servletRequest:Ljavax/servlet/ServletRequest;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/shiro/web/session/mgt/WebSessionKey;->servletResponse:Ljavax/servlet/ServletResponse;

    return-object v0
.end method
