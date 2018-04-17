.class public final Lorg/apache/shiro/realm/ldap/LdapUtils;
.super Ljava/lang/Object;
.source "LdapUtils.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/shiro/realm/ldap/LdapUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/ldap/LdapUtils;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeContext(Ljavax/naming/ldap/LdapContext;)V
    .locals 3
    .param p0, "ctx"    # Ljavax/naming/ldap/LdapContext;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    :try_start_0
    invoke-interface {p0}, Ljavax/naming/ldap/LdapContext;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljavax/naming/NamingException;
    sget-object v1, Lorg/apache/shiro/realm/ldap/LdapUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception while closing LDAP context. "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeEnumeration(Ljavax/naming/NamingEnumeration;)V
    .locals 3
    .param p0, "ne"    # Ljavax/naming/NamingEnumeration;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p0}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljavax/naming/NamingException;
    sget-object v1, Lorg/apache/shiro/realm/ldap/LdapUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception while closing NamingEnumeration: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAllAttributeValues(Ljavax/naming/directory/Attribute;)Ljava/util/Collection;
    .locals 4
    .param p0, "attr"    # Ljavax/naming/directory/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/naming/directory/Attribute;",
            ")",
            "Ljava/util/Collection",
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
    .line 69
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "ne":Ljavax/naming/NamingEnumeration;
    :try_start_0
    invoke-interface {p0}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 73
    :goto_0
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "value":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeEnumeration(Ljavax/naming/NamingEnumeration;)V

    throw v3

    :cond_0
    invoke-static {v0}, Lorg/apache/shiro/realm/ldap/LdapUtils;->closeEnumeration(Ljavax/naming/NamingEnumeration;)V

    .line 81
    return-object v2
.end method
