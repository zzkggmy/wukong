.class public Lorg/apache/shiro/authc/pam/FirstSuccessfulStrategy;
.super Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;
.source "FirstSuccessfulStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeAllAttempts(Ljava/util/Collection;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 1
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/shiro/realm/Realm;",
            ">;",
            "Lorg/apache/shiro/authc/AuthenticationToken;",
            ")",
            "Lorg/apache/shiro/authc/AuthenticationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/shiro/realm/Realm;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected merge(Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 1
    .param p1, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p2, "aggregate"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 56
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/shiro/authc/AuthenticationInfo;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Lorg/apache/shiro/subject/PrincipalCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    .end local p1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    .end local p2    # "aggregate":Lorg/apache/shiro/authc/AuthenticationInfo;
    :goto_0
    return-object p2

    .restart local p1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    .restart local p2    # "aggregate":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_0
    if-eqz p1, :cond_1

    .end local p1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :goto_1
    move-object p2, p1

    goto :goto_0

    .restart local p1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_1
    move-object p1, p2

    goto :goto_1
.end method
