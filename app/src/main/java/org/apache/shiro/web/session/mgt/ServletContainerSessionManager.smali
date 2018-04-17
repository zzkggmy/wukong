.class public Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;
.super Ljava/lang/Object;
.source "ServletContainerSessionManager.java"

# interfaces
.implements Lorg/apache/shiro/web/session/mgt/WebSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private getHost(Lorg/apache/shiro/session/mgt/SessionContext;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 86
    invoke-interface {p1}, Lorg/apache/shiro/session/mgt/SessionContext;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 88
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 89
    .local v1, "request":Ljavax/servlet/ServletRequest;
    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v1}, Ljavax/servlet/ServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    .line 93
    .end local v1    # "request":Ljavax/servlet/ServletRequest;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createSession(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "httpSession"    # Ljavax/servlet/http/HttpSession;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lorg/apache/shiro/web/session/HttpServletSession;

    invoke-direct {v0, p1, p2}, Lorg/apache/shiro/web/session/HttpServletSession;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 5
    .param p1, "sessionContext"    # Lorg/apache/shiro/session/mgt/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    const-string v2, "SessionContext must be an HTTP compatible implementation."

    .line 103
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v3

    .line 108
    .local v3, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 113
    .local v1, "httpSession":Ljavax/servlet/http/HttpSession;
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;->getHost(Lorg/apache/shiro/session/mgt/SessionContext;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;->createSession(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)Lorg/apache/shiro/session/Session;

    move-result-object v4

    return-object v4
.end method

.method public getSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 5
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/SessionException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    const-string v1, "SessionKey must be an HTTP compatible implementation."

    .line 70
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v2

    .line 75
    .local v2, "request":Ljavax/servlet/http/HttpServletRequest;
    const/4 v3, 0x0

    .line 77
    .local v3, "session":Lorg/apache/shiro/session/Session;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    .line 78
    .local v0, "httpSession":Ljavax/servlet/http/HttpSession;
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v2}, Ljavax/servlet/http/HttpServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;->createSession(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)Lorg/apache/shiro/session/Session;

    move-result-object v3

    .line 82
    :cond_1
    return-object v3
.end method

.method public isServletContainerSessions()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public start(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;->createSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method
