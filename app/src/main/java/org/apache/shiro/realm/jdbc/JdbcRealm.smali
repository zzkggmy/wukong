.class public Lorg/apache/shiro/realm/jdbc/JdbcRealm;
.super Lorg/apache/shiro/realm/AuthorizingRealm;
.source "JdbcRealm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/realm/jdbc/JdbcRealm$1;,
        Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;
    }
.end annotation


# static fields
.field protected static final DEFAULT_AUTHENTICATION_QUERY:Ljava/lang/String; = "select password from users where username = ?"

.field protected static final DEFAULT_PERMISSIONS_QUERY:Ljava/lang/String; = "select permission from roles_permissions where role_name = ?"

.field protected static final DEFAULT_SALTED_AUTHENTICATION_QUERY:Ljava/lang/String; = "select password, password_salt from users where username = ?"

.field protected static final DEFAULT_USER_ROLES_QUERY:Ljava/lang/String; = "select role_name from user_roles where username = ?"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected authenticationQuery:Ljava/lang/String;

.field protected dataSource:Ljavax/sql/DataSource;

.field protected permissionsLookupEnabled:Z

.field protected permissionsQuery:Ljava/lang/String;

.field protected saltStyle:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

.field protected userRolesQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;-><init>()V

    .line 101
    const-string v0, "select password from users where username = ?"

    iput-object v0, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->authenticationQuery:Ljava/lang/String;

    .line 103
    const-string v0, "select role_name from user_roles where username = ?"

    iput-object v0, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->userRolesQuery:Ljava/lang/String;

    .line 105
    const-string v0, "select permission from roles_permissions where role_name = ?"

    iput-object v0, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->permissionsQuery:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->permissionsLookupEnabled:Z

    .line 109
    sget-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->NO_SALT:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    iput-object v0, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->saltStyle:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    return-void
.end method

.method private getPasswordForUser(Ljava/sql/Connection;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 265
    const/4 v3, 0x0

    .line 266
    .local v3, "returningSeparatedSalt":Z
    sget-object v5, Lorg/apache/shiro/realm/jdbc/JdbcRealm$1;->$SwitchMap$org$apache$shiro$realm$jdbc$JdbcRealm$SaltStyle:[I

    iget-object v6, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->saltStyle:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    invoke-virtual {v6}, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 273
    :pswitch_0
    new-array v2, v8, [Ljava/lang/String;

    .line 274
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 277
    :goto_0
    const/4 v1, 0x0

    .line 278
    .local v1, "ps":Ljava/sql/PreparedStatement;
    const/4 v4, 0x0

    .line 280
    .local v4, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v5, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->authenticationQuery:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 281
    const/4 v5, 0x1

    invoke-interface {v1, v5, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 284
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "foundResult":Z
    :goto_1
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    if-eqz v0, :cond_0

    .line 292
    new-instance v5, Lorg/apache/shiro/authc/AuthenticationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one user row found for user ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]. Usernames must be unique."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v0    # "foundResult":Z
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lorg/apache/shiro/util/JdbcUtils;->closeResultSet(Ljava/sql/ResultSet;)V

    .line 304
    invoke-static {v1}, Lorg/apache/shiro/util/JdbcUtils;->closeStatement(Ljava/sql/Statement;)V

    throw v5

    .line 270
    .end local v1    # "ps":Ljava/sql/PreparedStatement;
    .end local v2    # "result":[Ljava/lang/String;
    .end local v4    # "rs":Ljava/sql/ResultSet;
    :pswitch_1
    new-array v2, v7, [Ljava/lang/String;

    .line 271
    .restart local v2    # "result":[Ljava/lang/String;
    goto :goto_0

    .line 295
    .restart local v0    # "foundResult":Z
    .restart local v1    # "ps":Ljava/sql/PreparedStatement;
    .restart local v4    # "rs":Ljava/sql/ResultSet;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 296
    if-eqz v3, :cond_1

    .line 297
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 303
    :cond_2
    invoke-static {v4}, Lorg/apache/shiro/util/JdbcUtils;->closeResultSet(Ljava/sql/ResultSet;)V

    .line 304
    invoke-static {v1}, Lorg/apache/shiro/util/JdbcUtils;->closeStatement(Ljava/sql/Statement;)V

    .line 307
    return-object v2

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected doGetAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 13
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v8, p1

    check-cast v8, Lorg/apache/shiro/authc/UsernamePasswordToken;

    .line 205
    .local v8, "upToken":Lorg/apache/shiro/authc/UsernamePasswordToken;
    invoke-virtual {v8}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getUsername()Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "username":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 209
    new-instance v10, Lorg/apache/shiro/authc/AccountException;

    const-string v11, "Null usernames are not allowed by this realm."

    invoke-direct {v10, v11}, Lorg/apache/shiro/authc/AccountException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 213
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 215
    .local v2, "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    :try_start_0
    iget-object v10, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v10}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 217
    const/4 v5, 0x0

    .line 218
    .local v5, "password":Ljava/lang/String;
    const/4 v7, 0x0

    .line 219
    .local v7, "salt":Ljava/lang/String;
    sget-object v10, Lorg/apache/shiro/realm/jdbc/JdbcRealm$1;->$SwitchMap$org$apache$shiro$realm$jdbc$JdbcRealm$SaltStyle:[I

    iget-object v11, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->saltStyle:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    invoke-virtual {v11}, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 237
    :goto_0
    if-nez v5, :cond_2

    .line 238
    new-instance v10, Lorg/apache/shiro/authc/UnknownAccountException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No account found for user ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/shiro/authc/UnknownAccountException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v5    # "password":Ljava/lang/String;
    .end local v7    # "salt":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/sql/SQLException;
    :goto_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was a SQL error while authenticating user ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "message":Ljava/lang/String;
    sget-object v10, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 250
    sget-object v10, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v10, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    :cond_1
    new-instance v10, Lorg/apache/shiro/authc/AuthenticationException;

    invoke-direct {v10, v4, v1}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .end local v1    # "e":Ljava/sql/SQLException;
    .end local v4    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_2
    invoke-static {v0}, Lorg/apache/shiro/util/JdbcUtils;->closeConnection(Ljava/sql/Connection;)V

    throw v10

    .line 221
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v7    # "salt":Ljava/lang/String;
    :pswitch_0
    :try_start_2
    invoke-direct {p0, v0, v9}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getPasswordForUser(Ljava/sql/Connection;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v5, v10, v11

    .line 222
    goto :goto_0

    .line 225
    :pswitch_1
    new-instance v10, Lorg/apache/shiro/config/ConfigurationException;

    const-string v11, "Not implemented yet"

    invoke-direct {v10, v11}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 228
    :pswitch_2
    invoke-direct {p0, v0, v9}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getPasswordForUser(Ljava/sql/Connection;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "queryResults":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v5, v6, v10

    .line 230
    const/4 v10, 0x1

    aget-object v7, v6, v10

    .line 231
    goto :goto_0

    .line 233
    .end local v6    # "queryResults":[Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0, v0, v9}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getPasswordForUser(Ljava/sql/Connection;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v5, v10, v11

    .line 234
    invoke-virtual {p0, v9}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getSaltForUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 241
    :cond_2
    new-instance v3, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {p0}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v9, v10, v11}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v2    # "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    .local v3, "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    if-eqz v7, :cond_3

    .line 244
    :try_start_3
    invoke-static {v7}, Lorg/apache/shiro/util/ByteSource$Util;->bytes(Ljava/lang/String;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;->setCredentialsSalt(Lorg/apache/shiro/util/ByteSource;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    :cond_3
    invoke-static {v0}, Lorg/apache/shiro/util/JdbcUtils;->closeConnection(Ljava/sql/Connection;)V

    .line 259
    return-object v3

    .line 256
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    .restart local v2    # "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    goto :goto_2

    .line 247
    .end local v2    # "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    .restart local v3    # "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    .restart local v2    # "info":Lorg/apache/shiro/authc/SimpleAuthenticationInfo;
    goto :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected doGetAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 9
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v7, Lorg/apache/shiro/authz/AuthorizationException;

    const-string v8, "PrincipalCollection method argument cannot be null."

    invoke-direct {v7, v8}, Lorg/apache/shiro/authz/AuthorizationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getAvailablePrincipal(Lorg/apache/shiro/subject/PrincipalCollection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 326
    .local v6, "username":Ljava/lang/String;
    const/4 v0, 0x0

    .line 327
    .local v0, "conn":Ljava/sql/Connection;
    const/4 v5, 0x0

    .line 328
    .local v5, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 330
    .local v4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v7}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0, v6}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getRoleNamesForUser(Ljava/sql/Connection;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 334
    iget-boolean v7, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->permissionsLookupEnabled:Z

    if-eqz v7, :cond_1

    .line 335
    invoke-virtual {p0, v0, v6, v5}, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->getPermissions(Ljava/sql/Connection;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 347
    :cond_1
    invoke-static {v0}, Lorg/apache/shiro/util/JdbcUtils;->closeConnection(Ljava/sql/Connection;)V

    .line 350
    new-instance v2, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;

    invoke-direct {v2, v5}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;-><init>(Ljava/util/Set;)V

    .line 351
    .local v2, "info":Lorg/apache/shiro/authz/SimpleAuthorizationInfo;
    invoke-virtual {v2, v4}, Lorg/apache/shiro/authz/SimpleAuthorizationInfo;->setStringPermissions(Ljava/util/Set;)V

    .line 352
    return-object v2

    .line 338
    .end local v2    # "info":Lorg/apache/shiro/authz/SimpleAuthorizationInfo;
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There was a SQL error while authorizing user ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "message":Ljava/lang/String;
    sget-object v7, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 341
    sget-object v7, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v7, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    :cond_2
    new-instance v7, Lorg/apache/shiro/authz/AuthorizationException;

    invoke-direct {v7, v3, v1}, Lorg/apache/shiro/authz/AuthorizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v1    # "e":Ljava/sql/SQLException;
    .end local v3    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v0}, Lorg/apache/shiro/util/JdbcUtils;->closeConnection(Ljava/sql/Connection;)V

    throw v7
.end method

.method protected getPermissions(Ljava/sql/Connection;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Set;
    .locals 7
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 389
    .local p3, "roleNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 390
    .local v3, "ps":Ljava/sql/PreparedStatement;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 392
    .local v2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->permissionsQuery:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 393
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 395
    .local v4, "roleName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v3, v6, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    const/4 v5, 0x0

    .line 401
    .local v5, "rs":Ljava/sql/ResultSet;
    :try_start_1
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    .line 404
    :goto_1
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "permissionString":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 412
    .end local v1    # "permissionString":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-static {v5}, Lorg/apache/shiro/util/JdbcUtils;->closeResultSet(Ljava/sql/ResultSet;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "rs":Ljava/sql/ResultSet;
    :catchall_1
    move-exception v6

    invoke-static {v3}, Lorg/apache/shiro/util/JdbcUtils;->closeStatement(Ljava/sql/Statement;)V

    throw v6

    .line 412
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v4    # "roleName":Ljava/lang/String;
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    :cond_0
    :try_start_3
    invoke-static {v5}, Lorg/apache/shiro/util/JdbcUtils;->closeResultSet(Ljava/sql/ResultSet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 417
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "rs":Ljava/sql/ResultSet;
    :cond_1
    invoke-static {v3}, Lorg/apache/shiro/util/JdbcUtils;->closeStatement(Ljava/sql/Statement;)V

    .line 420
    return-object v2
.end method

.method protected getRoleNamesForUser(Ljava/sql/Connection;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "conn"    # Ljava/sql/Connection;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "ps":Ljava/sql/PreparedStatement;
    const/4 v3, 0x0

    .line 359
    .local v3, "rs":Ljava/sql/ResultSet;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 361
    .local v2, "roleNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->userRolesQuery:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 362
    const/4 v4, 0x1

    invoke-interface {v0, v4, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 365
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 368
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "roleName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 374
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 382
    .end local v1    # "roleName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lorg/apache/shiro/util/JdbcUtils;->closeResultSet(Ljava/sql/ResultSet;)V

    .line 383
    invoke-static {v0}, Lorg/apache/shiro/util/JdbcUtils;->closeStatement(Ljava/sql/Statement;)V

    throw v4

    .line 376
    .restart local v1    # "roleName":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v4, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    sget-object v4, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null role name found while retrieving role names for user ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    .end local v1    # "roleName":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lorg/apache/shiro/util/JdbcUtils;->closeResultSet(Ljava/sql/ResultSet;)V

    .line 383
    invoke-static {v0}, Lorg/apache/shiro/util/JdbcUtils;->closeStatement(Ljava/sql/Statement;)V

    .line 385
    return-object v2
.end method

.method protected getSaltForUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 424
    return-object p1
.end method

.method public setAuthenticationQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationQuery"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->authenticationQuery:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSource"    # Ljavax/sql/DataSource;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->dataSource:Ljavax/sql/DataSource;

    .line 126
    return-void
.end method

.method public setPermissionsLookupEnabled(Z)V
    .locals 0
    .param p1, "permissionsLookupEnabled"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->permissionsLookupEnabled:Z

    .line 184
    return-void
.end method

.method public setPermissionsQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionsQuery"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->permissionsQuery:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setSaltStyle(Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;)V
    .locals 2
    .param p1, "saltStyle"    # Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->saltStyle:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    .line 193
    sget-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->COLUMN:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->authenticationQuery:Ljava/lang/String;

    const-string v1, "select password from users where username = ?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "select password, password_salt from users where username = ?"

    iput-object v0, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->authenticationQuery:Ljava/lang/String;

    .line 196
    :cond_0
    return-void
.end method

.method public setUserRolesQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "userRolesQuery"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/apache/shiro/realm/jdbc/JdbcRealm;->userRolesQuery:Ljava/lang/String;

    .line 154
    return-void
.end method
