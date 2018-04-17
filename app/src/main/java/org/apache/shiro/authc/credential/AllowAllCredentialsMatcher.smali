.class public Lorg/apache/shiro/authc/credential/AllowAllCredentialsMatcher;
.super Ljava/lang/Object;
.source "AllowAllCredentialsMatcher.java"

# interfaces
.implements Lorg/apache/shiro/authc/credential/CredentialsMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCredentialsMatch(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Z
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
