.class public Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;
.super Lorg/apache/shiro/session/mgt/DefaultSessionManager;
.source "DefaultWebSessionManager.java"

# interfaces
.implements Lorg/apache/shiro/web/session/mgt/WebSessionManager;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private sessionIdCookie:Lorg/apache/shiro/web/servlet/Cookie;

.field private sessionIdCookieEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/shiro/web/servlet/SimpleCookie;

    const-string v1, "JSESSIONID"

    invoke-direct {v0, v1}, Lorg/apache/shiro/web/servlet/SimpleCookie;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "cookie":Lorg/apache/shiro/web/servlet/Cookie;
    invoke-interface {v0, v2}, Lorg/apache/shiro/web/servlet/Cookie;->setHttpOnly(Z)V

    .line 58
    iput-object v0, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookie:Lorg/apache/shiro/web/servlet/Cookie;

    .line 59
    iput-boolean v2, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookieEnabled:Z

    .line 60
    return-void
.end method

.method private getReferencedSessionId(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/io/Serializable;
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getSessionIdCookieValue(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 114
    sget-object v2, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_SOURCE:Ljava/lang/String;

    const-string v3, "cookie"

    invoke-interface {p1, v2, v3}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 137
    sget-object v2, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    sget-object v2, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_IS_VALID:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v3}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_1
    return-object v0

    .line 120
    :cond_2
    const-string v2, "JSESSIONID"

    invoke-direct {p0, p1, v2}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getUriPathSegmentParamValue(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-nez v0, :cond_3

    .line 124
    invoke-direct {p0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getSessionIdName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_3

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_0

    .line 132
    sget-object v2, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_SOURCE:Ljava/lang/String;

    const-string v3, "url"

    invoke-interface {p1, v2, v3}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSessionIdCookieValue(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->isSessionIdCookieEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    sget-object v2, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Session ID cookie is disabled - session id will not be acquired from a request cookie."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-object v1

    .line 102
    :cond_0
    instance-of v2, p1, Ljavax/servlet/http/HttpServletRequest;

    if-nez v2, :cond_1

    .line 103
    sget-object v2, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Current request is not an HttpServletRequest - cannot get session ID cookie.  Returning null."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 106
    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .line 107
    .local v0, "httpRequest":Ljavax/servlet/http/HttpServletRequest;
    invoke-virtual {p0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getSessionIdCookie()Lorg/apache/shiro/web/servlet/Cookie;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletResponse;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/shiro/web/servlet/Cookie;->readValue(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSessionIdName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookie:Lorg/apache/shiro/web/servlet/Cookie;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookie:Lorg/apache/shiro/web/servlet/Cookie;

    invoke-interface {v1}, Lorg/apache/shiro/web/servlet/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "name":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 197
    const-string v0, "JSESSIONID"

    .line 199
    :cond_0
    return-object v0

    .line 195
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUriPathSegmentParamValue(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "servletRequest"    # Ljavax/servlet/ServletRequest;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3b

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 150
    instance-of v6, p1, Ljavax/servlet/http/HttpServletRequest;

    if-nez v6, :cond_1

    move-object v4, v5

    .line 190
    :cond_0
    :goto_0
    return-object v4

    :cond_1
    move-object v3, p1

    .line 153
    check-cast v3, Ljavax/servlet/http/HttpServletRequest;

    .line 154
    .local v3, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "uri":Ljava/lang/String;
    if-nez v4, :cond_2

    move-object v4, v5

    .line 156
    goto :goto_0

    .line 159
    :cond_2
    const/16 v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 160
    .local v2, "queryStartIndex":I
    if-ltz v2, :cond_3

    .line 161
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 164
    :cond_3
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 165
    .local v1, "index":I
    if-gez v1, :cond_4

    move-object v4, v5

    .line 167
    goto :goto_0

    .line 172
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "TOKEN":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 178
    if-gez v1, :cond_5

    move-object v4, v5

    .line 180
    goto :goto_0

    .line 183
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 186
    if-ltz v1, :cond_0

    .line 187
    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private onInvalidation(Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 3
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 280
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 281
    .local v0, "request":Ljavax/servlet/ServletRequest;
    if-eqz v0, :cond_0

    .line 282
    sget-object v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_IS_VALID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    sget-object v1, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v2, "Referenced session was invalid.  Removing session ID cookie."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 286
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->removeSessionIdCookie(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_1
    sget-object v1, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v2, "SessionKey argument is not HTTP compatible or does not have an HTTP request/response pair. Session ID cookie will not be removed due to invalidated session."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeSessionIdCookie(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getSessionIdCookie()Lorg/apache/shiro/web/servlet/Cookie;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/web/servlet/Cookie;->removeFrom(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 95
    return-void
.end method

.method private storeSessionId(Ljava/io/Serializable;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6
    .param p1, "currentId"    # Ljava/io/Serializable;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v2, "sessionId cannot be null when persisting for subsequent requests."

    .line 83
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getSessionIdCookie()Lorg/apache/shiro/web/servlet/Cookie;

    move-result-object v3

    .line 86
    .local v3, "template":Lorg/apache/shiro/web/servlet/Cookie;
    new-instance v0, Lorg/apache/shiro/web/servlet/SimpleCookie;

    invoke-direct {v0, v3}, Lorg/apache/shiro/web/servlet/SimpleCookie;-><init>(Lorg/apache/shiro/web/servlet/Cookie;)V

    .line 87
    .local v0, "cookie":Lorg/apache/shiro/web/servlet/Cookie;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "idString":Ljava/lang/String;
    invoke-interface {v0, v1}, Lorg/apache/shiro/web/servlet/Cookie;->setValue(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0, p2, p3}, Lorg/apache/shiro/web/servlet/Cookie;->saveTo(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 90
    sget-object v4, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v5, "Set session ID cookie for session with id {}"

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 4
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 203
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->isWeb(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-super {p0, p1, p2}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v3

    .line 209
    :goto_0
    return-object v3

    .line 206
    :cond_0
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 207
    .local v1, "request":Ljavax/servlet/ServletRequest;
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getResponse(Ljava/lang/Object;)Ljavax/servlet/ServletResponse;

    move-result-object v2

    .line 208
    .local v2, "response":Ljavax/servlet/ServletResponse;
    new-instance v0, Lorg/apache/shiro/web/session/mgt/WebSessionKey;

    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/shiro/web/session/mgt/WebSessionKey;-><init>(Ljava/io/Serializable;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 209
    .local v0, "key":Lorg/apache/shiro/session/mgt/SessionKey;
    new-instance v3, Lorg/apache/shiro/session/mgt/DelegatingSession;

    invoke-direct {v3, p0, v0}, Lorg/apache/shiro/session/mgt/DelegatingSession;-><init>(Lorg/apache/shiro/session/mgt/NativeSessionManager;Lorg/apache/shiro/session/mgt/SessionKey;)V

    goto :goto_0
.end method

.method protected createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 4
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 213
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->isWeb(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-super {p0, p1, p2}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->createExposedSession(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v3

    .line 220
    :goto_0
    return-object v3

    .line 217
    :cond_0
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 218
    .local v0, "request":Ljavax/servlet/ServletRequest;
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getResponse(Ljava/lang/Object;)Ljavax/servlet/ServletResponse;

    move-result-object v1

    .line 219
    .local v1, "response":Ljavax/servlet/ServletResponse;
    new-instance v2, Lorg/apache/shiro/web/session/mgt/WebSessionKey;

    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/shiro/web/session/mgt/WebSessionKey;-><init>(Ljava/io/Serializable;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 220
    .local v2, "sessionKey":Lorg/apache/shiro/session/mgt/SessionKey;
    new-instance v3, Lorg/apache/shiro/session/mgt/DelegatingSession;

    invoke-direct {v3, p0, v2}, Lorg/apache/shiro/session/mgt/DelegatingSession;-><init>(Lorg/apache/shiro/session/mgt/NativeSessionManager;Lorg/apache/shiro/session/mgt/SessionKey;)V

    goto :goto_0
.end method

.method protected getSessionId(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/io/Serializable;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getReferencedSessionId(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->getSessionId(Lorg/apache/shiro/session/mgt/SessionKey;)Ljava/io/Serializable;

    move-result-object v0

    .line 255
    .local v0, "id":Ljava/io/Serializable;
    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isWeb(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 257
    .local v1, "request":Ljavax/servlet/ServletRequest;
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getResponse(Ljava/lang/Object;)Ljavax/servlet/ServletResponse;

    move-result-object v2

    .line 258
    .local v2, "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {p0, v1, v2}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->getSessionId(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/io/Serializable;

    move-result-object v0

    .line 260
    .end local v1    # "request":Ljavax/servlet/ServletRequest;
    .end local v2    # "response":Ljavax/servlet/ServletResponse;
    :cond_0
    return-object v0
.end method

.method public getSessionIdCookie()Lorg/apache/shiro/web/servlet/Cookie;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookie:Lorg/apache/shiro/web/servlet/Cookie;

    return-object v0
.end method

.method public isServletContainerSessions()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public isSessionIdCookieEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookieEnabled:Z

    return v0
.end method

.method protected onExpiration(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/ExpiredSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 0
    .param p1, "s"    # Lorg/apache/shiro/session/Session;
    .param p2, "ese"    # Lorg/apache/shiro/session/ExpiredSessionException;
    .param p3, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->onExpiration(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/ExpiredSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 270
    invoke-direct {p0, p3}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->onInvalidation(Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 271
    return-void
.end method

.method protected onInvalidation(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/InvalidSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "ise"    # Lorg/apache/shiro/session/InvalidSessionException;
    .param p3, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->onInvalidation(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/InvalidSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 276
    invoke-direct {p0, p3}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->onInvalidation(Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 277
    return-void
.end method

.method protected onStart(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->onStart(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionContext;)V

    .line 232
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    sget-object v3, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v4, "SessionContext argument is not HTTP compatible or does not have an HTTP request/response pair. No session ID cookie will be set."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 239
    .local v0, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v1

    .line 241
    .local v1, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual {p0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->isSessionIdCookieEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v2

    .line 243
    .local v2, "sessionId":Ljava/io/Serializable;
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->storeSessionId(Ljava/io/Serializable;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 248
    .end local v2    # "sessionId":Ljava/io/Serializable;
    :goto_1
    sget-object v3, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_SOURCE:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 249
    sget-object v3, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_IS_NEW:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v4}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    sget-object v3, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v4, "Session ID cookie is disabled.  No cookie has been set for new session with id {}"

    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onStop(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Lorg/apache/shiro/session/mgt/DefaultSessionManager;->onStop(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 296
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 298
    .local v0, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v1

    .line 299
    .local v1, "response":Ljavax/servlet/http/HttpServletResponse;
    sget-object v2, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Session has been stopped (subject logout or explicit stop).  Removing session ID cookie."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v0, v1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->removeSessionIdCookie(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 305
    .end local v0    # "request":Ljavax/servlet/http/HttpServletRequest;
    .end local v1    # "response":Ljavax/servlet/http/HttpServletResponse;
    :goto_0
    return-void

    .line 302
    :cond_0
    sget-object v2, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->log:Lorg/slf4j/Logger;

    const-string v3, "SessionKey argument is not HTTP compatible or does not have an HTTP request/response pair. Session ID cookie will not be removed due to stopped session."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSessionIdCookie(Lorg/apache/shiro/web/servlet/Cookie;)V
    .locals 0
    .param p1, "sessionIdCookie"    # Lorg/apache/shiro/web/servlet/Cookie;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookie:Lorg/apache/shiro/web/servlet/Cookie;

    .line 69
    return-void
.end method

.method public setSessionIdCookieEnabled(Z)V
    .locals 0
    .param p1, "sessionIdCookieEnabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;->sessionIdCookieEnabled:Z

    .line 78
    return-void
.end method
