.class public Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "ShiroHttpServletRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;
    }
.end annotation


# static fields
.field public static final COOKIE_SESSION_ID_SOURCE:Ljava/lang/String; = "cookie"

.field public static final IDENTITY_REMOVED_KEY:Ljava/lang/String;

.field public static final REFERENCED_SESSION_ID:Ljava/lang/String;

.field public static final REFERENCED_SESSION_ID_IS_VALID:Ljava/lang/String;

.field public static final REFERENCED_SESSION_ID_SOURCE:Ljava/lang/String;

.field public static final REFERENCED_SESSION_IS_NEW:Ljava/lang/String;

.field public static final URL_SESSION_ID_SOURCE:Ljava/lang/String; = "url"


# instance fields
.field protected httpSessions:Z

.field protected servletContext:Ljavax/servlet/ServletContext;

.field protected session:Ljavax/servlet/http/HttpSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_REQUESTED_SESSION_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_REQUESTED_SESSION_ID_VALID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_IS_VALID:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_REFERENCED_SESSION_IS_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_IS_NEW:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "REFERENCED_SESSION_ID_SOURCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_SOURCE:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_IDENTITY_REMOVED_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->IDENTITY_REMOVED_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/ServletContext;Z)V
    .locals 1
    .param p1, "wrapped"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "servletContext"    # Ljavax/servlet/ServletContext;
    .param p3, "httpSessions"    # Z

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    .line 55
    iput-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->servletContext:Ljavax/servlet/ServletContext;

    .line 57
    iput-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->httpSessions:Z

    .line 62
    iput-object p2, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->servletContext:Ljavax/servlet/ServletContext;

    .line 63
    iput-boolean p3, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->httpSessions:Z

    .line 64
    return-void
.end method

.method private newNoSessionCreationException()Lorg/apache/shiro/subject/support/DisabledSessionException;
    .locals 3

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session creation has been disabled for the current request.  This exception indicates that there is either a programming error (using a session when it should never be used) or that Shiro\'s configuration needs to be adjusted to allow Sessions to be created for the current request.  See the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/subject/support/DisabledSessionException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JavaDoc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for more."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/subject/support/DisabledSessionException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/subject/support/DisabledSessionException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getRemoteUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSubjectPrincipal()Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "scPrincipal":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 74
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 84
    .end local v1    # "scPrincipal":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 76
    .restart local v1    # "scPrincipal":Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/security/Principal;

    if-eqz v2, :cond_1

    .line 77
    check-cast v1, Ljava/security/Principal;

    .end local v1    # "scPrincipal":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "remoteUser":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 84
    goto :goto_0

    .line 79
    .end local v0    # "remoteUser":Ljava/lang/String;
    .restart local v1    # "scPrincipal":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "remoteUser":Ljava/lang/String;
    goto :goto_1

    .line 82
    .end local v0    # "remoteUser":Ljava/lang/String;
    :cond_2
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "remoteUser":Ljava/lang/String;
    goto :goto_1
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "requestedSessionId":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->isHttpSessions()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    sget-object v2, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "sessionId":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 5
    .param p1, "create"    # Z

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->isHttpSessions()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-super {p0, v0}, Ljavax/servlet/http/HttpServletRequestWrapper;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 144
    .local v1, "httpSession":Ljavax/servlet/http/HttpSession;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 146
    invoke-static {p0}, Lorg/apache/shiro/web/util/WebUtils;->_isSessionCreationEnabled(Ljavax/servlet/ServletRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 168
    :cond_0
    :goto_0
    return-object v1

    .line 149
    :cond_1
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->newNoSessionCreationException()Lorg/apache/shiro/subject/support/DisabledSessionException;

    move-result-object v3

    throw v3

    .line 153
    .end local v1    # "httpSession":Ljavax/servlet/http/HttpSession;
    :cond_2
    iget-object v3, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    if-nez v3, :cond_4

    .line 155
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 157
    .local v0, "existing":Z
    :cond_3
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v2

    .line 158
    .local v2, "shiroSession":Lorg/apache/shiro/session/Session;
    if-eqz v2, :cond_4

    .line 159
    new-instance v3, Lorg/apache/shiro/web/servlet/ShiroHttpSession;

    iget-object v4, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->servletContext:Ljavax/servlet/ServletContext;

    invoke-direct {v3, v2, p0, v4}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;-><init>(Lorg/apache/shiro/session/Session;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/ServletContext;)V

    iput-object v3, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    .line 160
    if-nez v0, :cond_4

    .line 161
    sget-object v3, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_IS_NEW:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .end local v0    # "existing":Z
    .end local v2    # "shiroSession":Lorg/apache/shiro/session/Session;
    :cond_4
    iget-object v1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    .restart local v1    # "httpSession":Ljavax/servlet/http/HttpSession;
    goto :goto_0
.end method

.method protected getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    return-object v0
.end method

.method protected getSubjectPrincipal()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "userPrincipal":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 94
    .local v0, "subject":Lorg/apache/shiro/subject/Subject;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .end local v1    # "userPrincipal":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSubjectPrincipal()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "scPrincipal":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 113
    instance-of v2, v0, Ljava/security/Principal;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 114
    check-cast v1, Ljava/security/Principal;

    .line 121
    .local v1, "userPrincipal":Ljava/security/Principal;
    :goto_0
    return-object v1

    .line 116
    .end local v1    # "userPrincipal":Ljava/security/Principal;
    :cond_0
    new-instance v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;

    invoke-direct {v1, p0, v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest$ObjectPrincipal;-><init>(Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;Ljava/lang/Object;)V

    .restart local v1    # "userPrincipal":Ljava/security/Principal;
    goto :goto_0

    .line 119
    .end local v1    # "userPrincipal":Ljava/security/Principal;
    :cond_1
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    .restart local v1    # "userPrincipal":Ljava/security/Principal;
    goto :goto_0
.end method

.method public isHttpSessions()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->httpSessions:Z

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->isHttpSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->isRequestedSessionIdFromCookie()Z

    move-result v1

    .line 205
    :goto_0
    return v1

    .line 204
    :cond_0
    sget-object v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_SOURCE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->isHttpSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->isRequestedSessionIdFromURL()Z

    move-result v1

    .line 214
    :goto_0
    return v1

    .line 213
    :cond_0
    sget-object v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_SOURCE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->isRequestedSessionIdFromURL()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->isHttpSessions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->isRequestedSessionIdValid()Z

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 195
    :cond_0
    sget-object v1, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_ID_IS_VALID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 196
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v1

    .line 102
    .local v1, "subject":Lorg/apache/shiro/subject/Subject;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lorg/apache/shiro/subject/Subject;->hasRole(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 103
    .local v0, "inRole":Z
    :goto_0
    if-nez v0, :cond_0

    .line 104
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;->isUserInRole(Ljava/lang/String;)Z

    move-result v0

    .line 106
    :cond_0
    return v0

    .line 102
    .end local v0    # "inRole":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
