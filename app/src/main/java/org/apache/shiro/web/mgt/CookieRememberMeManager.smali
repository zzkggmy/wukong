.class public Lorg/apache/shiro/web/mgt/CookieRememberMeManager;
.super Lorg/apache/shiro/mgt/AbstractRememberMeManager;
.source "CookieRememberMeManager.java"


# static fields
.field public static final DEFAULT_REMEMBER_ME_COOKIE_NAME:Ljava/lang/String; = "rememberMe"

.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private cookie:Lorg/apache/shiro/web/servlet/Cookie;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/apache/shiro/mgt/AbstractRememberMeManager;-><init>()V

    .line 88
    new-instance v0, Lorg/apache/shiro/web/servlet/SimpleCookie;

    const-string v1, "rememberMe"

    invoke-direct {v0, v1}, Lorg/apache/shiro/web/servlet/SimpleCookie;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "cookie":Lorg/apache/shiro/web/servlet/Cookie;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/shiro/web/servlet/Cookie;->setHttpOnly(Z)V

    .line 92
    const v1, 0x1e13380

    invoke-interface {v0, v1}, Lorg/apache/shiro/web/servlet/Cookie;->setMaxAge(I)V

    .line 93
    iput-object v0, p0, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->cookie:Lorg/apache/shiro/web/servlet/Cookie;

    .line 94
    return-void
.end method

.method private ensurePadding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "base64"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 237
    .local v1, "length":I
    rem-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    rem-int/lit8 v3, v1, 0x4

    if-ge v0, v3, :cond_0

    .line 240
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    .end local v0    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object p1
.end method

.method private forgetIdentity(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->getCookie()Lorg/apache/shiro/web/servlet/Cookie;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/web/servlet/Cookie;->removeFrom(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 289
    return-void
.end method

.method private isIdentityRemoved(Lorg/apache/shiro/web/subject/WebSubjectContext;)Z
    .locals 4
    .param p1, "subjectContext"    # Lorg/apache/shiro/web/subject/WebSubjectContext;

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-interface {p1}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 162
    .local v1, "request":Ljavax/servlet/ServletRequest;
    if-eqz v1, :cond_0

    .line 163
    sget-object v3, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->IDENTITY_REMOVED_KEY:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 164
    .local v0, "removed":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 166
    .end local v0    # "removed":Ljava/lang/Boolean;
    :cond_0
    return v2
.end method


# virtual methods
.method protected forgetIdentity(Lorg/apache/shiro/subject/Subject;)V
    .locals 3
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 257
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 259
    .local v0, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v1

    .line 260
    .local v1, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-direct {p0, v0, v1}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->forgetIdentity(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 262
    .end local v0    # "request":Ljavax/servlet/http/HttpServletRequest;
    .end local v1    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_0
    return-void
.end method

.method public forgetIdentity(Lorg/apache/shiro/subject/SubjectContext;)V
    .locals 3
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 274
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 276
    .local v0, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v1

    .line 277
    .local v1, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-direct {p0, v0, v1}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->forgetIdentity(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 279
    .end local v0    # "request":Ljavax/servlet/http/HttpServletRequest;
    .end local v1    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_0
    return-void
.end method

.method public getCookie()Lorg/apache/shiro/web/servlet/Cookie;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->cookie:Lorg/apache/shiro/web/servlet/Cookie;

    return-object v0
.end method

.method protected getRememberedSerializedIdentity(Lorg/apache/shiro/subject/SubjectContext;)[B
    .locals 9
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 188
    sget-object v6, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    const-string v2, "SubjectContext argument is not an HTTP-aware instance.  This is required to obtain a servlet request and response in order to retrieve the rememberMe cookie. Returning immediately and ignoring rememberMe operation."

    .line 192
    .local v2, "msg":Ljava/lang/String;
    sget-object v6, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 222
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v5, p1

    .line 197
    check-cast v5, Lorg/apache/shiro/web/subject/WebSubjectContext;

    .line 198
    .local v5, "wsc":Lorg/apache/shiro/web/subject/WebSubjectContext;
    invoke-direct {p0, v5}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->isIdentityRemoved(Lorg/apache/shiro/web/subject/WebSubjectContext;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 202
    invoke-static {v5}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v3

    .line 203
    .local v3, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-static {v5}, Lorg/apache/shiro/web/util/WebUtils;->getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v4

    .line 205
    .local v4, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->getCookie()Lorg/apache/shiro/web/servlet/Cookie;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Lorg/apache/shiro/web/servlet/Cookie;->readValue(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "base64":Ljava/lang/String;
    const-string v6, "deleteMe"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->ensurePadding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v6, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    sget-object v6, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquired Base64 encoded identity ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 215
    :cond_2
    invoke-static {v0}, Lorg/apache/shiro/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 216
    .local v1, "decoded":[B
    sget-object v6, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    sget-object v7, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Base64 decoded byte array length: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_3

    array-length v6, v1

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bytes."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected rememberSerializedIdentity(Lorg/apache/shiro/subject/Subject;[B)V
    .locals 7
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p2, "serialized"    # [B

    .prologue
    .line 137
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isHttp(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 138
    sget-object v6, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    const-string v2, "Subject argument is not an HTTP-aware instance.  This is required to obtain a servlet request and response in order to set the rememberMe cookie. Returning immediately and ignoring rememberMe operation."

    .line 142
    .local v2, "msg":Ljava/lang/String;
    sget-object v6, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 158
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpRequest(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v3

    .line 149
    .local v3, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getHttpResponse(Ljava/lang/Object;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v4

    .line 152
    .local v4, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-static {p2}, Lorg/apache/shiro/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "base64":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->getCookie()Lorg/apache/shiro/web/servlet/Cookie;

    move-result-object v5

    .line 155
    .local v5, "template":Lorg/apache/shiro/web/servlet/Cookie;
    new-instance v1, Lorg/apache/shiro/web/servlet/SimpleCookie;

    invoke-direct {v1, v5}, Lorg/apache/shiro/web/servlet/SimpleCookie;-><init>(Lorg/apache/shiro/web/servlet/Cookie;)V

    .line 156
    .local v1, "cookie":Lorg/apache/shiro/web/servlet/Cookie;
    invoke-interface {v1, v0}, Lorg/apache/shiro/web/servlet/Cookie;->setValue(Ljava/lang/String;)V

    .line 157
    invoke-interface {v1, v3, v4}, Lorg/apache/shiro/web/servlet/Cookie;->saveTo(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public setCookie(Lorg/apache/shiro/web/servlet/Cookie;)V
    .locals 0
    .param p1, "cookie"    # Lorg/apache/shiro/web/servlet/Cookie;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;->cookie:Lorg/apache/shiro/web/servlet/Cookie;

    .line 123
    return-void
.end method
