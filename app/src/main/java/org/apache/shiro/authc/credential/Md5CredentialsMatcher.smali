.class public Lorg/apache/shiro/authc/credential/Md5CredentialsMatcher;
.super Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;
.source "Md5CredentialsMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;-><init>()V

    .line 44
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authc/credential/Md5CredentialsMatcher;->setHashAlgorithmName(Ljava/lang/String;)V

    .line 45
    return-void
.end method
