.class public Lorg/apache/shiro/subject/Subject$Builder;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/subject/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final securityManager:Lorg/apache/shiro/mgt/SecurityManager;

.field private final subjectContext:Lorg/apache/shiro/subject/SubjectContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 627
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/shiro/subject/Subject$Builder;-><init>(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 628
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 2
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    if-nez p1, :cond_0

    .line 638
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SecurityManager method argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/subject/Subject$Builder;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 641
    invoke-virtual {p0}, Lorg/apache/shiro/subject/Subject$Builder;->newSubjectContextInstance()Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    .line 642
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    if-nez v0, :cond_1

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Subject instance returned from \'newSubjectContextInstance\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_1
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 647
    return-void
.end method


# virtual methods
.method public authenticated(Z)Lorg/apache/shiro/subject/Subject$Builder;
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 792
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setAuthenticated(Z)V

    .line 793
    return-object p0
.end method

.method public buildSubject()Lorg/apache/shiro/subject/Subject;
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    iget-object v1, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, v1}, Lorg/apache/shiro/mgt/SecurityManager;->createSubject(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method public contextAttribute(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/shiro/subject/Subject$Builder;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/Object;

    .prologue
    .line 815
    if-nez p1, :cond_0

    .line 816
    const-string v0, "Subject context map key cannot be null."

    .line 817
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    .line 820
    iget-object v1, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v1, p1}, Lorg/apache/shiro/subject/SubjectContext;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :goto_0
    return-object p0

    .line 822
    :cond_1
    iget-object v1, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v1, p1, p2}, Lorg/apache/shiro/subject/SubjectContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getSubjectContext()Lorg/apache/shiro/subject/SubjectContext;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    return-object v0
.end method

.method public host(Ljava/lang/String;)Lorg/apache/shiro/subject/Subject$Builder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 711
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setHost(Ljava/lang/String;)V

    .line 714
    :cond_0
    return-object p0
.end method

.method protected newSubjectContextInstance()Lorg/apache/shiro/subject/SubjectContext;
    .locals 1

    .prologue
    .line 656
    new-instance v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-direct {v0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;-><init>()V

    return-object v0
.end method

.method public principals(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/subject/Subject$Builder;
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 757
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setPrincipals(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 760
    :cond_0
    return-object p0
.end method

.method public session(Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/subject/Subject$Builder;
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 726
    if-eqz p1, :cond_0

    .line 727
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setSession(Lorg/apache/shiro/session/Session;)V

    .line 729
    :cond_0
    return-object p0
.end method

.method public sessionCreationEnabled(Z)Lorg/apache/shiro/subject/Subject$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setSessionCreationEnabled(Z)V

    .line 777
    return-object p0
.end method

.method public sessionId(Ljava/io/Serializable;)Lorg/apache/shiro/subject/Subject$Builder;
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 697
    if-eqz p1, :cond_0

    .line 698
    iget-object v0, p0, Lorg/apache/shiro/subject/Subject$Builder;->subjectContext:Lorg/apache/shiro/subject/SubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/subject/SubjectContext;->setSessionId(Ljava/io/Serializable;)V

    .line 700
    :cond_0
    return-object p0
.end method
