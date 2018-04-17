.class public Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;
.super Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;
.source "ActiveDirectoryRealm.java"


# static fields
.field private static final ROLE_NAMES_DELIMETER:Ljava/lang/String; = ","

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private groupRolesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;-><init>()V

    return-void
.end method

.method private getRoleNamesForUser(Ljava/lang/String;Ljavax/naming/ldap/LdapContext;)Ljava/util/Set;
    .locals 16
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "ldapContext"    # Ljavax/naming/ldap/LdapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/naming/ldap/LdapContext;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 162
    .local v6, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Ljavax/naming/directory/SearchControls;

    invoke-direct {v9}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 163
    .local v9, "searchCtls":Ljavax/naming/directory/SearchControls;
    const/4 v13, 0x2

    invoke-virtual {v9, v13}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 165
    move-object/from16 v12, p1

    .line 166
    .local v12, "userPrincipalName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->principalSuffix:Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 167
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->principalSuffix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 171
    :cond_0
    const-string v10, "(&(objectClass=*)(userPrincipalName={0}))"

    .line 172
    .local v10, "searchFilter":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v8, v13

    .line 174
    .local v8, "searchArguments":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->searchBase:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v10, v8, v9}, Ljavax/naming/ldap/LdapContext;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v2

    .line 176
    .local v2, "answer":Ljavax/naming/NamingEnumeration;
    :cond_1
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 177
    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/naming/directory/SearchResult;

    .line 179
    .local v11, "sr":Ljavax/naming/directory/SearchResult;
    sget-object v13, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v13}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 180
    sget-object v13, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->log:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Retrieving group names for user ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljavax/naming/directory/SearchResult;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 183
    :cond_2
    invoke-virtual {v11}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v4

    .line 185
    .local v4, "attrs":Ljavax/naming/directory/Attributes;
    if-eqz v4, :cond_1

    .line 186
    invoke-interface {v4}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v1

    .line 187
    .local v1, "ae":Ljavax/naming/NamingEnumeration;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 188
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/naming/directory/Attribute;

    .line 190
    .local v3, "attr":Ljavax/naming/directory/Attribute;
    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v13

    const-string v14, "memberOf"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 192
    invoke-static {v3}, Lorg/apache/shiro/realm/ldap/LdapUtils;->getAllAttributeValues(Ljavax/naming/directory/Attribute;)Ljava/util/Collection;

    move-result-object v5

    .line 194
    .local v5, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v13, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v13}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 195
    sget-object v13, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->log:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Groups found for user ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 198
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->getRoleNamesForGroups(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    .line 199
    .local v7, "rolesForGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 204
    .end local v1    # "ae":Ljavax/naming/NamingEnumeration;
    .end local v3    # "attr":Ljavax/naming/directory/Attribute;
    .end local v4    # "attrs":Ljavax/naming/directory/Attributes;
    .end local v5    # "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "rolesForGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v11    # "sr":Ljavax/naming/directory/SearchResult;
    :cond_5
    return-object v6
.end method


# virtual methods
.method protected buildAuthenticationInfo(Ljava/lang/String;[C)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    .line 117
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {p0}, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildAuthorizationInfo(Ljava/util/Set;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/shiro/authz/AuthorizationInfo;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v0, p1}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method protected getRoleNamesForGroups(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 217
    .local v6, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->groupRolesMap:Ljava/util/Map;

    if-eqz v8, :cond_2

    .line 218
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, "groupName":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->groupRolesMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 220
    .local v7, "strRoleNames":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 221
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 223
    .local v5, "roleName":Ljava/lang/String;
    sget-object v8, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 224
    sget-object v8, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User is member of group ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] so adding role ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 227
    :cond_1
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "groupName":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "roleName":Ljava/lang/String;
    .end local v7    # "strRoleNames":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method protected queryForAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 4
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "ldapContextFactory"    # Lorg/apache/shiro/realm/ldap/LdapContextFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v1, p1

    check-cast v1, Lorg/apache/shiro/authc/UsernamePasswordToken;

    .line 106
    .local v1, "upToken":Lorg/apache/shiro/authc/UsernamePasswordToken;
    const/4 v0, 0x0

    .line 108
    .local v0, "ctx":Ljavax/naming/ldap/LdapContext;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getPassword()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/apache/shiro/realm/ldap/LdapContextFactory;->getLdapContext(Ljava/lang/String;Ljava/lang/String;)Ljavax/naming/ldap/LdapContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    invoke-static {v0}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeContext(Ljavax/naming/ldap/LdapContext;)V

    .line 113
    invoke-virtual {v1}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getPassword()[C

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->buildAuthenticationInfo(Ljava/lang/String;[C)Lorg/apache/shiro/authc/AuthenticationInfo;

    move-result-object v2

    return-object v2

    .line 110
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeContext(Ljavax/naming/ldap/LdapContext;)V

    throw v2
.end method

.method protected queryForAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 4
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "ldapContextFactory"    # Lorg/apache/shiro/realm/ldap/LdapContextFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->getAvailablePrincipal(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "username":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/shiro/realm/ldap/LdapContextFactory;->getSystemLdapContext()Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    .line 146
    .local v0, "ldapContext":Ljavax/naming/ldap/LdapContext;
    :try_start_0
    invoke-direct {p0, v2, v0}, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->getRoleNamesForUser(Ljava/lang/String;Ljavax/naming/ldap/LdapContext;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 148
    .local v1, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeContext(Ljavax/naming/ldap/LdapContext;)V

    .line 151
    invoke-virtual {p0, v1}, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->buildAuthorizationInfo(Ljava/util/Set;)Lorg/apache/shiro/authz/AuthorizationInfo;

    move-result-object v3

    return-object v3

    .line 148
    .end local v1    # "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeContext(Ljavax/naming/ldap/LdapContext;)V

    throw v3
.end method

.method public setGroupRolesMap(Ljava/util/Map;)V
    .locals 0
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
    .line 81
    .local p1, "groupRolesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/realm/activedirectory/ActiveDirectoryRealm;->groupRolesMap:Ljava/util/Map;

    .line 82
    return-void
.end method
