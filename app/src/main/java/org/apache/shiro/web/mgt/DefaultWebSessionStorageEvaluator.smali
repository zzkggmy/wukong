.class public Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;
.super Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;
.source "DefaultWebSessionStorageEvaluator.java"


# instance fields
.field private sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public isSessionStorageEnabled(Lorg/apache/shiro/subject/Subject;)Z
    .locals 2
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-interface {p1, v0}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v0, 0x1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;->isSessionStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    instance-of v1, p1, Lorg/apache/shiro/web/subject/WebSubject;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    instance-of v1, v1, Lorg/apache/shiro/session/mgt/NativeSessionManager;

    if-eqz v1, :cond_0

    .line 96
    :cond_2
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->_isSessionCreationEnabled(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method setSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/SessionManager;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;->sessionManager:Lorg/apache/shiro/session/mgt/SessionManager;

    .line 62
    return-void
.end method
