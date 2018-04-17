.class public Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;
.super Lorg/apache/shiro/mgt/DefaultSecurityManager;
.source "DefaultWebSecurityManager.java"

# interfaces
.implements Lorg/apache/shiro/web/mgt/WebSecurityManager;


# static fields
.field public static final HTTP_SESSION_MODE:Ljava/lang/String; = "http"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NATIVE_SESSION_MODE:Ljava/lang/String; = "native"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private sessionMode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;-><init>()V

    .line 72
    iget-object v0, p0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->subjectDAO:Lorg/apache/shiro/mgt/SubjectDAO;

    check-cast v0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;

    new-instance v1, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;

    invoke-direct {v1}, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->setSessionStorageEvaluator(Lorg/apache/shiro/mgt/SessionStorageEvaluator;)V

    .line 73
    const-string v0, "http"

    iput-object v0, p0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->sessionMode:Ljava/lang/String;

    .line 74
    new-instance v0, Lorg/apache/shiro/web/mgt/DefaultWebSubjectFactory;

    invoke-direct {v0}, Lorg/apache/shiro/web/mgt/DefaultWebSubjectFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->setSubjectFactory(Lorg/apache/shiro/mgt/SubjectFactory;)V

    .line 75
    new-instance v0, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;

    invoke-direct {v0}, Lorg/apache/shiro/web/mgt/CookieRememberMeManager;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->setRememberMeManager(Lorg/apache/shiro/mgt/RememberMeManager;)V

    .line 76
    new-instance v0, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;

    invoke-direct {v0}, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->setSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-direct {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->setRealms(Ljava/util/Collection;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/realm/Realm;)V
    .locals 0
    .param p1, "singleRealm"    # Lorg/apache/shiro/realm/Realm;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->setRealm(Lorg/apache/shiro/realm/Realm;)V

    .line 83
    return-void
.end method

.method private applySessionManagerToSessionStorageEvaluatorIfPossible()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->getSubjectDAO()Lorg/apache/shiro/mgt/SubjectDAO;

    move-result-object v1

    .line 113
    .local v1, "subjectDAO":Lorg/apache/shiro/mgt/SubjectDAO;
    instance-of v2, v1, Lorg/apache/shiro/mgt/DefaultSubjectDAO;

    if-eqz v2, :cond_0

    .line 114
    check-cast v1, Lorg/apache/shiro/mgt/DefaultSubjectDAO;

    .end local v1    # "subjectDAO":Lorg/apache/shiro/mgt/SubjectDAO;
    invoke-virtual {v1}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->getSessionStorageEvaluator()Lorg/apache/shiro/mgt/SessionStorageEvaluator;

    move-result-object v0

    .line 115
    .local v0, "evaluator":Lorg/apache/shiro/mgt/SessionStorageEvaluator;
    instance-of v2, v0, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;

    if-eqz v2, :cond_0

    .line 116
    check-cast v0, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;

    .end local v0    # "evaluator":Lorg/apache/shiro/mgt/SessionStorageEvaluator;
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->getSessionManager()Lorg/apache/shiro/session/mgt/SessionManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/shiro/web/mgt/DefaultWebSessionStorageEvaluator;->setSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V

    .line 119
    :cond_0
    return-void
.end method

.method private setInternalSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/SessionManager;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->setSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected afterSessionManagerSet()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->afterSessionManagerSet()V

    .line 107
    invoke-direct {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->applySessionManagerToSessionStorageEvaluatorIfPossible()V

    .line 108
    return-void
.end method

.method protected beforeLogout(Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->beforeLogout(Lorg/apache/shiro/subject/Subject;)V

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->removeRequestIdentity(Lorg/apache/shiro/subject/Subject;)V

    .line 242
    return-void
.end method

.method protected copy(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;
    .locals 1
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 123
    instance-of v0, p1, Lorg/apache/shiro/web/subject/WebSubjectContext;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;

    check-cast p1, Lorg/apache/shiro/web/subject/WebSubjectContext;

    .end local p1    # "subjectContext":Lorg/apache/shiro/subject/SubjectContext;
    invoke-direct {v0, p1}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;-><init>(Lorg/apache/shiro/web/subject/WebSubjectContext;)V

    .line 126
    :goto_0
    return-object v0

    .restart local p1    # "subjectContext":Lorg/apache/shiro/subject/SubjectContext;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->copy(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/subject/SubjectContext;

    move-result-object v0

    goto :goto_0
.end method

.method protected createSessionContext(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/mgt/SessionContext;
    .locals 6
    .param p1, "subjectContext"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->createSessionContext(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/mgt/SessionContext;

    move-result-object v2

    .line 208
    .local v2, "sessionContext":Lorg/apache/shiro/session/mgt/SessionContext;
    instance-of v5, p1, Lorg/apache/shiro/web/subject/WebSubjectContext;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 209
    check-cast v4, Lorg/apache/shiro/web/subject/WebSubjectContext;

    .line 210
    .local v4, "wsc":Lorg/apache/shiro/web/subject/WebSubjectContext;
    invoke-interface {v4}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 211
    .local v0, "request":Ljavax/servlet/ServletRequest;
    invoke-interface {v4}, Lorg/apache/shiro/web/subject/WebSubjectContext;->resolveServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v1

    .line 212
    .local v1, "response":Ljavax/servlet/ServletResponse;
    new-instance v3, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;

    invoke-direct {v3, v2}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;-><init>(Ljava/util/Map;)V

    .line 213
    .local v3, "webSessionContext":Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v3, v0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->setServletRequest(Ljavax/servlet/ServletRequest;)V

    .line 216
    :cond_0
    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v3, v1}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;->setServletResponse(Ljavax/servlet/ServletResponse;)V

    .line 220
    :cond_1
    move-object v2, v3

    .line 222
    .end local v0    # "request":Ljavax/servlet/ServletRequest;
    .end local v1    # "response":Ljavax/servlet/ServletResponse;
    .end local v3    # "webSessionContext":Lorg/apache/shiro/web/session/mgt/DefaultWebSessionContext;
    .end local v4    # "wsc":Lorg/apache/shiro/web/subject/WebSubjectContext;
    :cond_2
    return-object v2
.end method

.method protected createSessionManager(Ljava/lang/String;)Lorg/apache/shiro/session/mgt/SessionManager;
    .locals 3
    .param p1, "sessionMode"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    const-string v0, "native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    sget-object v0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v1, "{} mode - enabling ServletContainerSessionManager (HTTP-only Sessions)"

    const-string v2, "http"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    new-instance v0, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;

    invoke-direct {v0}, Lorg/apache/shiro/web/session/mgt/ServletContainerSessionManager;-><init>()V

    .line 201
    :goto_0
    return-object v0

    .line 200
    :cond_1
    sget-object v0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v1, "{} mode - enabling DefaultWebSessionManager (non-HTTP and HTTP Sessions)"

    const-string v2, "native"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    new-instance v0, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;

    invoke-direct {v0}, Lorg/apache/shiro/web/session/mgt/DefaultWebSessionManager;-><init>()V

    goto :goto_0
.end method

.method protected createSubjectContext()Lorg/apache/shiro/subject/SubjectContext;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;

    invoke-direct {v0}, Lorg/apache/shiro/web/subject/support/DefaultWebSubjectContext;-><init>()V

    return-object v0
.end method

.method protected getSessionKey(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/mgt/SessionKey;
    .locals 4
    .param p1, "context"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 227
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->isWeb(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {p1}, Lorg/apache/shiro/subject/SubjectContext;->getSessionId()Ljava/io/Serializable;

    move-result-object v2

    .line 229
    .local v2, "sessionId":Ljava/io/Serializable;
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getRequest(Ljava/lang/Object;)Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 230
    .local v0, "request":Ljavax/servlet/ServletRequest;
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->getResponse(Ljava/lang/Object;)Ljavax/servlet/ServletResponse;

    move-result-object v1

    .line 231
    .local v1, "response":Ljavax/servlet/ServletResponse;
    new-instance v3, Lorg/apache/shiro/web/session/mgt/WebSessionKey;

    invoke-direct {v3, v2, v0, v1}, Lorg/apache/shiro/web/session/mgt/WebSessionKey;-><init>(Ljava/io/Serializable;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 233
    .end local v0    # "request":Ljavax/servlet/ServletRequest;
    .end local v1    # "response":Ljavax/servlet/ServletResponse;
    .end local v2    # "sessionId":Ljava/io/Serializable;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->getSessionKey(Lorg/apache/shiro/subject/SubjectContext;)Lorg/apache/shiro/session/mgt/SessionKey;

    move-result-object v3

    goto :goto_0
.end method

.method public getSessionMode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->sessionMode:Ljava/lang/String;

    return-object v0
.end method

.method public isHttpSessionMode()Z
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->getSessionManager()Lorg/apache/shiro/session/mgt/SessionManager;

    move-result-object v0

    .line 192
    .local v0, "sessionManager":Lorg/apache/shiro/session/mgt/SessionManager;
    instance-of v1, v0, Lorg/apache/shiro/web/session/mgt/WebSessionManager;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/shiro/web/session/mgt/WebSessionManager;

    .end local v0    # "sessionManager":Lorg/apache/shiro/session/mgt/SessionManager;
    invoke-interface {v0}, Lorg/apache/shiro/web/session/mgt/WebSessionManager;->isServletContainerSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected removeRequestIdentity(Lorg/apache/shiro/subject/Subject;)V
    .locals 4
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 245
    instance-of v2, p1, Lorg/apache/shiro/web/subject/WebSubject;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 246
    check-cast v1, Lorg/apache/shiro/web/subject/WebSubject;

    .line 247
    .local v1, "webSubject":Lorg/apache/shiro/web/subject/WebSubject;
    invoke-interface {v1}, Lorg/apache/shiro/web/subject/WebSubject;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 248
    .local v0, "request":Ljavax/servlet/ServletRequest;
    if-eqz v0, :cond_0

    .line 249
    sget-object v2, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->IDENTITY_REMOVED_KEY:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    .end local v0    # "request":Ljavax/servlet/ServletRequest;
    .end local v1    # "webSubject":Lorg/apache/shiro/web/subject/WebSubject;
    :cond_0
    return-void
.end method

.method public setSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V
    .locals 3
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/SessionManager;

    .prologue
    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->sessionMode:Ljava/lang/String;

    .line 167
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/apache/shiro/web/session/mgt/WebSessionManager;

    if-nez v1, :cond_0

    .line 168
    sget-object v1, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation expects SessionManager instances "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "that implement the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/web/session/mgt/WebSessionManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interface.  The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "configured instance is of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] which does not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "implement this interface..  This may cause unexpected behavior."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 176
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->setInternalSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V

    .line 177
    return-void
.end method

.method public setSessionMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionMode"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    sget-object v4, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->log:Lorg/slf4j/Logger;

    const-string v5, "The \'sessionMode\' property has been deprecated.  Please configure an appropriate WebSessionManager instance instead of using this property.  This property/method will be removed in a later version."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 143
    move-object v0, p1

    .line 144
    .local v0, "mode":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 145
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "sessionMode argument cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v4, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "native"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid sessionMode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].  Allowed values are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "public static final String constants in the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " class: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' or \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "native"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', with \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' being the default."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->sessionMode:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->sessionMode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    const/4 v2, 0x1

    .line 156
    .local v2, "recreate":Z
    :goto_0
    iput-object v0, p0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->sessionMode:Ljava/lang/String;

    .line 157
    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->getSessionManager()Lorg/apache/shiro/session/mgt/SessionManager;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->createSessionManager(Ljava/lang/String;)Lorg/apache/shiro/session/mgt/SessionManager;

    move-result-object v3

    .line 160
    .local v3, "sessionManager":Lorg/apache/shiro/session/mgt/SessionManager;
    invoke-direct {p0, v3}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->setInternalSessionManager(Lorg/apache/shiro/session/mgt/SessionManager;)V

    .line 162
    .end local v3    # "sessionManager":Lorg/apache/shiro/session/mgt/SessionManager;
    :cond_3
    return-void

    .line 155
    .end local v2    # "recreate":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSubjectDAO(Lorg/apache/shiro/mgt/SubjectDAO;)V
    .locals 0
    .param p1, "subjectDAO"    # Lorg/apache/shiro/mgt/SubjectDAO;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lorg/apache/shiro/mgt/DefaultSecurityManager;->setSubjectDAO(Lorg/apache/shiro/mgt/SubjectDAO;)V

    .line 100
    invoke-direct {p0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;->applySessionManagerToSessionStorageEvaluatorIfPossible()V

    .line 101
    return-void
.end method
