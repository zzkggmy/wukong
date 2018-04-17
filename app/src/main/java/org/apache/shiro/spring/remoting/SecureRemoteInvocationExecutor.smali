.class public Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;
.super Lorg/springframework/remoting/support/DefaultRemoteInvocationExecutor;
.source "SecureRemoteInvocationExecutor.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private securityManager:Lorg/apache/shiro/mgt/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/springframework/remoting/support/DefaultRemoteInvocationExecutor;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;Lorg/springframework/remoting/support/RemoteInvocation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;
    .param p1, "x1"    # Lorg/springframework/remoting/support/RemoteInvocation;
    .param p2, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lorg/springframework/remoting/support/DefaultRemoteInvocationExecutor;->invoke(Lorg/springframework/remoting/support/RemoteInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Lorg/springframework/remoting/support/RemoteInvocation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "invocation"    # Lorg/springframework/remoting/support/RemoteInvocation;
    .param p2, "targetObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v8, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    if-eqz v8, :cond_2

    iget-object v4, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 85
    .local v4, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    :goto_0
    new-instance v0, Lorg/apache/shiro/subject/Subject$Builder;

    invoke-direct {v0, v4}, Lorg/apache/shiro/subject/Subject$Builder;-><init>(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 87
    .local v0, "builder":Lorg/apache/shiro/subject/Subject$Builder;
    sget-object v8, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->HOST_KEY:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lorg/springframework/remoting/support/RemoteInvocation;->getAttribute(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    .local v3, "host":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v0, v3}, Lorg/apache/shiro/subject/Subject$Builder;->host(Ljava/lang/String;)Lorg/apache/shiro/subject/Subject$Builder;

    .line 92
    :cond_0
    sget-object v8, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lorg/springframework/remoting/support/RemoteInvocation;->getAttribute(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    .line 93
    .local v5, "sessionId":Ljava/io/Serializable;
    if-eqz v5, :cond_3

    .line 94
    invoke-virtual {v0, v5}, Lorg/apache/shiro/subject/Subject$Builder;->sessionId(Ljava/io/Serializable;)Lorg/apache/shiro/subject/Subject$Builder;

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/apache/shiro/subject/Subject$Builder;->buildSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v6

    .line 104
    .local v6, "subject":Lorg/apache/shiro/subject/Subject;
    new-instance v8, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;

    invoke-direct {v8, p0, p1, p2}, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor$1;-><init>(Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;Lorg/springframework/remoting/support/RemoteInvocation;Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Lorg/apache/shiro/subject/Subject;->execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 82
    .end local v0    # "builder":Lorg/apache/shiro/subject/Subject$Builder;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    .end local v5    # "sessionId":Ljava/io/Serializable;
    .end local v6    # "subject":Lorg/apache/shiro/subject/Subject;
    :cond_2
    invoke-static {}, Lorg/apache/shiro/SecurityUtils;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v4

    goto :goto_0

    .line 96
    .restart local v0    # "builder":Lorg/apache/shiro/subject/Subject$Builder;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    .restart local v5    # "sessionId":Ljava/io/Serializable;
    :cond_3
    sget-object v8, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 97
    sget-object v8, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteInvocation did not contain a Shiro Session id attribute under key ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationFactory;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "].  A Subject based "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "on an existing Session will not be available during the method invocatin."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/shiro/subject/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 109
    .end local v0    # "builder":Lorg/apache/shiro/subject/Subject$Builder;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    .end local v5    # "sessionId":Ljava/io/Serializable;
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Lorg/apache/shiro/subject/ExecutionException;
    invoke-virtual {v2}, Lorg/apache/shiro/subject/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 111
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v8, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v8, :cond_4

    .line 112
    check-cast v1, Ljava/lang/NoSuchMethodException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 113
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v8, v1, Ljava/lang/IllegalAccessException;

    if-eqz v8, :cond_5

    .line 114
    check-cast v1, Ljava/lang/IllegalAccessException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 115
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_5
    instance-of v8, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v8, :cond_6

    .line 116
    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    throw v1

    .line 118
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_6
    new-instance v8, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v8, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 120
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "e":Lorg/apache/shiro/subject/ExecutionException;
    :catch_1
    move-exception v7

    .line 121
    .local v7, "t":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v8, v7}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 0
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/shiro/spring/remoting/SecureRemoteInvocationExecutor;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 72
    return-void
.end method
