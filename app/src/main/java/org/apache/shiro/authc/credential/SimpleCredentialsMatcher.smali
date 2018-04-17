.class public Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;
.super Lorg/apache/shiro/codec/CodecSupport;
.source "SimpleCredentialsMatcher.java"

# interfaces
.implements Lorg/apache/shiro/authc/credential/CredentialsMatcher;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/shiro/codec/CodecSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public doCredentialsMatch(Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Z
    .locals 3
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p2, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->getCredentials(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "tokenCredentials":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->getCredentials(Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "accountCredentials":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "tokenCredentials"    # Ljava/lang/Object;
    .param p2, "accountCredentials"    # Ljava/lang/Object;

    .prologue
    .line 94
    sget-object v2, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing credentials equality check for tokenCredentials of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and accountCredentials of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->isByteSource(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->isByteSource(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    sget-object v2, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->log:Lorg/slf4j/Logger;

    const-string v3, "Both credentials arguments can be easily converted to byte arrays.  Performing array equals comparison"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->toBytes(Ljava/lang/Object;)[B

    move-result-object v1

    .line 105
    .local v1, "tokenBytes":[B
    invoke-virtual {p0, p2}, Lorg/apache/shiro/authc/credential/SimpleCredentialsMatcher;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 106
    .local v0, "accountBytes":[B
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 108
    .end local v0    # "accountBytes":[B
    .end local v1    # "tokenBytes":[B
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected getCredentials(Lorg/apache/shiro/authc/AuthenticationInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationInfo;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getCredentials(Lorg/apache/shiro/authc/AuthenticationToken;)Ljava/lang/Object;
    .locals 1
    .param p1, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;

    .prologue
    .line 57
    invoke-interface {p1}, Lorg/apache/shiro/authc/AuthenticationToken;->getCredentials()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
