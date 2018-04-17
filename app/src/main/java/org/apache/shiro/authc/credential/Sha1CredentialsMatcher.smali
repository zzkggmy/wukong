.class public Lorg/apache/shiro/authc/credential/Sha1CredentialsMatcher;
.super Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;
.source "Sha1CredentialsMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;-><init>()V

    .line 44
    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authc/credential/Sha1CredentialsMatcher;->setHashAlgorithmName(Ljava/lang/String;)V

    .line 45
    return-void
.end method
