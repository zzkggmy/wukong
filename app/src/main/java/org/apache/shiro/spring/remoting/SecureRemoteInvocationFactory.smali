.class public Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;
.super Lorg/springframework/remoting/support/DefaultRemoteInvocationFactory;
.source "SecureRemoteInvocationFactory.java"


# static fields
.field public static final HOST_KEY:Ljava/lang/String;

.field public static final SESSION_ID_KEY:Ljava/lang/String;

.field private static final SESSION_ID_SYSTEM_PROPERTY_NAME:Ljava/lang/String; = "shiro.session.id"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->log:Lorg/slf4j/Logger;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SESSION_ID_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->SESSION_ID_KEY:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HOST_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->HOST_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/springframework/remoting/support/DefaultRemoteInvocationFactory;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->sessionId:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public createRemoteInvocation(Lorg/aopalliance/intercept/MethodInvocation;)Lorg/springframework/remoting/support/RemoteInvocation;
    .locals 12
    .param p1, "mi"    # Lorg/aopalliance/intercept/MethodInvocation;

    .prologue
    const/4 v11, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "sessionId":Ljava/io/Serializable;
    const/4 v1, 0x0

    .line 76
    .local v1, "host":Ljava/lang/String;
    const/4 v7, 0x0

    .line 80
    .local v7, "sessionManagerMethodInvocation":Z
    invoke-interface {p1}, Lorg/aopalliance/intercept/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 81
    .local v3, "miDeclaringClass":Ljava/lang/Class;
    const-class v9, Lorg/apache/shiro/session/mgt/SessionManager;

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-class v9, Lorg/apache/shiro/session/mgt/NativeSessionManager;

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    :cond_0
    const/4 v7, 0x1

    .line 85
    invoke-interface {p1}, Lorg/aopalliance/intercept/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "start"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 86
    invoke-interface {p1}, Lorg/aopalliance/intercept/MethodInvocation;->getArguments()[Ljava/lang/Object;

    move-result-object v9

    aget-object v2, v9, v11

    check-cast v2, Lorg/apache/shiro/session/mgt/SessionKey;

    .line 87
    .local v2, "key":Lorg/apache/shiro/session/mgt/SessionKey;
    invoke-interface {v2}, Lorg/apache/shiro/session/mgt/SessionKey;->getSessionId()Ljava/io/Serializable;

    move-result-object v6

    .line 92
    .end local v2    # "key":Lorg/apache/shiro/session/mgt/SessionKey;
    :cond_1
    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->sessionId:Ljava/lang/String;

    .line 95
    :cond_2
    if-nez v6, :cond_3

    .line 98
    :try_start_0
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    .line 99
    if-nez v7, :cond_3

    .line 100
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v8

    .line 101
    .local v8, "subject":Lorg/apache/shiro/subject/Subject;
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v5

    .line 102
    .local v5, "session":Lorg/apache/shiro/session/Session;
    if-eqz v5, :cond_3

    .line 103
    invoke-interface {v5}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v6

    .line 104
    invoke-interface {v5}, Lorg/apache/shiro/session/Session;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    .end local v5    # "session":Lorg/apache/shiro/session/Session;
    .end local v8    # "subject":Lorg/apache/shiro/subject/Subject;
    :cond_3
    :goto_0
    if-nez v6, :cond_5

    .line 115
    sget-object v9, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 116
    sget-object v9, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->log:Lorg/slf4j/Logger;

    const-string v10, "No Session found for the currently executing subject via subject.getSession(false).  Attempting to revert back to the \'shiro.session.id\' system property..."

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 119
    :cond_4
    const-string v9, "shiro.session.id"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    if-nez v6, :cond_5

    sget-object v9, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 121
    sget-object v9, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->log:Lorg/slf4j/Logger;

    const-string v10, "No \'shiro.session.id\' system property found.  Heuristics have been exhausted; RemoteInvocation will not contain a sessionId."

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 126
    :cond_5
    new-instance v4, Lorg/springframework/remoting/support/RemoteInvocation;

    invoke-direct {v4, p1}, Lorg/springframework/remoting/support/RemoteInvocation;-><init>(Lorg/aopalliance/intercept/MethodInvocation;)V

    .line 127
    .local v4, "ri":Lorg/springframework/remoting/support/RemoteInvocation;
    if-eqz v6, :cond_6

    .line 128
    sget-object v9, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lorg/springframework/remoting/support/RemoteInvocation;->addAttribute(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 130
    :cond_6
    if-eqz v1, :cond_7

    .line 131
    sget-object v9, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->HOST_KEY:Ljava/lang/String;

    invoke-virtual {v4, v9, v1}, Lorg/springframework/remoting/support/RemoteInvocation;->addAttribute(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 134
    :cond_7
    return-object v4

    .line 108
    .end local v4    # "ri":Lorg/springframework/remoting/support/RemoteInvocation;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->log:Lorg/slf4j/Logger;

    const-string v10, "No security manager set. Trying next to get session id from system property"

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0
.end method
