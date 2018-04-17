.class public abstract Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;
.super Lorg/apache/shiro/realm/AuthorizingRealm;
.source "AbstractLdapRealm.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private ldapContextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

.field protected principalSuffix:Ljava/lang/String;

.field protected searchBase:Ljava/lang/String;

.field protected systemPassword:Ljava/lang/String;

.field protected systemUsername:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;-><init>()V

    .line 66
    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->principalSuffix:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->searchBase:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->url:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->systemUsername:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->systemPassword:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ldapContextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    return-void
.end method

.method private ensureContextFactory()Lorg/apache/shiro/realm/ldap/LdapContextFactory;
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ldapContextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    if-nez v1, :cond_1

    .line 172
    sget-object v1, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->log:Lorg/slf4j/Logger;

    const-string v2, "No LdapContextFactory specified - creating a default instance."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 176
    :cond_0
    new-instance v0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;

    invoke-direct {v0}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;-><init>()V

    .line 177
    .local v0, "defaultFactory":Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->principalSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->setPrincipalSuffix(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->searchBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->setSearchBase(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->setUrl(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->systemUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->setSystemUsername(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->systemPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->setSystemPassword(Ljava/lang/String;)V

    .line 183
    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ldapContextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    .line 185
    .end local v0    # "defaultFactory":Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;
    :cond_1
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ldapContextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    return-object v1
.end method


# virtual methods
.method protected doGetAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 5
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    invoke-direct {p0}, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ensureContextFactory()Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->queryForAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authc/AuthenticationInfo;
    :try_end_0
    .catch Ljavax/naming/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 200
    .local v1, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    return-object v1

    .line 193
    .end local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljavax/naming/AuthenticationException;
    new-instance v3, Lorg/apache/shiro/authc/AuthenticationException;

    const-string v4, "LDAP authentication failed."

    invoke-direct {v3, v4, v0}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 195
    .end local v0    # "e":Ljavax/naming/AuthenticationException;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Ljavax/naming/NamingException;
    const-string v2, "LDAP naming error while attempting to authenticate user."

    .line 197
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/authc/AuthenticationException;

    invoke-direct {v3, v2, v0}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected doGetAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 5
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ensureContextFactory()Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->queryForAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authz/AuthorizationInfo;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    .local v1, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    return-object v1

    .line 208
    .end local v1    # "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljavax/naming/NamingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LDAP naming error while attempting to retrieve authorization for user ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/authz/AuthorizationException;

    invoke-direct {v3, v2, v0}, Lorg/apache/shiro/authz/AuthorizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;->onInit()V

    .line 166
    invoke-direct {p0}, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ensureContextFactory()Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    .line 167
    return-void
.end method

.method protected abstract queryForAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method protected abstract queryForAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public setLdapContextFactory(Lorg/apache/shiro/realm/ldap/LdapContextFactory;)V
    .locals 0
    .param p1, "ldapContextFactory"    # Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->ldapContextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    .line 158
    return-void
.end method

.method public setPrincipalSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "principalSuffix"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->principalSuffix:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSearchBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchBase"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->searchBase:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setSystemPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemPassword"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->systemPassword:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSystemUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemUsername"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->systemUsername:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/AbstractLdapRealm;->url:Ljava/lang/String;

    .line 122
    return-void
.end method
