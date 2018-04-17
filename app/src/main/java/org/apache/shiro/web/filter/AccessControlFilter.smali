.class public abstract Lorg/apache/shiro/web/filter/AccessControlFilter;
.super Lorg/apache/shiro/web/filter/PathMatchingFilter;
.source "AccessControlFilter.java"


# static fields
.field public static final DEFAULT_LOGIN_URL:Ljava/lang/String; = "/login.jsp"

.field public static final GET_METHOD:Ljava/lang/String; = "GET"

.field public static final POST_METHOD:Ljava/lang/String; = "POST"


# instance fields
.field private loginUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/PathMatchingFilter;-><init>()V

    .line 58
    const-string v0, "/login.jsp"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/AccessControlFilter;->loginUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLoginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/shiro/web/filter/AccessControlFilter;->loginUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 97
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method protected abstract isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected isLoginRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/AccessControlFilter;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/filter/AccessControlFilter;->pathsMatch(Ljava/lang/String;Ljavax/servlet/ServletRequest;)Z

    move-result v0

    return v0
.end method

.method protected abstract onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/AccessControlFilter;->onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    return v0
.end method

.method public onPreHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/web/filter/AccessControlFilter;->isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/web/filter/AccessControlFilter;->onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z

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

.method protected redirectToLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/AccessControlFilter;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "loginUrl":Ljava/lang/String;
    invoke-static {p1, p2, v0}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method protected saveRequest(Ljavax/servlet/ServletRequest;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 208
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->saveRequest(Ljavax/servlet/ServletRequest;)V

    .line 209
    return-void
.end method

.method protected saveRequestAndRedirectToLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/AccessControlFilter;->saveRequest(Ljavax/servlet/ServletRequest;)V

    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/AccessControlFilter;->redirectToLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 193
    return-void
.end method

.method public setLoginUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginUrl"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/shiro/web/filter/AccessControlFilter;->loginUrl:Ljava/lang/String;

    .line 84
    return-void
.end method
