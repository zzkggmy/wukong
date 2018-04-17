.class public abstract Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;
.super Ljava/lang/Object;
.source "AbstractAuthenticationStrategy.java"

# interfaces
.implements Lorg/apache/shiro/authc/pam/AuthenticationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterAllAttempts(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 0
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "aggregate"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 94
    return-object p2
.end method

.method public afterAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;Ljava/lang/Throwable;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 1
    .param p1, "realm"    # Lorg/apache/shiro/realm/Realm;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p3, "singleRealmInfo"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p4, "aggregateInfo"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p3, :cond_0

    .line 57
    move-object v0, p4

    .line 66
    .local v0, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :goto_0
    return-object v0

    .line 59
    .end local v0    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_0
    if-nez p4, :cond_1

    .line 60
    move-object v0, p3

    .restart local v0    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    goto :goto_0

    .line 62
    .end local v0    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_1
    invoke-virtual {p0, p3, p4}, Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;->merge(Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v0

    .restart local v0    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    goto :goto_0
.end method

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
    .line 40
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/shiro/realm/Realm;>;"
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-direct {v0}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>()V

    return-object v0
.end method

.method public beforeAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 0
    .param p1, "realm"    # Lorg/apache/shiro/realm/Realm;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p3, "aggregate"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 47
    return-object p3
.end method

.method protected merge(Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 2
    .param p1, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p2, "aggregate"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 81
    instance-of v0, p2, Lorg/apache/shiro/authc/MergableAuthenticationInfo;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 82
    check-cast v0, Lorg/apache/shiro/authc/MergableAuthenticationInfo;

    invoke-interface {v0, p1}, Lorg/apache/shiro/authc/MergableAuthenticationInfo;->merge(Lorg/apache/shiro/authc/AuthenticationInfo;)V

    .line 83
    return-object p2

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to merge authentication info from multiple realms, but aggregate AuthenticationInfo is not of type MergableAuthenticationInfo."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
