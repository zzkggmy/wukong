.class public Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;
.super Lorg/apache/shiro/authc/AbstractAuthenticator;
.source "ModularRealmAuthenticator.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private authenticationStrategy:Lorg/apache/shiro/authc/pam/AuthenticationStrategy;

.field private realms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/apache/shiro/authc/AbstractAuthenticator;-><init>()V

    .line 95
    new-instance v0, Lorg/apache/shiro/authc/pam/AtLeastOneSuccessfulStrategy;

    invoke-direct {v0}, Lorg/apache/shiro/authc/pam/AtLeastOneSuccessfulStrategy;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->authenticationStrategy:Lorg/apache/shiro/authc/pam/AuthenticationStrategy;

    .line 96
    return-void
.end method


# virtual methods
.method protected assertRealmsConfigured()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->getRealms()Ljava/util/Collection;

    move-result-object v1

    .line 158
    .local v1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const-string v0, "Configuration error:  No realms have been configured!  One or more realms must be present to execute an authentication attempt."

    .line 161
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected doAuthenticate(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 3
    .param p1, "authenticationToken"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->assertRealmsConfigured()V

    .line 265
    invoke-virtual {p0}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->getRealms()Ljava/util/Collection;

    move-result-object v0

    .line 266
    .local v0, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    invoke-virtual {p0, v1, p1}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->doSingleRealmAuthentication(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->doMultiRealmAuthentication(Ljava/util/Collection;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v1

    goto :goto_0
.end method

.method protected doMultiRealmAuthentication(Ljava/util/Collection;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 11
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;",
            "Lorg/apache/shiro/authc/AuthenticationToken;",
            ")",
            "Lorg/apache/shiro/authc/AuthenticationInfo;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->getAuthenticationStrategy()Lorg/apache/shiro/authc/pam/AuthenticationStrategy;

    move-result-object v0

    .line 202
    .local v0, "strategy":Lorg/apache/shiro/authc/pam/AuthenticationStrategy;
    invoke-interface {v0, p1, p2}, Lorg/apache/shiro/authc/pam/AuthenticationStrategy;->beforeAllAttempts(Ljava/util/Collection;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v4

    .line 204
    .local v4, "aggregate":Lorg/apache/shiro/authc/AuthenticationInfo;
    sget-object v2, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    sget-object v2, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v9, "Iterating through {} realms for PAM authentication"

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    .line 210
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v0, v1, p2, v4}, Lorg/apache/shiro/authc/pam/AuthenticationStrategy;->beforeAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v4

    .line 212
    invoke-interface {v1, p2}, Lorg/apache/shiro/realm/Realm;->supports(Lorg/apache/shiro/authc/AuthenticationToken;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    sget-object v2, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v9, "Attempting to authenticate token [{}] using realm [{}]"

    invoke-interface {v2, v9, p2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    const/4 v5, 0x0

    .line 219
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_0
    invoke-interface {v1, p2}, Lorg/apache/shiro/realm/Realm;->getAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_1
    move-object v2, p2

    .line 228
    invoke-interface/range {v0 .. v5}, Lorg/apache/shiro/authc/pam/AuthenticationStrategy;->afterAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;Ljava/lang/Throwable;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v4

    .line 230
    goto :goto_0

    .line 220
    :catch_0
    move-exception v8

    .line 221
    .local v8, "throwable":Ljava/lang/Throwable;
    move-object v5, v8

    .line 222
    sget-object v2, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Realm ["

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "] threw an exception during a multi-realm authentication attempt:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 231
    .end local v3    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "throwable":Ljava/lang/Throwable;
    :cond_2
    sget-object v2, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v9, "Realm [{}] does not support token {}.  Skipping realm."

    invoke-interface {v2, v9, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    :cond_3
    invoke-interface {v0, p2, v4}, Lorg/apache/shiro/authc/pam/AuthenticationStrategy;->afterAllAttempts(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v4

    .line 237
    return-object v4
.end method

.method protected doSingleRealmAuthentication(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 4
    .param p1, "realm"    # Lorg/apache/shiro/realm/Realm;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 174
    invoke-interface {p1, p2}, Lorg/apache/shiro/realm/Realm;->supports(Lorg/apache/shiro/authc/AuthenticationToken;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Realm ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not support authentication token ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "].  Please ensure that the appropriate Realm implementation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "configured correctly or that the realm accepts AuthenticationTokens of this type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/authc/pam/UnsupportedTokenException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authc/pam/UnsupportedTokenException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/shiro/realm/Realm;->getAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v0

    .line 181
    .local v0, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    if-nez v0, :cond_1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Realm ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] was unable to find account data for the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "submitted AuthenticationToken ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/authc/UnknownAccountException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/authc/UnknownAccountException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getAuthenticationStrategy()Lorg/apache/shiro/authc/pam/AuthenticationStrategy;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->authenticationStrategy:Lorg/apache/shiro/authc/pam/AuthenticationStrategy;

    return-object v0
.end method

.method protected getRealms()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->realms:Ljava/util/Collection;

    return-object v0
.end method

.method public onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 4
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 285
    invoke-super {p0, p1}, Lorg/apache/shiro/authc/AbstractAuthenticator;->onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 286
    invoke-virtual {p0}, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->getRealms()Ljava/util/Collection;

    move-result-object v2

    .line 287
    .local v2, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/realm/Realm;

    .line 289
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    instance-of v3, v1, Lorg/apache/shiro/authc/LogoutAware;

    if-eqz v3, :cond_0

    .line 290
    check-cast v1, Lorg/apache/shiro/authc/LogoutAware;

    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v1, p1}, Lorg/apache/shiro/authc/LogoutAware;->onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V

    goto :goto_0

    .line 294
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setAuthenticationStrategy(Lorg/apache/shiro/authc/pam/AuthenticationStrategy;)V
    .locals 0
    .param p1, "authenticationStrategy"    # Lorg/apache/shiro/authc/pam/AuthenticationStrategy;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->authenticationStrategy:Lorg/apache/shiro/authc/pam/AuthenticationStrategy;

    .line 144
    return-void
.end method

.method public setRealms(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    iput-object p1, p0, Lorg/apache/shiro/authc/pam/ModularRealmAuthenticator;->realms:Ljava/util/Collection;

    .line 109
    return-void
.end method
