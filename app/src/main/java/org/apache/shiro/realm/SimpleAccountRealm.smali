.class public Lorg/apache/shiro/realm/SimpleAccountRealm;
.super Lorg/apache/shiro/realm/AuthorizingRealm;
.source "SimpleAccountRealm.java"


# instance fields
.field protected final ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final roles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/authz/SimpleRole;",
            ">;"
        }
    .end annotation
.end field

.field protected final users:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/shiro/authc/SimpleAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->users:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->roles:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/SimpleAccountRealm;->setCachingEnabled(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/shiro/realm/SimpleAccountRealm;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/SimpleAccountRealm;->setName(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected static toSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p0, "delimited"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    :cond_0
    const/4 v6, 0x0

    .line 150
    :cond_1
    return-object v6

    .line 141
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v6, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "rolenamesArray":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 144
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "trimmed":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 146
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public accountExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getUser(Ljava/lang/String;)Lorg/apache/shiro/authc/SimpleAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected add(Lorg/apache/shiro/authc/SimpleAccount;)V
    .locals 3
    .param p1, "account"    # Lorg/apache/shiro/authc/SimpleAccount;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getUsername(Lorg/apache/shiro/authc/SimpleAccount;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->users:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected add(Lorg/apache/shiro/authz/SimpleRole;)V
    .locals 2
    .param p1, "role"    # Lorg/apache/shiro/authz/SimpleRole;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->roles:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/shiro/authz/SimpleRole;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public addAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/realm/SimpleAccountRealm;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public varargs addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "roles"    # [Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p3}, Lorg/apache/shiro/util/CollectionUtils;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 88
    .local v4, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/shiro/authc/SimpleAccount;

    invoke-virtual {p0}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/shiro/authc/SimpleAccount;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 89
    .local v0, "account":Lorg/apache/shiro/authc/SimpleAccount;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/SimpleAccountRealm;->add(Lorg/apache/shiro/authc/SimpleAccount;)V

    .line 90
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lorg/apache/shiro/authz/SimpleRole;

    invoke-direct {v0, p1}, Lorg/apache/shiro/authz/SimpleRole;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/SimpleAccountRealm;->add(Lorg/apache/shiro/authz/SimpleRole;)V

    .line 125
    return-void
.end method

.method protected doGetAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 6
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v2, p1

    check-cast v2, Lorg/apache/shiro/authc/UsernamePasswordToken;

    .line 155
    .local v2, "upToken":Lorg/apache/shiro/authc/UsernamePasswordToken;
    invoke-virtual {v2}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getUser(Ljava/lang/String;)Lorg/apache/shiro/authc/SimpleAccount;

    move-result-object v0

    .line 157
    .local v0, "account":Lorg/apache/shiro/authc/SimpleAccount;
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAccount;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v3, Lorg/apache/shiro/authc/LockedAccountException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Account ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is locked."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/shiro/authc/LockedAccountException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    invoke-virtual {v0}, Lorg/apache/shiro/authc/SimpleAccount;->isCredentialsExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The credentials for account ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] are expired"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/authc/ExpiredCredentialsException;

    invoke-direct {v3, v1}, Lorg/apache/shiro/authc/ExpiredCredentialsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected doGetAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 3
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getUsername(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->users:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/authz/AuthorizationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v2, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected getRole(Ljava/lang/String;)Lorg/apache/shiro/authz/SimpleRole;
    .locals 2
    .param p1, "rolename"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->roles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/authz/SimpleRole;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->ROLES_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected getUser(Ljava/lang/String;)Lorg/apache/shiro/authc/SimpleAccount;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->users:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/authc/SimpleAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/shiro/realm/SimpleAccountRealm;->USERS_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected getUsername(Lorg/apache/shiro/authc/SimpleAccount;)Ljava/lang/String;
    .locals 1
    .param p1, "account"    # Lorg/apache/shiro/authc/SimpleAccount;

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/apache/shiro/authc/SimpleAccount;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getUsername(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUsername(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/String;
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getAvailablePrincipal(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public roleExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/SimpleAccountRealm;->getRole(Ljava/lang/String;)Lorg/apache/shiro/authz/SimpleRole;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
