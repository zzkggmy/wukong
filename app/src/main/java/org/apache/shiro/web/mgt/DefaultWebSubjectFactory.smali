.class public Lorg/apache/shiro/web/mgt/DefaultWebSubjectFactory;
.super Lorg/apache/shiro/mgt/DefaultSubjectFactory;
.source "DefaultWebSubjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/shiro/mgt/DefaultSubjectFactory;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;
    .locals 10
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 49
    instance-of v0, p1, Lorg/apache/shiro/web/subject/WebSubjectContext;

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lorg/apache/shiro/mgt/DefaultSubjectFactory;->createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    move-object v9, p1

    .line 52
    check-cast v9, Lorg/apache/shiro/web/subject/WebSubjectContext;

    .line 53
    .local v9, "wsc":Lorg/apache/shiro/web/subject/WebSubjectContext;
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v8

    .line 54
    .local v8, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveSession()Lorg/apache/shiro/session/Session;

    move-result-object v4

    .line 55
    .local v4, "session":Lorg/apache/shiro/session/Session;
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->isSessionCreationEnabled()Z

    move-result v5

    .line 56
    .local v5, "sessionEnabled":Z
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolvePrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    .line 57
    .local v1, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveAuthenticated()Z

    move-result v2

    .line 58
    .local v2, "authenticated":Z
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveHost()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "host":Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v6

    .line 60
    .local v6, "request":Ljavax/servlet/ServletRequest;
    invoke-interface {v9}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v7

    .line 62
    .local v7, "response":Ljavax/servlet/ServletResponse;
    new-instance v0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;

    invoke-direct/range {v0 .. v8}, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLjavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/mgt/SecurityManager;)V

    goto :goto_0
.end method

.method protected newSubjectInstance(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/mgt/SecurityManager;)Lorg/apache/shiro/subject/Subject;
    .locals 9
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "authenticated"    # Z
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "session"    # Lorg/apache/shiro/session/Session;
    .param p5, "request"    # Ljavax/servlet/ServletRequest;
    .param p6, "response"    # Ljavax/servlet/ServletResponse;
    .param p7, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/shiro/web/subject/support/WebDelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLjavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/apache/shiro/mgt/SecurityManager;)V

    return-object v0
.end method
