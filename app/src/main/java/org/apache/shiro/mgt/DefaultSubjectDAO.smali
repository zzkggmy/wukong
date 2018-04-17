.class public Lorg/apache/shiro/mgt/DefaultSubjectDAO;
.super Ljava/lang/Object;
.source "DefaultSubjectDAO.java"

# interfaces
.implements Lorg/apache/shiro/mgt/SubjectDAO;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private sessionStorageEvaluator:Lorg/apache/shiro/mgt/SessionStorageEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;

    invoke-direct {v0}, Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->sessionStorageEvaluator:Lorg/apache/shiro/mgt/SessionStorageEvaluator;

    .line 94
    return-void
.end method


# virtual methods
.method public delete(Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->removeFromSession(Lorg/apache/shiro/subject/Subject;)V

    .line 282
    return-void
.end method

.method public getSessionStorageEvaluator()Lorg/apache/shiro/mgt/SessionStorageEvaluator;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->sessionStorageEvaluator:Lorg/apache/shiro/mgt/SessionStorageEvaluator;

    return-object v0
.end method

.method protected isSessionStorageEnabled(Lorg/apache/shiro/subject/Subject;)Z
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->getSessionStorageEvaluator()Lorg/apache/shiro/mgt/SessionStorageEvaluator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/shiro/mgt/SessionStorageEvaluator;->isSessionStorageEnabled(Lorg/apache/shiro/subject/Subject;)Z

    move-result v0

    return v0
.end method

.method protected mergeAuthenticationState(Lorg/apache/shiro/subject/Subject;)V
    .locals 4
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 235
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 237
    .local v1, "session":Lorg/apache/shiro/session/Session;
    if-nez v1, :cond_1

    .line 238
    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 240
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 246
    .local v0, "existingAuthc":Ljava/lang/Boolean;
    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    :cond_2
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_3
    if-eqz v0, :cond_0

    .line 254
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected mergePrincipals(Lorg/apache/shiro/subject/Subject;)V
    .locals 7
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 187
    .local v0, "currentPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->isRunAs()Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, p1, Lorg/apache/shiro/subject/support/DelegatingSubject;

    if-eqz v5, :cond_0

    .line 189
    :try_start_0
    const-class v5, Lorg/apache/shiro/subject/support/DelegatingSubject;

    const-string v6, "principals"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 190
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 191
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    check-cast v0, Lorg/apache/shiro/subject/PrincipalCollection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v0    # "currentPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/shiro/subject/PrincipalCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    :cond_1
    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    .line 200
    :cond_2
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v4

    .line 202
    .local v4, "session":Lorg/apache/shiro/session/Session;
    if-nez v4, :cond_4

    .line 203
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 204
    invoke-interface {p1}, Lorg/apache/shiro/subject/Subject;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v4

    .line 205
    sget-object v5, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    :cond_3
    :goto_0
    return-void

    .line 192
    .end local v0    # "currentPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    .end local v4    # "session":Lorg/apache/shiro/session/Session;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unable to access DelegatingSubject principals property."

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    .restart local v4    # "session":Lorg/apache/shiro/session/Session;
    :cond_4
    sget-object v5, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/shiro/subject/PrincipalCollection;

    .line 212
    .local v2, "existingPrincipals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 214
    sget-object v5, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 219
    sget-object v5, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected removeFromSession(Lorg/apache/shiro/subject/Subject;)V
    .locals 2
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 268
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 269
    .local v0, "session":Lorg/apache/shiro/session/Session;
    if-eqz v0, :cond_0

    .line 270
    sget-object v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    return-void
.end method

.method public save(Lorg/apache/shiro/subject/Subject;)Lorg/apache/shiro/subject/Subject;
    .locals 2
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->isSessionStorageEnabled(Lorg/apache/shiro/subject/Subject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->saveToSession(Lorg/apache/shiro/subject/Subject;)V

    .line 153
    :goto_0
    return-object p1

    .line 149
    :cond_0
    sget-object v0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->log:Lorg/slf4j/Logger;

    const-string v1, "Session storage of subject state for Subject [{}] has been disabled: identity and authentication state are expected to be initialized on every request or invocation."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected saveToSession(Lorg/apache/shiro/subject/Subject;)V
    .locals 0
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->mergePrincipals(Lorg/apache/shiro/subject/Subject;)V

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->mergeAuthenticationState(Lorg/apache/shiro/subject/Subject;)V

    .line 168
    return-void
.end method

.method public setSessionStorageEvaluator(Lorg/apache/shiro/mgt/SessionStorageEvaluator;)V
    .locals 0
    .param p1, "sessionStorageEvaluator"    # Lorg/apache/shiro/mgt/SessionStorageEvaluator;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/apache/shiro/mgt/DefaultSubjectDAO;->sessionStorageEvaluator:Lorg/apache/shiro/mgt/SessionStorageEvaluator;

    .line 133
    return-void
.end method
