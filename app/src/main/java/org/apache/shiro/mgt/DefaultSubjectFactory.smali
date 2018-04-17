.class public Lorg/apache/shiro/mgt/DefaultSubjectFactory;
.super Ljava/lang/Object;
.source "DefaultSubjectFactory.java"

# interfaces
.implements Lorg/apache/shiro/mgt/SubjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;
    .locals 7
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 40
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolveSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v6

    .line 41
    .local v6, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolveSession()Lorg/apache/shiro/session/Session;

    move-result-object v4

    .line 42
    .local v4, "session":Lorg/apache/shiro/session/Session;
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->isSessionCreationEnabled()Z

    move-result v5

    .line 43
    .local v5, "sessionCreationEnabled":Z
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolvePrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    .line 44
    .local v1, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolveAuthenticated()Z

    move-result v2

    .line 45
    .local v2, "authenticated":Z
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->resolveHost()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "host":Ljava/lang/String;
    new-instance v0, Lorg/apache/shiro/subject/support/DelegatingSubject;

    invoke-direct/range {v0 .. v6}, Lorg/apache/shiro/subject/support/DelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLorg/apache/shiro/mgt/SecurityManager;)V

    return-object v0
.end method

.method protected newSubjectInstance(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;Lorg/apache/shiro/mgt/SecurityManager;)Lorg/apache/shiro/subject/Subject;
    .locals 7
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "authenticated"    # Z
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "session"    # Lorg/apache/shiro/session/Session;
    .param p5, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/apache/shiro/subject/support/DelegatingSubject;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/shiro/subject/support/DelegatingSubject;-><init>(Lorg/apache/shiro/subject/PrincipalCollection;ZLjava/lang/String;Lorg/apache/shiro/session/Session;ZLorg/apache/shiro/mgt/SecurityManager;)V

    return-object v0
.end method
