.class public interface abstract Lorg/apache/shiro/realm/ldap/LdapContextFactory;
.super Ljava/lang/Object;
.source "LdapContextFactory.java"


# virtual methods
.method public abstract getLdapContext(Ljava/lang/Object;Ljava/lang/Object;)Ljavax/naming/ldap/LdapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getLdapContext(Ljava/lang/String;Ljava/lang/String;)Ljavax/naming/ldap/LdapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSystemLdapContext()Ljavax/naming/ldap/LdapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
