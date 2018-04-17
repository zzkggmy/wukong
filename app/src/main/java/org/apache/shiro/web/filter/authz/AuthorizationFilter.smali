.class public abstract Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;
.super Lorg/apache/shiro/web/filter/AccessControlFilter;
.source "AuthorizationFilter.java"


# instance fields
.field private unauthorizedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/AccessControlFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnauthorizedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;->unauthorizedUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;->getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 110
    .local v0, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;->saveRequestAndRedirectToLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 123
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;->getUnauthorizedUrl()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "unauthorizedUrl":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-static {p1, p2, v1}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {p2}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletResponse;)Ljavax/servlet/http/HttpServletResponse;

    move-result-object v2

    const/16 v3, 0x191

    invoke-interface {v2, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0
.end method

.method public setUnauthorizedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "unauthorizedUrl"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;->unauthorizedUrl:Ljava/lang/String;

    .line 79
    return-void
.end method
