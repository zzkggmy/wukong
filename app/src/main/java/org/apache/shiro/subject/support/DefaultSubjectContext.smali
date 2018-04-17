.class public Lorg/apache/shiro/subject/support/DefaultSubjectContext;
.super Lorg/apache/shiro/util/MapContext;
.source "DefaultSubjectContext.java"

# interfaces
.implements Lorg/apache/shiro/subject/SubjectContext;


# static fields
.field private static final AUTHENTICATED:Ljava/lang/String;

.field public static final AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

.field private static final AUTHENTICATION_INFO:Ljava/lang/String;

.field private static final AUTHENTICATION_TOKEN:Ljava/lang/String;

.field private static final HOST:Ljava/lang/String;

.field private static final PRINCIPALS:Ljava/lang/String;

.field public static final PRINCIPALS_SESSION_KEY:Ljava/lang/String;

.field private static final SECURITY_MANAGER:Ljava/lang/String;

.field private static final SESSION:Ljava/lang/String;

.field public static final SESSION_CREATION_ENABLED:Ljava/lang/String;

.field private static final SESSION_ID:Ljava/lang/String;

.field private static final SUBJECT:Ljava/lang/String;

.field private static final transient log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SECURITY_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SECURITY_MANAGER:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SESSION_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_ID:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AUTHENTICATION_TOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATION_TOKEN:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AUTHENTICATION_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATION_INFO:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SUBJECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SUBJECT:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PRINCIPALS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AUTHENTICATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->HOST:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SESSION_CREATION_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_CREATION_ENABLED:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_PRINCIPALS_SESSION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AUTHENTICATED_SESSION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

    .line 80
    const-class v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/shiro/util/MapContext;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/subject/SubjectContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/shiro/subject/SubjectContext;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/apache/shiro/util/MapContext;-><init>(Ljava/util/Map;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getAuthenticationInfo()Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATION_INFO:Ljava/lang/String;

    const-class v1, Lorg/apache/shiro/authc/AuthenticationInfo;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/authc/AuthenticationInfo;

    return-object v0
.end method

.method public getAuthenticationToken()Lorg/apache/shiro/authc/AuthenticationToken;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATION_TOKEN:Ljava/lang/String;

    const-class v1, Lorg/apache/shiro/authc/AuthenticationToken;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/authc/AuthenticationToken;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->HOST:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS:Ljava/lang/String;

    const-class v1, Lorg/apache/shiro/subject/PrincipalCollection;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/subject/PrincipalCollection;

    return-object v0
.end method

.method public getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SECURITY_MANAGER:Ljava/lang/String;

    const-class v1, Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/mgt/SecurityManager;

    return-object v0
.end method

.method public getSession()Lorg/apache/shiro/session/Session;
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION:Ljava/lang/String;

    const-class v1, Lorg/apache/shiro/session/Session;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/session/Session;

    return-object v0
.end method

.method public getSessionId()Ljava/io/Serializable;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_ID:Ljava/lang/String;

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SUBJECT:Ljava/lang/String;

    const-class v1, Lorg/apache/shiro/subject/Subject;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/subject/Subject;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 3

    .prologue
    .line 202
    sget-object v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED:Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 203
    .local v0, "authc":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSessionCreationEnabled()Z
    .locals 3

    .prologue
    .line 193
    sget-object v1, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_CREATION_ENABLED:Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 194
    .local v0, "val":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveAuthenticated()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 211
    sget-object v4, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED:Ljava/lang/String;

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {p0, v4, v7}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 212
    .local v0, "authc":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getAuthenticationInfo()Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v1

    .line 216
    .local v1, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    if-eqz v1, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 218
    .end local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->resolveSession()Lorg/apache/shiro/session/Session;

    move-result-object v2

    .line 221
    .local v2, "session":Lorg/apache/shiro/session/Session;
    if-eqz v2, :cond_1

    .line 222
    sget-object v4, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 223
    .local v3, "sessionAuthc":Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    .end local v2    # "session":Lorg/apache/shiro/session/Session;
    .end local v3    # "sessionAuthc":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .restart local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_2
    move v4, v6

    .line 216
    goto :goto_0

    .end local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    .restart local v2    # "session":Lorg/apache/shiro/session/Session;
    .restart local v3    # "sessionAuthc":Ljava/lang/Boolean;
    :cond_3
    move v5, v6

    .line 223
    goto :goto_1
.end method

.method public resolveHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getAuthenticationToken()Lorg/apache/shiro/authc/AuthenticationToken;

    move-result-object v2

    .line 262
    .local v2, "token":Lorg/apache/shiro/authc/AuthenticationToken;
    instance-of v3, v2, Lorg/apache/shiro/authc/HostAuthenticationToken;

    if-eqz v3, :cond_0

    .line 263
    check-cast v2, Lorg/apache/shiro/authc/HostAuthenticationToken;

    .end local v2    # "token":Lorg/apache/shiro/authc/AuthenticationToken;
    invoke-interface {v2}, Lorg/apache/shiro/authc/HostAuthenticationToken;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_0
    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->resolveSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 269
    .local v1, "session":Lorg/apache/shiro/session/Session;
    if-eqz v1, :cond_1

    .line 270
    invoke-interface {v1}, Lorg/apache/shiro/session/Session;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 274
    .end local v1    # "session":Lorg/apache/shiro/session/Session;
    :cond_1
    return-object v0
.end method

.method public resolvePrincipals()Lorg/apache/shiro/subject/PrincipalCollection;
    .locals 5

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    .line 145
    .local v1, "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getAuthenticationInfo()Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v0

    .line 148
    .local v0, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    .line 153
    .end local v0    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_0
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    .line 155
    .local v3, "subject":Lorg/apache/shiro/subject/Subject;
    if-eqz v3, :cond_1

    .line 156
    invoke-interface {v3}, Lorg/apache/shiro/subject/Subject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v1

    .line 160
    .end local v3    # "subject":Lorg/apache/shiro/subject/Subject;
    :cond_1
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->resolveSession()Lorg/apache/shiro/session/Session;

    move-result-object v2

    .line 163
    .local v2, "session":Lorg/apache/shiro/session/Session;
    if-eqz v2, :cond_2

    .line 164
    sget-object v4, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS_SESSION_KEY:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    check-cast v1, Lorg/apache/shiro/subject/PrincipalCollection;

    .line 168
    .end local v2    # "session":Lorg/apache/shiro/session/Session;
    .restart local v1    # "principals":Lorg/apache/shiro/subject/PrincipalCollection;
    :cond_2
    return-object v1
.end method

.method public resolveSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v1

    .line 100
    .local v1, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    if-nez v1, :cond_1

    .line 101
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->log:Lorg/slf4j/Logger;

    const-string v3, "No SecurityManager available in subject context map.  Falling back to SecurityUtils.getSecurityManager() lookup."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 106
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    :try_end_0
    .catch Lorg/apache/shiro/UnavailableSecurityManagerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :cond_1
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/apache/shiro/UnavailableSecurityManagerException;
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    sget-object v2, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->log:Lorg/slf4j/Logger;

    const-string v3, "No SecurityManager available via SecurityUtils.  Heuristics exhausted."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resolveSession()Lorg/apache/shiro/session/Session;
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 182
    .local v1, "session":Lorg/apache/shiro/session/Session;
    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 185
    .local v0, "existingSubject":Lorg/apache/shiro/subject/Subject;
    if-eqz v0, :cond_0

    .line 186
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v1

    .line 189
    .end local v0    # "existingSubject":Lorg/apache/shiro/subject/Subject;
    :cond_0
    return-object v1
.end method

.method public setAuthenticated(Z)V
    .locals 2
    .param p1, "authc"    # Z

    .prologue
    .line 207
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATED:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public setAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 235
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATION_INFO:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public setAuthenticationToken(Lorg/apache/shiro/authc/AuthenticationToken;)V
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 243
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->AUTHENTICATION_TOKEN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->HOST:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    return-void
.end method

.method public setPrincipals(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 137
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->PRINCIPALS:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    return-void
.end method

.method public setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 1
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 95
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SECURITY_MANAGER:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public setSession(Lorg/apache/shiro/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 177
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public setSessionCreationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 198
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_CREATION_ENABLED:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public setSessionId(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 121
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SESSION_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public setSubject(Lorg/apache/shiro/subject/Subject;)V
    .locals 1
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    .line 129
    sget-object v0, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->SUBJECT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/subject/support/DefaultSubjectContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method
