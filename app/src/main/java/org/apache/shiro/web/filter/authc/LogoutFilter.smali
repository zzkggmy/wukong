.class public Lorg/apache/shiro/web/filter/authc/LogoutFilter;
.super Lorg/apache/shiro/web/servlet/AdviceFilter;
.source "LogoutFilter.java"


# static fields
.field public static final DEFAULT_REDIRECT_URL:Ljava/lang/String; = "/"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/web/filter/authc/LogoutFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AdviceFilter;-><init>()V

    .line 52
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->redirectUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getRedirectUrl(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/subject/Subject;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 89
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method protected issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1, p2, p3}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method protected preHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;

    move-result-object v2

    .line 68
    .local v2, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->getRedirectUrl(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/subject/Subject;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "redirectUrl":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/shiro/subject/Subject;->logout()V
    :try_end_0
    .catch Lorg/apache/shiro/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x0

    return v3

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ise":Lorg/apache/shiro/session/SessionException;
    sget-object v3, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "Encountered session exception during logout.  This can generally safely be ignored."

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/LogoutFilter;->redirectUrl:Ljava/lang/String;

    .line 145
    return-void
.end method
