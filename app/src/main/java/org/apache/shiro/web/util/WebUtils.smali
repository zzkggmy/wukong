.class public Lorg/apache/shiro/web/util/WebUtils;
.super Ljava/lang/Object;
.source "WebUtils.java"


# static fields
.field public static final DEFAULT_CHARACTER_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final FORWARD_CONTEXT_PATH_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.forward.context_path"

.field public static final FORWARD_PATH_INFO_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.forward.path_info"

.field public static final FORWARD_QUERY_STRING_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.forward.query_string"

.field public static final FORWARD_REQUEST_URI_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.forward.request_uri"

.field public static final FORWARD_SERVLET_PATH_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.forward.servlet_path"

.field public static final INCLUDE_CONTEXT_PATH_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.include.context_path"

.field public static final INCLUDE_PATH_INFO_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.include.path_info"

.field public static final INCLUDE_QUERY_STRING_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.include.query_string"

.field public static final INCLUDE_REQUEST_URI_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.include.request_uri"

.field public static final INCLUDE_SERVLET_PATH_ATTRIBUTE:Ljava/lang/String; = "javax.servlet.include.servlet_path"

.field public static final SAVED_REQUEST_KEY:Ljava/lang/String; = "shiroSavedRequest"

.field public static final SERVLET_REQUEST_KEY:Ljava/lang/String;

.field public static final SERVLET_RESPONSE_KEY:Ljava/lang/String;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lorg/apache/shiro/web/util/WebUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/util/WebUtils;->log:Lorg/slf4j/Logger;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljavax/servlet/ServletRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SHIRO_THREAD_CONTEXT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/util/WebUtils;->SERVLET_REQUEST_KEY:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljavax/servlet/ServletResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SHIRO_THREAD_CONTEXT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/util/WebUtils;->SERVLET_RESPONSE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _isSessionCreationEnabled(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "requestPairSource"    # Ljava/lang/Object;

    .prologue
    .line 452
    instance-of v1, p0, Lorg/apache/shiro/web/util/RequestPairSource;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 453
    check-cast v0, Lorg/apache/shiro/web/util/RequestPairSource;

    .line 454
    .local v0, "source":Lorg/apache/shiro/web/util/RequestPairSource;
    invoke-interface {v0}, Lorg/apache/shiro/web/util/RequestPairSource;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/web/util/WebUtils;->_isSessionCreationEnabled(Ljavax/servlet/ServletRequest;)Z

    move-result v1

    .line 456
    .end local v0    # "source":Lorg/apache/shiro/web/util/RequestPairSource;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static _isSessionCreationEnabled(Ljavax/servlet/ServletRequest;)Z
    .locals 2
    .param p0, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 471
    if-eqz p0, :cond_0

    .line 472
    sget-object v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_CREATION_ENABLED:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 477
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static decodeAndCleanUriString(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p0, p1}, Lorg/apache/shiro/web/util/WebUtils;->decodeRequestString(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 234
    .local v0, "semicolonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "uri":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static decodeRequestString(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->determineEncoding(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "enc":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 352
    :goto_0
    return-object v2

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/shiro/web/util/WebUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    sget-object v2, Lorg/apache/shiro/web/util/WebUtils;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode request string ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with encoding \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': falling back to platform default encoding; exception message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 352
    :cond_0
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected static determineEncoding(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 368
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "enc":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 370
    const-string v0, "ISO-8859-1"

    .line 372
    :cond_0
    return-object v0
.end method

.method public static getAndClearSavedRequest(Ljavax/servlet/ServletRequest;)Lorg/apache/shiro/web/util/SavedRequest;
    .locals 4
    .param p0, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 613
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->getSavedRequest(Ljavax/servlet/ServletRequest;)Lorg/apache/shiro/web/util/SavedRequest;

    move-result-object v0

    .line 614
    .local v0, "savedRequest":Lorg/apache/shiro/web/util/SavedRequest;
    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v2

    .line 616
    .local v2, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v2}, Lorg/apache/shiro/subject/Subject;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 617
    .local v1, "session":Lorg/apache/shiro/session/Session;
    const-string v3, "shiroSavedRequest"

    invoke-interface {v1, v3}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v1    # "session":Lorg/apache/shiro/session/Session;
    .end local v2    # "subject":Lorg/apache/shiro/subject/Subject;
    :cond_0
    return-object v0
.end method

.method public static getCleanParam(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-interface {p0, p1}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContextPath(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 247
    const-string v1, "javax.servlet.include.context_path"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "contextPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 249
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const-string v0, ""

    .line 255
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/shiro/web/util/WebUtils;->decodeRequestString(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;
    .locals 2
    .param p0, "requestPairSource"    # Ljava/lang/Object;

    .prologue
    .line 412
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 413
    .local v0, "request":Ljavax/servlet/ServletRequest;
    instance-of v1, v0, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v1, :cond_0

    .line 414
    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .line 416
    .end local v0    # "request":Ljavax/servlet/ServletRequest;
    :goto_0
    return-object v0

    .restart local v0    # "request":Ljavax/servlet/ServletRequest;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;
    .locals 2
    .param p0, "requestPairSource"    # Ljava/lang/Object;

    .prologue
    .line 420
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->getResponse(Ljava/lang/Object;)Ljavax/servlet/ServletResponse;

    move-result-object v0

    .line 421
    .local v0, "response":Ljavax/servlet/ServletResponse;
    instance-of v1, v0, Ljavax/servlet/http/HttpServletResponse;

    if-eqz v1, :cond_0

    .line 422
    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    .line 424
    .end local v0    # "response":Ljavax/servlet/ServletResponse;
    :goto_0
    return-object v0

    .restart local v0    # "response":Ljavax/servlet/ServletResponse;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPathWithinApplication(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 4
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 111
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->getContextPath(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "contextPath":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->getRequestUri(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "requestUri":Ljava/lang/String;
    invoke-static {v2, v0}, Lorg/apache/shiro/util/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 116
    .restart local v1    # "path":Ljava/lang/String;
    :cond_0
    const-string v1, "/"

    goto :goto_0

    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 119
    goto :goto_0
.end method

.method public static getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;
    .locals 1
    .param p0, "requestPairSource"    # Ljava/lang/Object;

    .prologue
    .line 398
    instance-of v0, p0, Lorg/apache/shiro/web/util/RequestPairSource;

    if-eqz v0, :cond_0

    .line 399
    check-cast p0, Lorg/apache/shiro/web/util/RequestPairSource;

    .end local p0    # "requestPairSource":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/apache/shiro/web/util/RequestPairSource;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .restart local p0    # "requestPairSource":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRequestUri(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 136
    const-string v1, "javax.servlet.include.request_uri"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 138
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/shiro/web/util/WebUtils;->decodeAndCleanUriString(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/web/util/WebUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRequiredWebEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;
    .locals 3
    .param p0, "sc"    # Ljavax/servlet/ServletContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->getWebEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;

    move-result-object v0

    .line 275
    .local v0, "we":Lorg/apache/shiro/web/env/WebEnvironment;
    if-nez v0, :cond_0

    .line 276
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebEnvironment found: no EnvironmentLoaderListener registered?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    return-object v0
.end method

.method public static getResponse(Ljava/lang/Object;)Ljavax/servlet/ServletResponse;
    .locals 1
    .param p0, "requestPairSource"    # Ljava/lang/Object;

    .prologue
    .line 405
    instance-of v0, p0, Lorg/apache/shiro/web/util/RequestPairSource;

    if-eqz v0, :cond_0

    .line 406
    check-cast p0, Lorg/apache/shiro/web/util/RequestPairSource;

    .end local p0    # "requestPairSource":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/apache/shiro/web/util/RequestPairSource;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .restart local p0    # "requestPairSource":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSavedRequest(Ljavax/servlet/ServletRequest;)Lorg/apache/shiro/web/util/SavedRequest;
    .locals 4
    .param p0, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "savedRequest":Lorg/apache/shiro/web/util/SavedRequest;
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v2

    .line 625
    .local v2, "subject":Lorg/apache/shiro/subject/Subject;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 626
    .local v1, "session":Lorg/apache/shiro/session/Session;
    if-eqz v1, :cond_0

    .line 627
    const-string v3, "shiroSavedRequest"

    invoke-interface {v1, v3}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "savedRequest":Lorg/apache/shiro/web/util/SavedRequest;
    check-cast v0, Lorg/apache/shiro/web/util/SavedRequest;

    .line 629
    .restart local v0    # "savedRequest":Lorg/apache/shiro/web/util/SavedRequest;
    :cond_0
    return-object v0
.end method

.method public static getWebEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;
    .locals 1
    .param p0, "sc"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 294
    sget-object v0, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/shiro/web/util/WebUtils;->getWebEnvironment(Ljavax/servlet/ServletContext;Ljava/lang/String;)Lorg/apache/shiro/web/env/WebEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static getWebEnvironment(Ljavax/servlet/ServletContext;Ljava/lang/String;)Lorg/apache/shiro/web/env/WebEnvironment;
    .locals 4
    .param p0, "sc"    # Ljavax/servlet/ServletContext;
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ServletContext argument must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    invoke-interface {p0, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, "attr":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 311
    const/4 v0, 0x0

    .line 325
    .end local v0    # "attr":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 313
    .restart local v0    # "attr":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 314
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "attr":Ljava/lang/Object;
    throw v0

    .line 316
    .restart local v0    # "attr":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    .line 317
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "attr":Ljava/lang/Object;
    throw v0

    .line 319
    .restart local v0    # "attr":Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_4

    .line 320
    new-instance v1, Ljava/lang/IllegalStateException;

    check-cast v0, Ljava/lang/Exception;

    .end local v0    # "attr":Ljava/lang/Object;
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 322
    .restart local v0    # "attr":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Lorg/apache/shiro/web/env/WebEnvironment;

    if-nez v1, :cond_5

    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context attribute is not of type WebEnvironment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_5
    check-cast v0, Lorg/apache/shiro/web/env/WebEnvironment;

    goto :goto_0
.end method

.method public static isHttp(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "requestPairSource"    # Ljava/lang/Object;

    .prologue
    .line 394
    instance-of v0, p0, Lorg/apache/shiro/web/util/RequestPairSource;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/shiro/web/util/RequestPairSource;

    .end local p0    # "requestPairSource":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Lorg/apache/shiro/web/util/RequestPairSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHttp(Lorg/apache/shiro/web/util/RequestPairSource;)Z
    .locals 3
    .param p0, "source"    # Lorg/apache/shiro/web/util/RequestPairSource;

    .prologue
    .line 434
    invoke-interface {p0}, Lorg/apache/shiro/web/util/RequestPairSource;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 435
    .local v0, "request":Ljavax/servlet/ServletRequest;
    invoke-interface {p0}, Lorg/apache/shiro/web/util/RequestPairSource;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v1

    .line 436
    .local v1, "response":Ljavax/servlet/ServletResponse;
    instance-of v2, v0, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljavax/servlet/http/HttpServletResponse;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isTrue(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Z
    .locals 2
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-static {p0, p1}, Lorg/apache/shiro/web/util/WebUtils;->getCleanParam(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWeb(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "requestPairSource"    # Ljava/lang/Object;

    .prologue
    .line 390
    instance-of v0, p0, Lorg/apache/shiro/web/util/RequestPairSource;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/shiro/web/util/RequestPairSource;

    .end local p0    # "requestPairSource":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->isWeb(Lorg/apache/shiro/web/util/RequestPairSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWeb(Lorg/apache/shiro/web/util/RequestPairSource;)Z
    .locals 3
    .param p0, "source"    # Lorg/apache/shiro/web/util/RequestPairSource;

    .prologue
    .line 428
    invoke-interface {p0}, Lorg/apache/shiro/web/util/RequestPairSource;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 429
    .local v0, "request":Ljavax/servlet/ServletRequest;
    invoke-interface {p0}, Lorg/apache/shiro/web/util/RequestPairSource;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v1

    .line 430
    .local v1, "response":Ljavax/servlet/ServletResponse;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V
    .locals 6
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "response"    # Ljavax/servlet/ServletResponse;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 538
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/util/Map;ZZ)V

    .line 539
    return-void
.end method

.method public static issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "response"    # Ljavax/servlet/ServletResponse;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "queryParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/util/Map;ZZ)V

    .line 553
    return-void
.end method

.method public static issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "response"    # Ljavax/servlet/ServletResponse;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "queryParams"    # Ljava/util/Map;
    .param p4, "contextRelative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/util/Map;ZZ)V

    .line 568
    return-void
.end method

.method public static issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 3
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "response"    # Ljavax/servlet/ServletResponse;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "queryParams"    # Ljava/util/Map;
    .param p4, "contextRelative"    # Z
    .param p5, "http10Compatible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Lorg/apache/shiro/web/util/RedirectView;

    invoke-direct {v0, p2, p4, p5}, Lorg/apache/shiro/web/util/RedirectView;-><init>(Ljava/lang/String;ZZ)V

    .line 525
    .local v0, "view":Lorg/apache/shiro/web/util/RedirectView;
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletResponse;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Lorg/apache/shiro/web/util/RedirectView;->renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 526
    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/shiro/web/util/WebUtils;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "replaceBackSlash"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x5c

    const/16 v7, 0x2f

    const/4 v6, 0x0

    .line 172
    if-nez p0, :cond_1

    move-object v2, v3

    .line 219
    :cond_0
    :goto_0
    return-object v2

    .line 176
    :cond_1
    move-object v2, p0

    .line 178
    .local v2, "normalized":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 179
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_2
    const-string v4, "/."

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    const-string v2, "/"

    goto :goto_0

    .line 185
    :cond_3
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_4
    :goto_1
    const-string v4, "//"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "index":I
    if-gez v0, :cond_5

    .line 199
    :goto_2
    const-string v4, "/./"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 200
    if-gez v0, :cond_6

    .line 208
    :goto_3
    const-string v4, "/../"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 209
    if-ltz v0, :cond_0

    .line 211
    if-nez v0, :cond_7

    move-object v2, v3

    .line 212
    goto :goto_0

    .line 193
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    goto :goto_1

    .line 202
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    goto :goto_2

    .line 213
    :cond_7
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 214
    .local v1, "index2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    goto :goto_3
.end method

.method public static redirectToSavedRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V
    .locals 5
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "response"    # Ljavax/servlet/ServletResponse;
    .param p2, "fallbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    const/4 v2, 0x0

    .line 654
    .local v2, "successUrl":Ljava/lang/String;
    const/4 v0, 0x1

    .line 655
    .local v0, "contextRelative":Z
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->getAndClearSavedRequest(Ljavax/servlet/ServletRequest;)Lorg/apache/shiro/web/util/SavedRequest;

    move-result-object v1

    .line 656
    .local v1, "savedRequest":Lorg/apache/shiro/web/util/SavedRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/shiro/web/util/SavedRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    invoke-virtual {v1}, Lorg/apache/shiro/web/util/SavedRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    .line 658
    const/4 v0, 0x0

    .line 661
    :cond_0
    if-nez v2, :cond_1

    .line 662
    move-object v2, p2

    .line 665
    :cond_1
    if-nez v2, :cond_2

    .line 666
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Success URL not available via saved request or via the successUrlFallback method parameter. One of these must be non-null for issueSuccessRedirect() to work."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 671
    :cond_2
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, v0}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 672
    return-void
.end method

.method public static saveRequest(Ljavax/servlet/ServletRequest;)V
    .locals 5
    .param p0, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 605
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    .line 606
    .local v3, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v3}, Lorg/apache/shiro/subject/Subject;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v2

    .line 607
    .local v2, "session":Lorg/apache/shiro/session/Session;
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 608
    .local v0, "httpRequest":Ljavax/servlet/http/HttpServletRequest;
    new-instance v1, Lorg/apache/shiro/web/util/SavedRequest;

    invoke-direct {v1, v0}, Lorg/apache/shiro/web/util/SavedRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    .line 609
    .local v1, "savedRequest":Lorg/apache/shiro/web/util/SavedRequest;
    const-string v4, "shiroSavedRequest"

    invoke-interface {v2, v4, v1}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    return-void
.end method

.method public static toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;
    .locals 0
    .param p0, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 493
    check-cast p0, Ljavax/servlet/http/HttpServletRequest;

    .end local p0    # "request":Ljavax/servlet/ServletRequest;
    return-object p0
.end method

.method public static toHttp(Ljavax/servlet/ServletResponse;)Ljavax/servlet/http/HttpServletResponse;
    .locals 0
    .param p0, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 509
    check-cast p0, Ljavax/servlet/http/HttpServletResponse;

    .end local p0    # "response":Ljavax/servlet/ServletResponse;
    return-object p0
.end method
