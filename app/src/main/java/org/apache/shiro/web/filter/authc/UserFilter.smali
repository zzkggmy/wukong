.class public Lorg/apache/shiro/web/filter/authc/UserFilter;
.super Lorg/apache/shiro/web/filter/AccessControlFilter;
.source "UserFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/AccessControlFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/UserFilter;->isLoginRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/UserFilter;->getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 55
    .local v0, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/UserFilter;->saveRequestAndRedirectToLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 67
    const/4 v0, 0x0

    return v0
.end method
