.class public Lorg/apache/shiro/realm/ldap/JndiLdapRealm;
.super Lorg/apache/shiro/realm/AuthorizingRealm;
.source "JndiLdapRealm.java"


# static fields
.field private static final USERDN_SUBSTITUTION_TOKEN:Ljava/lang/String; = "{0}"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private contextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

.field private userDnPrefix:Ljava/lang/String;

.field private userDnSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/apache/shiro/realm/AuthorizingRealm;-><init>()V

    .line 113
    new-instance v0, Lorg/apache/shiro/authc/credential/AllowAllCredentialsMatcher;

    invoke-direct {v0}, Lorg/apache/shiro/authc/credential/AllowAllCredentialsMatcher;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->setCredentialsMatcher(Lorg/apache/shiro/authc/credential/CredentialsMatcher;)V

    .line 115
    const-class v0, Lorg/apache/shiro/authc/AuthenticationToken;

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->setAuthenticationTokenClass(Ljava/lang/Class;)V

    .line 116
    new-instance v0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;

    invoke-direct {v0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->contextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    .line 117
    return-void
.end method


# virtual methods
.method protected createAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;Ljava/lang/Object;Ljava/lang/Object;Ljavax/naming/ldap/LdapContext;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 4
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "ldapPrincipal"    # Ljava/lang/Object;
    .param p3, "ldapCredentials"    # Ljava/lang/Object;
    .param p4, "ldapContext"    # Ljavax/naming/ldap/LdapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getPrincipal()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getCredentials()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/authc/SimpleAuthenticationInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected doGetAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 5
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getContextFactory()Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->queryForAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authc/AuthenticationInfo;
    :try_end_0
    .catch Ljavax/naming/AuthenticationNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/naming/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 306
    .local v1, "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    return-object v1

    .line 296
    .end local v1    # "info":Lorg/apache/shiro/authc/AuthenticationInfo;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljavax/naming/AuthenticationNotSupportedException;
    const-string v2, "Unsupported configured authentication mechanism"

    .line 298
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/ldap/UnsupportedAuthenticationMechanismException;

    invoke-direct {v3, v2, v0}, Lorg/apache/shiro/ldap/UnsupportedAuthenticationMechanismException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 299
    .end local v0    # "e":Ljavax/naming/AuthenticationNotSupportedException;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljavax/naming/AuthenticationException;
    new-instance v3, Lorg/apache/shiro/authc/AuthenticationException;

    const-string v4, "LDAP authentication failed."

    invoke-direct {v3, v4, v0}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 301
    .end local v0    # "e":Ljavax/naming/AuthenticationException;
    :catch_2
    move-exception v0

    .line 302
    .local v0, "e":Ljavax/naming/NamingException;
    const-string v2, "LDAP naming error while attempting to authenticate user."

    .line 303
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/authc/AuthenticationException;

    invoke-direct {v3, v2, v0}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected doGetAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 5
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;

    .prologue
    .line 313
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getContextFactory()Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->queryForAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authz/AuthorizationInfo;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 319
    .local v1, "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    return-object v1

    .line 314
    .end local v1    # "info":Lorg/apache/shiro/authz/AuthorizationInfo;
    :catch_0
    move-exception v0

    .line 315
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

    .line 316
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/authz/AuthorizationException;

    invoke-direct {v3, v2, v0}, Lorg/apache/shiro/authz/AuthorizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getContextFactory()Lorg/apache/shiro/realm/ldap/LdapContextFactory;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->contextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    return-object v0
.end method

.method protected getLdapPrincipal(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 339
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getPrincipal()Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, "principal":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 341
    check-cast v1, Ljava/lang/String;

    .line 342
    .local v1, "sPrincipal":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getUserDn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .end local v0    # "principal":Ljava/lang/Object;
    .end local v1    # "sPrincipal":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getUserDn(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "principal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "User principal cannot be null or empty for User DN construction."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getUserDnPrefix()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getUserDnSuffix()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "suffix":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    .line 234
    sget-object v5, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->log:Lorg/slf4j/Logger;

    const-string v6, "userDnTemplate property has not been configured, indicating the submitted AuthenticationToken\'s principal is the same as the User DN.  Returning the method argument as is."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 250
    .end local p1    # "principal":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 240
    .restart local p1    # "principal":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 241
    .local v1, "prefixLength":I
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 242
    .local v4, "suffixLength":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v4

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 243
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_3

    .line 244
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    if-lez v4, :cond_4

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .end local v1    # "prefixLength":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "suffixLength":I
    :cond_5
    move v1, v4

    .line 240
    goto :goto_1
.end method

.method protected getUserDnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->userDnPrefix:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserDnSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->userDnSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDnTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "{0}"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getUserDn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected queryForAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 5
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "ldapContextFactory"    # Lorg/apache/shiro/realm/ldap/LdapContextFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getPrincipal()Ljava/lang/Object;

    move-result-object v2

    .line 367
    .local v2, "principal":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    .line 369
    .local v0, "credentials":Ljava/lang/Object;
    sget-object v3, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Authenticating user \'{}\' through LDAP"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->getLdapPrincipal(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;

    move-result-object v2

    .line 373
    const/4 v1, 0x0

    .line 375
    .local v1, "ctx":Ljavax/naming/ldap/LdapContext;
    :try_start_0
    invoke-interface {p2, v2, v0}, Lorg/apache/shiro/realm/ldap/LdapContextFactory;->getLdapContext(Ljava/lang/Object;Ljava/lang/Object;)Ljavax/naming/ldap/LdapContext;

    move-result-object v1

    .line 377
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->createAuthenticationInfo(Lorg/apache/shiro/authc/AuthenticationToken;Ljava/lang/Object;Ljava/lang/Object;Ljavax/naming/ldap/LdapContext;)Lorg/apache/shiro/authc/AuthenticationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 379
    invoke-static {v1}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeContext(Ljavax/naming/ldap/LdapContext;)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeContext(Ljavax/naming/ldap/LdapContext;)V

    throw v3
.end method

.method protected queryForAuthorizationInfo(Lorg/apache/shiro/subject/PrincipalCollection;Lorg/apache/shiro/realm/ldap/LdapContextFactory;)Lorg/apache/shiro/authz/AuthorizationInfo;
    .locals 1
    .param p1, "principals"    # Lorg/apache/shiro/subject/PrincipalCollection;
    .param p2, "ldapContextFactory"    # Lorg/apache/shiro/realm/ldap/LdapContextFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContextFactory(Lorg/apache/shiro/realm/ldap/LdapContextFactory;)V
    .locals 0
    .param p1, "contextFactory"    # Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->contextFactory:Lorg/apache/shiro/realm/ldap/LdapContextFactory;

    .line 264
    return-void
.end method

.method public setUserDnTemplate(Ljava/lang/String;)V
    .locals 6
    .param p1, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    const-string v1, "User DN template cannot be null or empty."

    .line 184
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const-string v4, "{0}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 188
    const-string v1, "User DN template must contain the \'{0}\' replacement token to understand where to insert the runtime authentication principal."

    .line 191
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "{0}"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "suffix":Ljava/lang/String;
    sget-object v4, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    sget-object v4, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->log:Lorg/slf4j/Logger;

    const-string v5, "Determined user DN prefix [{}] and suffix [{}]"

    invoke-interface {v4, v5, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    :cond_2
    iput-object v2, p0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->userDnPrefix:Ljava/lang/String;

    .line 199
    iput-object v3, p0, Lorg/apache/shiro/realm/ldap/JndiLdapRealm;->userDnSuffix:Ljava/lang/String;

    .line 200
    return-void
.end method
