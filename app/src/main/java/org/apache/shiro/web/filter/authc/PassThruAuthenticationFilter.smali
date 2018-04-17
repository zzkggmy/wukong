.class public Lorg/apache/shiro/web/filter/authc/PassThruAuthenticationFilter;
.super Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;
.source "PassThruAuthenticationFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/PassThruAuthenticationFilter;->isLoginRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/PassThruAuthenticationFilter;->saveRequestAndRedirectToLogin(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method
