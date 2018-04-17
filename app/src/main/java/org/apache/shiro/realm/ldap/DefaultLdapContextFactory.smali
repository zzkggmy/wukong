.class public Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;
.super Ljava/lang/Object;
.source "DefaultLdapContextFactory.java"

# interfaces
.implements Lorg/apache/shiro/realm/ldap/LdapContextFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SIMPLE_AUTHENTICATION_MECHANISM_NAME:Ljava/lang/String; = "simple"

.field protected static final SUN_CONNECTION_POOLING_PROPERTY:Ljava/lang/String; = "com.sun.jndi.ldap.connect.pool"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private additionalEnvironment:Ljava/util/Map;
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

.field protected authentication:Ljava/lang/String;

.field protected contextFactoryClassName:Ljava/lang/String;

.field protected principalSuffix:Ljava/lang/String;

.field protected referral:Ljava/lang/String;

.field protected searchBase:Ljava/lang/String;

.field protected systemPassword:Ljava/lang/String;

.field protected systemUsername:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field private usePooling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "simple"

    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->authentication:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->principalSuffix:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->searchBase:Ljava/lang/String;

    .line 74
    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->contextFactoryClassName:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->url:Ljava/lang/String;

    .line 78
    const-string v0, "follow"

    iput-object v0, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->referral:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemUsername:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemPassword:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->usePooling:Z

    return-void
.end method

.method private validateAuthenticationInfo(Ljava/util/Hashtable;)V
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
    .line 295
    .local p1, "environment":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "simple"

    const-string v2, "java.naming.security.authentication"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
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

    .line 301
    const-string v1, "java.naming.security.credentials"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 305
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

    .line 310
    :cond_2
    new-instance v1, Ljavax/naming/AuthenticationException;

    const-string v2, "LDAP Simple authentication requires both a principal and credentials."

    invoke-direct {v1, v2}, Ljavax/naming/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    .end local v0    # "credentials":Ljava/lang/Object;
    :cond_3
    return-void
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
    .line 276
    new-instance v0, Ljavax/naming/ldap/InitialLdapContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V

    return-object v0
.end method

.method public getLdapContext(Ljava/lang/Object;Ljava/lang/Object;)Ljavax/naming/ldap/LdapContext;
    .locals 4
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "credentials"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An LDAP URL must be specified of the form ldap://<hostname>:<port>"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 234
    .local v0, "env":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "java.naming.security.authentication"

    iget-object v2, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->authentication:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    if-eqz p1, :cond_1

    .line 236
    const-string v1, "java.naming.security.principal"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_1
    if-eqz p2, :cond_2

    .line 239
    const-string v1, "java.naming.security.credentials"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2
    const-string v1, "java.naming.factory.initial"

    iget-object v2, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->contextFactoryClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "java.naming.provider.url"

    iget-object v2, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "java.naming.referral"

    iget-object v2, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->referral:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-boolean v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->usePooling:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemUsername:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    const-string v1, "com.sun.jndi.ldap.connect.pool"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_3
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->additionalEnvironment:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->additionalEnvironment:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 255
    :cond_4
    sget-object v1, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    sget-object v2, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing LDAP context using URL ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] and username ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "with pooling ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->usePooling:Z

    if-eqz v1, :cond_6

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 261
    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->validateAuthenticationInfo(Ljava/util/Hashtable;)V

    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->createLdapContext(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;

    move-result-object v1

    return-object v1

    .line 256
    :cond_6
    const-string v1, "disabled"

    goto :goto_0
.end method

.method public getLdapContext(Ljava/lang/String;Ljava/lang/String;)Ljavax/naming/ldap/LdapContext;
    .locals 2
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
    .line 221
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->principalSuffix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->principalSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->getLdapContext(Ljava/lang/Object;Ljava/lang/Object;)Ljavax/naming/ldap/LdapContext;

    move-result-object v0

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
    .line 205
    iget-object v0, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemUsername:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->getLdapContext(Ljava/lang/String;Ljava/lang/String;)Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public setAdditionalEnvironment(Ljava/util/Map;)V
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
    .line 198
    .local p1, "additionalEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->additionalEnvironment:Ljava/util/Map;

    .line 199
    return-void
.end method

.method public setAuthentication(Ljava/lang/String;)V
    .locals 0
    .param p1, "authentication"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->authentication:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setContextFactoryClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextFactoryClassName"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->contextFactoryClassName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPrincipalSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "principalSuffix"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->principalSuffix:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setReferral(Ljava/lang/String;)V
    .locals 0
    .param p1, "referral"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->referral:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setSearchBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchBase"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->searchBase:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSystemPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemPassword"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemPassword:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSystemUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemUsername"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->systemUsername:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->url:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setUsePooling(Z)V
    .locals 0
    .param p1, "usePooling"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lorg/apache/shiro/realm/ldap/DefaultLdapContextFactory;->usePooling:Z

    .line 190
    return-void
.end method
