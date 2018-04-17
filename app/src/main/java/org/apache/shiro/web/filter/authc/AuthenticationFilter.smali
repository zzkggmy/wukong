.class public abstract Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;
.super Lorg/apache/shiro/web/filter/AccessControlFilter;
.source "AuthenticationFilter.java"


# static fields
.field public static final DEFAULT_SUCCESS_URL:Ljava/lang/String; = "/"


# instance fields
.field private successUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/AccessControlFilter;-><init>()V

    .line 41
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->successUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSuccessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->successUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->getSubject(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 81
    .local v0, "subject":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->isAuthenticated()Z

    move-result v1

    return v1
.end method

.method protected issueSuccessRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->getSuccessUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/apache/shiro/web/util/WebUtils;->redirectToSavedRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setSuccessUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "successUrl"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/apache/shiro/web/filter/authc/AuthenticationFilter;->successUrl:Ljava/lang/String;

    .line 67
    return-void
.end method
