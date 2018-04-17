.class public Lorg/apache/shiro/authc/credential/Sha384CredentialsMatcher;
.super Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;
.source "Sha384CredentialsMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;-><init>()V

    .line 38
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authc/credential/Sha384CredentialsMatcher;->setHashAlgorithmName(Ljava/lang/String;)V

    .line 39
    return-void
.end method
