.class public abstract Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;
.super Lorg/apache/shiro/mgt/RealmSecurityManager;
.source "AuthenticatingSecurityManager.java"


# instance fields
.field private authenticator:Lorg/apache/shiro/authc/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;

    invoke-direct {v0}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->authenticator:Lorg/apache/shiro/authc/Authenticator;

    .line 59
    return-void
.end method


# virtual methods
.method protected afterRealmsSet()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->afterRealmsSet()V

    .line 97
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->authenticator:Lorg/apache/shiro/authc/Authenticator;

    instance-of v0, v0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->authenticator:Lorg/apache/shiro/authc/Authenticator;

    check-cast v0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;

    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->getRealms()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->setRealms(Ljava/util/Collection;)V

    .line 100
    :cond_0
    return-void
.end method

.method public authenticate(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->authenticator:Lorg/apache/shiro/authc/Authenticator;

    invoke-interface {v0, p1}, Lorg/apache/shiro/authc/Authenticator;->authenticate(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->getAuthenticator()Lorg/apache/shiro/authc/Authenticator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->authenticator:Lorg/apache/shiro/authc/Authenticator;

    .line 112
    invoke-super {p0}, Lorg/apache/shiro/mgt/RealmSecurityManager;->destroy()V

    .line 113
    return-void
.end method

.method public getAuthenticator()Lorg/apache/shiro/authc/Authenticator;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->authenticator:Lorg/apache/shiro/authc/Authenticator;

    return-object v0
.end method

.method public setAuthenticator(Lorg/apache/shiro/authc/Authenticator;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/apache/shiro/authc/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const-string v0, "Authenticator argument cannot be null."

    .line 86
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/mgt/AuthenticatingSecurityManager;->authenticator:Lorg/apache/shiro/authc/Authenticator;

    .line 89
    return-void
.end method
