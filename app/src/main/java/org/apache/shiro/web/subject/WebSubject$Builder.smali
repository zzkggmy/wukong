.class public Lorg/apache/shiro/web/subject/WebSubject$Builder;
.super Lorg/apache/shiro/subject/Subject$Builder;
.source "WebSubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/web/subject/WebSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/shiro/web/subject/WebSubject$Builder;-><init>(Lorg/apache/shiro/mgt/SecurityManager;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/mgt/SecurityManager;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/shiro/subject/Subject$Builder;-><init>(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ServletRequest argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    if-nez p3, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ServletResponse argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/subject/WebSubject$Builder;->setRequest(Ljavax/servlet/ServletRequest;)Lorg/apache/shiro/web/subject/WebSubject$Builder;

    .line 94
    invoke-virtual {p0, p3}, Lorg/apache/shiro/web/subject/WebSubject$Builder;->setResponse(Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/web/subject/WebSubject$Builder;

    .line 95
    return-void
.end method


# virtual methods
.method public buildWebSubject()Lorg/apache/shiro/web/subject/WebSubject;
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Lorg/apache/shiro/subject/Subject$Builder;->buildSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v1

    .line 149
    .local v1, "subject":Lorg/apache/shiro/subject/Subject;
    instance-of v2, v1, Lorg/apache/shiro/web/subject/WebSubject;

    if-nez v2, :cond_0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subject implementation returned from the SecurityManager was not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/apache/shiro/web/subject/WebSubject;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " implementation.  Please ensure a Web-enabled SecurityManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "has been configured and made available to this builder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    check-cast v1, Lorg/apache/shiro/web/subject/WebSubject;

    .end local v1    # "subject":Lorg/apache/shiro/subject/Subject;
    return-object v1
.end method

.method protected newSubjectContextInstance()Lorg/apache/shiro/subject/SubjectContext;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;

    invoke-direct {v0}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;-><init>()V

    return-object v0
.end method

.method protected setRequest(Ljavax/servlet/ServletRequest;)Lorg/apache/shiro/web/subject/WebSubject$Builder;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/WebSubject$Builder;->getSubjectContext()Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/web/subject/WebSubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/web/subject/WebSubjectContext;->setServletRequest(Ljavax/servlet/ServletRequest;)V

    .line 121
    :cond_0
    return-object p0
.end method

.method protected setResponse(Ljavax/servlet/ServletResponse;)Lorg/apache/shiro/web/subject/WebSubject$Builder;
    .locals 1
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/WebSubject$Builder;->getSubjectContext()Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/web/subject/WebSubjectContext;

    invoke-interface {v0, p1}, Lorg/apache/shiro/web/subject/WebSubjectContext;->setServletResponse(Ljavax/servlet/ServletResponse;)V

    .line 136
    :cond_0
    return-object p0
.end method
