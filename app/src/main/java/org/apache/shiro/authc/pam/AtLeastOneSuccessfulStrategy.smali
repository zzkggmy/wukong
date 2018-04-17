.class public Lorg/apache/shiro/authc/pam/AtLeastOneSuccessfulStrategy;
.super Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;
.source "AtLeastOneSuccessfulStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public afterAllAttempts(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "aggregate"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Lorg/apache/shiro/authc/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication token of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "could not be authenticated by any configured realms.  Please ensure that at least one realm can "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "authenticate these tokens."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    return-object p2
.end method
