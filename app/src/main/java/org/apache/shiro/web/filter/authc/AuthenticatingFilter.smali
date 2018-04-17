.class public abstract Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;
.super Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;
.source "AuthenticatingFilter.java"


# static fields
.field public static final PERMISSIVE:Ljava/lang/String; = "permissive"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected cleanup(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "existing"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    instance-of v1, p3, Lorg/apache/shiro/authz/UnauthenticatedException;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljavax/servlet/ServletException;

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/shiro/authz/UnauthenticatedException;

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 p3, 0x0

    .line 155
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->cleanup(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V

    .line 157
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    move-object p3, v0

    goto :goto_0
.end method

.method protected createToken(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;
    .param p4, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 64
    invoke-virtual {p0, p3}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->isRememberMe(Ljavax/servlet/ServletRequest;)Z

    move-result v1

    .line 65
    .local v1, "rememberMe":Z
    invoke-virtual {p0, p3}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->getHost(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->createToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/shiro/authc/AuthenticationToken;

    move-result-object v2

    return-object v2
.end method

.method protected createToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/shiro/authc/AuthenticationToken;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "rememberMe"    # Z
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lorg/apache/shiro/authc/UsernamePasswordToken;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method protected abstract createToken(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected executeLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->createToken(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/authc/AuthenticationToken;

    move-result-object v3

    .line 46
    .local v3, "token":Lorg/apache/shiro/authc/AuthenticationToken;
    if-nez v3, :cond_0

    .line 47
    const-string v1, "createToken method implementation returned null. A valid non-null AuthenticationToken must be created in order to execute a login attempt."

    .line 49
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;

    move-result-object v2

    .line 53
    .local v2, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v2, v3}, Lorg/apache/shiro/subject/Subject;->login(Lorg/apache/shiro/authc/AuthenticationToken;)V

    .line 54
    invoke-virtual {p0, v3, v2, p1, p2}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->onLoginSuccess(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/subject/Subject;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    :try_end_0
    .catch Lorg/apache/shiro/authc/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 56
    .end local v2    # "subject":Lorg/apache/shiro/subject/Subject;
    :goto_0
    return v4

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/apache/shiro/authc/AuthenticationException;
    invoke-virtual {p0, v3, v0, p1, p2}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->onLoginFailure(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v4

    goto :goto_0
.end method

.method protected getHost(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 94
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->isLoginRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lorg/apache/shiro/web/filter/authc/AuthenticatingFilter;->isPermissive(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPermissive(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "mappedValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_0

    .line 134
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "mappedValue":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 135
    .local v0, "values":[Ljava/lang/String;
    const-string v2, "permissive"

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    .line 137
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    return v1
.end method

.method protected isRememberMe(Ljavax/servlet/ServletRequest;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoginFailure(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "e"    # Lorg/apache/shiro/authc/AuthenticationException;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;
    .param p4, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 81
    const/4 v0, 0x0

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
    .line 76
    const/4 v0, 0x1

    return v0
.end method
