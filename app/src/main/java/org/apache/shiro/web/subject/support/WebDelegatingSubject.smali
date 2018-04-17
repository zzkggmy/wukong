.class public Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;
.super Lorg/apache/shiro/subject/support/DelegatingSubject;
.source "WebDelegatingSubject.java"

# interfaces
.implements Lorg/apache/shiro/web/subject/WebSubject;


# static fields
.field private static final serialVersionUID:J = -0x16fa507feb429f92L


# instance fields
.field private final servletRequest:Ljavax/servlet/ServletRequest;

.field private final servletResponse:Ljavax/servlet/ServletResponse;


# direct methods
.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 9
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "authenticated"    # Z
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "session"    # Lorg/apache/shiro/session/Session;
    .param p5, "request"    # Ljavax/servlet/ServletRequest;
    .param p6, "response"    # Ljavax/servlet/ServletResponse;
    .param p7, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 52
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLjavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLjavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 7
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "authenticated"    # Z
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "session"    # Lorg/apache/shiro/session/Session;
    .param p5, "sessionEnabled"    # Z
    .param p6, "request"    # Ljavax/servlet/ServletRequest;
    .param p7, "response"    # Ljavax/servlet/ServletResponse;
    .param p8, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/apache/shiro/subject/support/DelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLorg/apache/shiro/mgt/SecurityManager;)V

    .line 61
    iput-object p6, p0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;->servletRequest:Ljavax/servlet/ServletRequest;

    .line 62
    iput-object p7, p0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;->servletResponse:Ljavax/servlet/ServletResponse;

    .line 63
    return-void
.end method


# virtual methods
.method protected createSessionContext()Lorg/apache/shiro/session/mgt/SessionContext;
    .locals 3

    .prologue
    .line 94
    new-instance v1, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;

    invoke-direct {v1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;-><init>()V

    .line 95
    .local v1, "wsc":Lorg/apache/shiro/web/session/mgt/WebSessionContext;
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {v1, v0}, Lorg/apache/shiro/web/session/mgt/WebSessionContext;->setHost(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v2, p0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;->servletRequest:Ljavax/servlet/ServletRequest;

    invoke-interface {v1, v2}, Lorg/apache/shiro/web/session/mgt/WebSessionContext;->setServletRequest(Ljavax/servlet/ServletRequest;)V

    .line 100
    iget-object v2, p0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;->servletResponse:Ljavax/servlet/ServletResponse;

    invoke-interface {v1, v2}, Lorg/apache/shiro/web/session/mgt/WebSessionContext;->setServletResponse(Ljavax/servlet/ServletResponse;)V

    .line 101
    return-object v1
.end method

.method public getServletRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;->servletRequest:Ljavax/servlet/ServletRequest;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;->servletResponse:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method protected isSessionCreationEnabled()Z
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lorg/apache/shiro/subject/support/DelegatingSubject;->isSessionCreationEnabled()Z

    move-result v0

    .line 89
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->_isSessionCreationEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
