.class public Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;
.super Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;
.source "FormAuthenticationFilter.java"


# static fields
.field public static final DEFAULT_ERROR_KEY_ATTRIBUTE_NAME:Ljava/lang/String; = "shiroLoginFailure"

.field public static final DEFAULT_PASSWORD_PARAM:Ljava/lang/String; = "password"

.field public static final DEFAULT_REMEMBER_ME_PARAM:Ljava/lang/String; = "rememberMe"

.field public static final DEFAULT_USERNAME_PARAM:Ljava/lang/String; = "username"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private failureKeyAttribute:Ljava/lang/String;

.field private passwordParam:Ljava/lang/String;

.field private rememberMeParam:Ljava/lang/String;

.field private usernameParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;-><init>()V

    .line 71
    const-string v0, "username"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->usernameParam:Ljava/lang/String;

    .line 72
    const-string v0, "password"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->passwordParam:Ljava/lang/String;

    .line 73
    const-string v0, "rememberMe"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->rememberMeParam:Ljava/lang/String;

    .line 75
    const-string v0, "shiroLoginFailure"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->failureKeyAttribute:Ljava/lang/String;

    .line 78
    const-string v0, "/login.jsp"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->setLoginUrl(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected createToken(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getUsername(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getPassword(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "password":Ljava/lang/String;
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->createToken(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;

    move-result-object v2

    return-object v2
.end method

.method public getFailureKeyAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->failureKeyAttribute:Ljava/lang/String;

    return-object v0
.end method

.method protected getPassword(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getPasswordParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/shiro/web/util/WebUtils;->getCleanParam(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->passwordParam:Ljava/lang/String;

    return-object v0
.end method

.method public getRememberMeParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->rememberMeParam:Ljava/lang/String;

    return-object v0
.end method

.method protected getUsername(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getUsernameParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/shiro/web/util/WebUtils;->getCleanParam(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsernameParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->usernameParam:Ljava/lang/String;

    return-object v0
.end method

.method protected isLoginSubmission(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 183
    instance-of v0, p1, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRememberMe(Ljavax/servlet/ServletRequest;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getRememberMeParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/shiro/web/util/WebUtils;->isTrue(Ljavax/servlet/ServletRequest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->isLoginRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->isLoginSubmission(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    const-string v1, "Login submission detected.  Attempting to execute login."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->executeLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 156
    :cond_1
    sget-object v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget-object v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    const-string v1, "Login page view."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 160
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    sget-object v0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to access a path which requires authentication.  Forwarding to the Authentication url ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getLoginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 168
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->saveRequestAndRedirectToLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLoginFailure(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "e"    # Lorg/apache/shiro/authc/AuthenticationException;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;
    .param p4, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 205
    invoke-virtual {p0, p3, p2}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->setFailureAttribute(Ljavax/servlet/ServletRequest;Lorg/apache/shiro/authc/AuthenticationException;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoginSuccess(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/subject/Subject;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "subject"    # Lorg/apache/shiro/subject/Subject;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;
    .param p4, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0, p3, p4}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->issueSuccessRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected setFailureAttribute(Ljavax/servlet/ServletRequest;Lorg/apache/shiro/authc/AuthenticationException;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "ae"    # Lorg/apache/shiro/authc/AuthenticationException;

    .prologue
    .line 211
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getFailureKeyAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public setFailureKeyAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "failureKeyAttribute"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->failureKeyAttribute:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLoginUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "loginUrl"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "previous":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->appliedPaths:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->setLoginUrl(Ljava/lang/String;)V

    .line 88
    sget-object v1, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    sget-object v1, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "Adding login url to applied paths."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->appliedPaths:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->getLoginUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setPasswordParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "passwordParam"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->passwordParam:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setRememberMeParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "rememberMeParam"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->rememberMeParam:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setUsernameParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "usernameParam"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;->usernameParam:Ljava/lang/String;

    .line 106
    return-void
.end method
