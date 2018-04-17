.class public Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;
.super Ljava/lang/Object;
.source "JndiLdapContextFactory.java"

# interfaces
.implements Lorg/apache/shiro/realm/ldap/LdapContextFactory;


# static fields
.field protected static final DEFAULT_CONTEXT_FACTORY_CLASS_NAME:Ljava/lang/String; = "com.sun.jndi.ldap.LdapCtxFactory"

.field protected static final DEFAULT_REFERRAL:Ljava/lang/String; = "follow"

.field protected static final SIMPLE_AUTHENTICATION_MECHANISM_NAME:Ljava/lang/String; = "simple"

.field protected static final SUN_CONNECTION_POOLING_PROPERTY:Ljava/lang/String; = "com.sun.jndi.ldap.connect.pool"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private poolingEnabled:Z

.field private systemPassword:Ljava/lang/String;

.field private systemUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->environment:Ljava/util/Map;

    .line 115
    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->setContextFactoryClassName(Ljava/lang/String;)V

    .line 116
    const-string v0, "follow"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->setReferral(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->poolingEnabled:Z

    .line 118
    return-void
.end method

.method private getEnvironmentProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->environment:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private setEnvironmentProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->environment:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->environment:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected createLdapContext(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;
    .locals 2
    .param p1, "env"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Ljavax/naming/ldap/InitialLdapContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V

    return-object v0
.end method

.method public getAuthenticationMechanism()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "java.naming.security.authentication"

    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getEnvironmentProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContextFactoryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "java.naming.factory.initial"

    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getEnvironmentProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Map;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->environment:Ljava/util/Map;

    return-object v0
.end method

.method public getLdapContext(Ljava/lang/Object;Ljava/lang/Object;)Ljavax/naming/ldap/LdapContext;
    .locals 9
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "credentials"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "url":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 459
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "An LDAP URL must be specified of the form ldap://<hostname>:<port>"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    iget-object v4, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->environment:Ljava/util/Map;

    invoke-direct {v1, v4}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 466
    .local v1, "env":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getAuthenticationMechanism()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "authcMech":Ljava/lang/String;
    if-nez v0, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 473
    :cond_1
    const-string v4, "java.naming.security.authentication"

    const-string v5, "simple"

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_2
    if-eqz p1, :cond_3

    .line 476
    const-string v4, "java.naming.security.principal"

    invoke-virtual {v1, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_3
    if-eqz p2, :cond_4

    .line 479
    const-string v4, "java.naming.security.credentials"

    invoke-virtual {v1, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->isPoolingConnections(Ljava/lang/Object;)Z

    move-result v2

    .line 483
    .local v2, "pooling":Z
    if-eqz v2, :cond_5

    .line 484
    const-string v4, "com.sun.jndi.ldap.connect.pool"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_5
    sget-object v4, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 488
    sget-object v5, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->log:Lorg/slf4j/Logger;

    const-string v6, "Initializing LDAP context using URL [{}] and principal [{}] with pooling {}"

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const/4 v4, 0x1

    aput-object p1, v7, v4

    const/4 v8, 0x2

    if-eqz v2, :cond_7

    const-string v4, "enabled"

    :goto_0
    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_6
    invoke-virtual {p0, v1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->validateAuthenticationInfo(Ljava/util/Hashtable;)V

    .line 495
    invoke-virtual {p0, v1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->createLdapContext(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;

    move-result-object v4

    return-object v4

    .line 488
    :cond_7
    const-string v4, "disabled"

    goto :goto_0
.end method

.method public getLdapContext(Ljava/lang/String;Ljava/lang/String;)Ljavax/naming/ldap/LdapContext;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getLdapContext(Ljava/lang/Object;Ljava/lang/Object;)Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public getReferral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, "java.naming.referral"

    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getEnvironmentProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLdapContext()Ljavax/naming/ldap/LdapContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getSystemUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getSystemPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getLdapContext(Ljava/lang/Object;Ljava/lang/Object;)Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public getSystemPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->systemPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->systemUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const-string v0, "java.naming.provider.url"

    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getEnvironmentProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected isPoolingConnections(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "principal"    # Ljava/lang/Object;

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->isPoolingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->getSystemUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPoolingEnabled()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->poolingEnabled:Z

    return v0
.end method

.method public setAuthenticationMechanism(Ljava/lang/String;)V
    .locals 1
    .param p1, "authenticationMechanism"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "java.naming.security.authentication"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->setEnvironmentProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setContextFactoryClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "contextFactoryClassName"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "java.naming.factory.initial"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->setEnvironmentProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setEnvironment(Ljava/util/Map;)V
    .locals 0
    .param p1, "env"    # Ljava/util/Map;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->environment:Ljava/util/Map;

    .line 219
    return-void
.end method

.method public setPoolingEnabled(Z)V
    .locals 0
    .param p1, "poolingEnabled"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->poolingEnabled:Z

    .line 290
    return-void
.end method

.method public setReferral(Ljava/lang/String;)V
    .locals 1
    .param p1, "referral"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v0, "java.naming.referral"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->setEnvironmentProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public setSystemPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemPassword"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->systemPassword:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setSystemUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemUsername"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->systemUsername:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v0, "java.naming.provider.url"

    invoke-direct {p0, v0, p1}, Lorg/apache/shiro/realm/ldap/JndiLdapContextFactory;->setEnvironmentProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method protected validateAuthenticationInfo(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "environment":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "simple"

    const-string v2, "java.naming.security.authentication"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    const-string v1, "java.naming.security.principal"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "java.naming.security.principal"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    const-string v1, "java.naming.security.credentials"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 537
    .local v0, "credentials":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, [B

    check-cast v1, [B

    array-length v1, v1

    if-lez v1, :cond_2

    :cond_0
    instance-of v1, v0, [C

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, [C

    check-cast v1, [C

    array-length v1, v1

    if-lez v1, :cond_2

    :cond_1
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 542
    :cond_2
    new-instance v1, Ljavax/naming/AuthenticationException;

    const-string v2, "LDAP Simple authentication requires both a principal and credentials."

    invoke-direct {v1, v2}, Ljavax/naming/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    .end local v0    # "credentials":Ljava/lang/Object;
    :cond_3
    return-void
.end method
