.class public abstract Lorg/apache/shiro/authc/AbstractAuthenticator;
.super Ljava/lang/Object;
.source "AbstractAuthenticator.java"

# interfaces
.implements Lorg/apache/shiro/authc/Authenticator;
.implements Lorg/apache/shiro/authc/LogoutAware;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authc/AuthenticationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/shiro/authc/AbstractAuthenticator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/authc/AbstractAuthenticator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authc/AbstractAuthenticator;->listeners:Ljava/util/Collection;

    .line 71
    return-void
.end method


# virtual methods
.method public final authenticate(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 7
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Method argumet (authentication token) cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_0
    sget-object v5, Lorg/apache/shiro/authc/AbstractAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v6, "Authentication attempt received for token [{}]"

    invoke-interface {v5, v6, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/AbstractAuthenticator;->doAuthenticate(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v1

    .line 199
    .local v1, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    if-nez v1, :cond_4

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No account information found for authentication token ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] by this "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Authenticator instance.  Please check that it is configured correctly."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/shiro/authc/AuthenticationException;

    invoke-direct {v5, v2}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 205
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 206
    .local v0, "ae":Lorg/apache/shiro/authc/AuthenticationException;
    instance-of v5, v3, Lorg/apache/shiro/authc/AuthenticationException;

    if-eqz v5, :cond_1

    move-object v0, v3

    .line 207
    check-cast v0, Lorg/apache/shiro/authc/AuthenticationException;

    .line 209
    :cond_1
    if-nez v0, :cond_2

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication failed for token submission ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].  Possible unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error? (Typical or expected login exceptions should extend from AuthenticationException)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v0, Lorg/apache/shiro/authc/AuthenticationException;

    .end local v0    # "ae":Lorg/apache/shiro/authc/AuthenticationException;
    invoke-direct {v0, v2, v3}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v0    # "ae":Lorg/apache/shiro/authc/AuthenticationException;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/authc/AbstractAuthenticator;->notifyFailure(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :cond_3
    :goto_0
    throw v0

    .line 218
    :catch_1
    move-exception v4

    .line 219
    .local v4, "t2":Ljava/lang/Throwable;
    sget-object v5, Lorg/apache/shiro/authc/AbstractAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    const-string v2, "Unable to send notification for failed authentication attempt - listener error?.  Please check your AuthenticationListener implementation(s).  Logging sending exception and propagating original AuthenticationException instead..."

    .line 223
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v5, Lorg/apache/shiro/authc/AbstractAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v5, v2, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    .end local v0    # "ae":Lorg/apache/shiro/authc/AuthenticationException;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "t2":Ljava/lang/Throwable;
    .restart local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :cond_4
    sget-object v5, Lorg/apache/shiro/authc/AbstractAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v6, "Authentication successful for token [{}].  Returned account [{}]"

    invoke-interface {v5, v6, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0, p1, v1}, Lorg/apache/shiro/authc/AbstractAuthenticator;->notifySuccess(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V

    .line 235
    return-object v1
.end method

.method protected abstract doAuthenticate(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation
.end method

.method public getAuthenticationListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authc/AuthenticationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/shiro/authc/AbstractAuthenticator;->listeners:Ljava/util/Collection;

    return-object v0
.end method

.method protected notifyFailure(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;)V
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "ae"    # Lorg/apache/shiro/authc/AuthenticationException;

    .prologue
    .line 137
    iget-object v2, p0, Lorg/apache/shiro/authc/AbstractAuthenticator;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authc/AuthenticationListener;

    .line 138
    .local v1, "listener":Lorg/apache/shiro/authc/AuthenticationListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/shiro/authc/AuthenticationListener;->onFailure(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationException;)V

    goto :goto_0

    .line 140
    .end local v1    # "listener":Lorg/apache/shiro/authc/AuthenticationListener;
    :cond_0
    return-void
.end method

.method protected notifyLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 152
    iget-object v2, p0, Lorg/apache/shiro/authc/AbstractAuthenticator;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authc/AuthenticationListener;

    .line 153
    .local v1, "listener":Lorg/apache/shiro/authc/AuthenticationListener;
    invoke-interface {v1, p1}, Lorg/apache/shiro/authc/AuthenticationListener;->onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V

    goto :goto_0

    .line 155
    .end local v1    # "listener":Lorg/apache/shiro/authc/AuthenticationListener;
    :cond_0
    return-void
.end method

.method protected notifySuccess(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 120
    iget-object v2, p0, Lorg/apache/shiro/authc/AbstractAuthenticator;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authc/AuthenticationListener;

    .line 121
    .local v1, "listener":Lorg/apache/shiro/authc/AuthenticationListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/shiro/authc/AuthenticationListener;->onSuccess(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)V

    goto :goto_0

    .line 123
    .end local v1    # "listener":Lorg/apache/shiro/authc/AuthenticationListener;
    :cond_0
    return-void
.end method

.method public onLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V
    .locals 0
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/AbstractAuthenticator;->notifyLogout(Lorg/apache/shiro/subject/PrincipalCollection;)V

    .line 166
    return-void
.end method

.method public setAuthenticationListeners(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authc/AuthenticationListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/authc/AuthenticationListener;>;"
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/authc/AbstractAuthenticator;->listeners:Ljava/util/Collection;

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/authc/AbstractAuthenticator;->listeners:Ljava/util/Collection;

    goto :goto_0
.end method
