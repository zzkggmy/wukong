.class public Lorg/apache/shiro/realm/text/TextConfigurationRealm;
.super Lorg/apache/shiro/realm/SimpleAccountRealm;
.source "TextConfigurationRealm.java"


# instance fields
.field private volatile roleDefinitions:Ljava/lang/String;

.field private volatile userDefinitions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/shiro/realm/SimpleAccountRealm;-><init>()V

    .line 55
    return-void
.end method

.method protected static toLines(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 208
    .local v1, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "scanner":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_0
    return-object v1
.end method

.method protected static toMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "keyValuePairs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    :cond_0
    const/4 v3, 0x0

    .line 228
    :cond_1
    return-object v3

    .line 220
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v3, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "pairString":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->splitKeyValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "pair":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 224
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getRoleDefinitions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->roleDefinitions:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefinitions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->userDefinitions:Ljava/lang/String;

    return-object v0
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lorg/apache/shiro/realm/SimpleAccountRealm;->onInit()V

    .line 66
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->processDefinitions()V

    .line 67
    return-void
.end method

.method protected processDefinitions()V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->processRoleDefinitions()V

    .line 126
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->processUserDefinitions()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "Unable to parse user and/or role definitions."

    .line 129
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v1, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected processRoleDefinitions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->getRoleDefinitions()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "roleDefinitions":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {v0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->toLines(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->toMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 139
    .local v1, "roleDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->processRoleDefinitions(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected processRoleDefinitions(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "roleDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "rolename":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->getRole(Ljava/lang/String;)Lorg/apache/shiro/authz/SimpleRole;

    move-result-object v2

    .line 150
    .local v2, "role":Lorg/apache/shiro/authz/SimpleRole;
    if-nez v2, :cond_2

    .line 151
    new-instance v2, Lorg/apache/shiro/authz/SimpleRole;

    .end local v2    # "role":Lorg/apache/shiro/authz/SimpleRole;
    invoke-direct {v2, v3}, Lorg/apache/shiro/authz/SimpleRole;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v2    # "role":Lorg/apache/shiro/authz/SimpleRole;
    invoke-virtual {p0, v2}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->add(Lorg/apache/shiro/authz/SimpleRole;)V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->getPermissionResolver()Lorg/apache/shiro/authz/permission/PermissionResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/shiro/util/PermissionUtils;->resolveDelimitedPermissions(Ljava/lang/String;Lorg/apache/shiro/authz/permission/PermissionResolver;)Ljava/util/Set;

    move-result-object v1

    .line 156
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/shiro/authz/Permission;>;"
    invoke-virtual {v2, v1}, Lorg/apache/shiro/authz/SimpleRole;->setPermissions(Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected processUserDefinitions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->getUserDefinitions()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "userDefinitions":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {v0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->toLines(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->toMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 168
    .local v1, "userDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->processUserDefinitions(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected processUserDefinitions(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "userDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 204
    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 177
    .local v7, "username":Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 179
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "passwordAndRolesArray":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v3, v4, v9

    .line 183
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->getUser(Ljava/lang/String;)Lorg/apache/shiro/authc/SimpleAccount;

    move-result-object v0

    .line 184
    .local v0, "account":Lorg/apache/shiro/authc/SimpleAccount;
    if-nez v0, :cond_3

    .line 185
    new-instance v0, Lorg/apache/shiro/authc/SimpleAccount;

    .end local v0    # "account":Lorg/apache/shiro/authc/SimpleAccount;
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v7, v3, v9}, Lorg/apache/shiro/authc/SimpleAccount;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .restart local v0    # "account":Lorg/apache/shiro/authc/SimpleAccount;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->add(Lorg/apache/shiro/authc/SimpleAccount;)V

    .line 188
    :cond_3
    invoke-virtual {v0, v3}, Lorg/apache/shiro/authc/SimpleAccount;->setCredentials(Ljava/lang/Object;)V

    .line 190
    array-length v9, v4

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    .line 191
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v9, v4

    if-ge v1, v9, :cond_2

    .line 192
    aget-object v6, v4, v1

    .line 193
    .local v6, "rolename":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/apache/shiro/authc/SimpleAccount;->addRole(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v6}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->getRole(Ljava/lang/String;)Lorg/apache/shiro/authz/SimpleRole;

    move-result-object v5

    .line 196
    .local v5, "role":Lorg/apache/shiro/authz/SimpleRole;
    if-eqz v5, :cond_4

    .line 197
    invoke-virtual {v5}, Lorg/apache/shiro/authz/SimpleRole;->getPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/shiro/authc/SimpleAccount;->addObjectPermissions(Ljava/util/Collection;)V

    .line 191
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    .end local v1    # "i":I
    .end local v5    # "role":Lorg/apache/shiro/authz/SimpleRole;
    .end local v6    # "rolename":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/apache/shiro/authc/SimpleAccount;->setRoles(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public setRoleDefinitions(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleDefinitions"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->roleDefinitions:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setUserDefinitions(Ljava/lang/String;)V
    .locals 0
    .param p1, "userDefinitions"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->userDefinitions:Ljava/lang/String;

    .line 91
    return-void
.end method
