.class public Lorg/apache/shiro/authc/credential/Md2CredentialsMatcher;
.super Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;
.source "Md2CredentialsMatcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/shiro/authc/credential/HashedCredentialsMatcher;-><init>()V

    .line 45
    const-string v0, "MD2"

    invoke-virtual {p0, v0}, Lorg/apache/shiro/authc/credential/Md2CredentialsMatcher;->setHashAlgorithmName(Ljava/lang/String;)V

    .line 46
    return-void
.end method
