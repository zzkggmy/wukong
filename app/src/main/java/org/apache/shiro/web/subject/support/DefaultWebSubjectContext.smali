.class public Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;
.super Lorg/apache/shiro/subject/support/DefaultSubjectContext;
.source "DefaultWebSubjectContext.java"

# interfaces
.implements Lorg/apache/shiro/web/subject/WebSubjectContext;


# static fields
.field private static final SERVLET_REQUEST:Ljava/lang/String;

.field private static final SERVLET_RESPONSE:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x71a397b5f8a05d9bL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SERVLET_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->SERVLET_REQUEST:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SERVLET_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->SERVLET_RESPONSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/web/subject/WebSubjectContext;)V
    .locals 0
    .param p1, "context"    # Lorg/apache/shiro/web/subject/WebSubjectContext;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;-><init>(Lorg/apache/shiro/subject/SubjectContext;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getServletRequest()Ljavax/servlet/ServletRequest;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->SERVLET_REQUEST:Ljava/lang/String;

    const-class v1, Ljavax/servlet/ServletRequest;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletRequest;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->SERVLET_RESPONSE:Ljava/lang/String;

    const-class v1, Ljavax/servlet/ServletResponse;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public resolveHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->resolveHost()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->resolveServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 54
    .local v1, "request":Ljavax/servlet/ServletRequest;
    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1}, Ljavax/servlet/ServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    .line 58
    .end local v1    # "request":Ljavax/servlet/ServletRequest;
    :cond_0
    return-object v0
.end method

.method public resolveServletRequest()Ljavax/servlet/ServletRequest;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 76
    .local v1, "request":Ljavax/servlet/ServletRequest;
    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 78
    .local v0, "existing":Lorg/apache/shiro/subject/Subject;
    instance-of v2, v0, Lorg/apache/shiro/web/subject/WebSubject;

    if-eqz v2, :cond_0

    .line 79
    check-cast v0, Lorg/apache/shiro/web/subject/WebSubject;

    .end local v0    # "existing":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v0}, Lorg/apache/shiro/web/subject/WebSubject;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v1

    .line 83
    :cond_0
    return-object v1
.end method

.method public resolveServletResponse()Ljavax/servlet/ServletResponse;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v1

    .line 101
    .local v1, "response":Ljavax/servlet/ServletResponse;
    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 103
    .local v0, "existing":Lorg/apache/shiro/subject/Subject;
    instance-of v2, v0, Lorg/apache/shiro/web/subject/WebSubject;

    if-eqz v2, :cond_0

    .line 104
    check-cast v0, Lorg/apache/shiro/web/subject/WebSubject;

    .end local v0    # "existing":Lorg/apache/shiro/subject/Subject;
    invoke-interface {v0}, Lorg/apache/shiro/web/subject/WebSubject;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v1

    .line 108
    :cond_0
    return-object v1
.end method

.method public setServletRequest(Ljavax/servlet/ServletRequest;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    sget-object v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->SERVLET_REQUEST:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    return-void
.end method

.method public setServletResponse(Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    sget-object v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->SERVLET_RESPONSE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method
