.class public abstract Lorg/apache/shiro/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static securityManager:Lorg/apache/shiro/mgt/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/UnavailableSecurityManagerException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v1

    .line 116
    .local v1, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    if-nez v1, :cond_0

    .line 117
    sget-object v1, Lorg/apache/shiro/SecurityUtils;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 119
    :cond_0
    if-nez v1, :cond_1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No SecurityManager accessible to the calling code, either bound to the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/apache/shiro/util/ThreadContext;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or as a vm static singleton.  This is an invalid application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "configuration."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/UnavailableSecurityManagerException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/UnavailableSecurityManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getSubject()Lorg/apache/shiro/subject/Subject;
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lorg/apache/shiro/util/ThreadContext;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 55
    .local v0, "subject":Lorg/apache/shiro/subject/Subject;
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Lorg/apache/shiro/subject/Subject$Builder;

    invoke-direct {v1}, Lorg/apache/shiro/subject/Subject$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/shiro/subject/Subject$Builder;->buildSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lorg/apache/shiro/util/ThreadContext;->bind(Lorg/apache/shiro/subject/Subject;)V

    .line 59
    :cond_0
    return-object v0
.end method

.method public static setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 0
    .param p0, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 95
    sput-object p0, Lorg/apache/shiro/SecurityUtils;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 96
    return-void
.end method
