.class public Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;
.super Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;
.source "BasicHttpAuthenticationFilter.java"


# static fields
.field protected static final AUTHENTICATE_HEADER:Ljava/lang/String; = "WWW-Authenticate"

.field protected static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private applicationName:Ljava/lang/String;

.field private authcScheme:Ljava/lang/String;

.field private authzScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;-><init>()V

    .line 83
    const-string v0, "application"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->applicationName:Ljava/lang/String;

    .line 88
    const-string v0, "BASIC"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->authcScheme:Ljava/lang/String;

    .line 93
    const-string v0, "BASIC"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->authzScheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createToken(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;
    .locals 8
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    const/4 v7, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->getAuthzHeader(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "authorizationHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 304
    :cond_0
    const-string v4, ""

    const-string v5, ""

    invoke-virtual {p0, v4, v5, p1, p2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->createToken(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;

    move-result-object v4

    .line 322
    :goto_0
    return-object v4

    .line 307
    :cond_1
    sget-object v4, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    sget-object v4, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to execute login with headers ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 311
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->getPrincipalsAndCredentials(Ljava/lang/String;Ljavax/servlet/ServletRequest;)[Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "prinCred":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v4, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_6

    .line 315
    :cond_3
    if-eqz v2, :cond_4

    array-length v4, v2

    if-nez v4, :cond_5

    :cond_4
    const-string v3, ""

    .line 316
    .local v3, "username":Ljava/lang/String;
    :goto_1
    const-string v4, ""

    invoke-virtual {p0, v3, v4, p1, p2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->createToken(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;

    move-result-object v4

    goto :goto_0

    .line 315
    .end local v3    # "username":Ljava/lang/String;
    :cond_5
    aget-object v3, v2, v7

    goto :goto_1

    .line 319
    :cond_6
    aget-object v3, v2, v7

    .line 320
    .restart local v3    # "username":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v1, v2, v4

    .line 322
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {p0, v3, v1, p1, p2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->createToken(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;

    move-result-object v4

    goto :goto_0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthcScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->authcScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected getAuthzHeader(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 235
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 236
    .local v0, "httpRequest":Ljavax/servlet/http/HttpServletRequest;
    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAuthzScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->authzScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrincipalsAndCredentials(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "encoded"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {p2}, Lorg/apache/shiro/codec/Base64;->decodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "decoded":Ljava/lang/String;
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getPrincipalsAndCredentials(Ljava/lang/String;Ljavax/servlet/ServletRequest;)[Ljava/lang/String;
    .locals 4
    .param p1, "authorizationHeader"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    const/4 v1, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v1

    .line 342
    :cond_1
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "authTokens":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 346
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->getPrincipalsAndCredentials(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected isLoginAttempt(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authzHeader"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->getAuthzScheme()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "authzScheme":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected isLoginAttempt(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->getAuthzHeader(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "authzHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->isLoginAttempt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final isLoginRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->isLoginAttempt(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    return v0
.end method

.method protected onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "loggedIn":Z
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->isLoginAttempt(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->executeLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    .line 192
    :cond_0
    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->sendChallenge(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    .line 195
    :cond_1
    return v0
.end method

.method protected sendChallenge(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 273
    sget-object v2, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    sget-object v2, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->log:Lorg/slf4j/Logger;

    const-string v3, "Authentication required: sending 401 Authentication challenge response."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletResponse;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v1

    .line 277
    .local v1, "httpResponse":Ljavax/servlet/http/HttpServletResponse;
    const/16 v2, 0x191

    invoke-interface {v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->getAuthcScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " realm=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "authcHeader":Ljava/lang/String;
    const-string v2, "WWW-Authenticate"

    invoke-interface {v1, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v2, 0x0

    return v2
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->applicationName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setAuthcScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "authcScheme"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->authcScheme:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setAuthzScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "authzScheme"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;->authzScheme:Ljava/lang/String;

    .line 154
    return-void
.end method
