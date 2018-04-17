.class public Lorg/apache/shiro/authc/pam/AllSuccessfulStrategy;
.super Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;
.source "AllSuccessfulStrategy.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/shiro/authc/pam/AllSuccessfulStrategy;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/authc/pam/AllSuccessfulStrategy;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/shiro/authc/pam/AbstractAuthenticationStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public afterAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;Ljava/lang/Throwable;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 3
    .param p1, "realm"    # Lorg/apache/shiro/realm/Realm;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p3, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p4, "aggregate"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p5, :cond_1

    .line 78
    instance-of v1, p5, Lorg/apache/shiro/authc/AuthenticationException;

    if-eqz v1, :cond_0

    .line 80
    check-cast p5, Lorg/apache/shiro/authc/AuthenticationException;

    .end local p5    # "t":Ljava/lang/Throwable;
    throw p5

    .line 82
    .restart local p5    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to acquire account data from realm ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].  The ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation requires all configured realm(s) to operate successfully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for a successful authentication."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/authc/AuthenticationException;

    invoke-direct {v1, v0, p5}, Lorg/apache/shiro/authc/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] could not find any associated account data for the submitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AuthenticationToken ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].  The ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] implementation requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "all configured realm(s) to acquire valid account data for a submitted token during the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "log-in process."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/authc/UnknownAccountException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/authc/UnknownAccountException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    sget-object v1, Lorg/apache/shiro/authc/pam/AllSuccessfulStrategy;->log:Lorg/slf4j/Logger;

    const-string v2, "Account successfully authenticated using realm [{}]"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, p3, p4}, Lorg/apache/shiro/authc/pam/AllSuccessfulStrategy;->merge(Lorg/apache/shiro/authc/AuthenticationInfo;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;

    .line 102
    return-object p4
.end method

.method public beforeAttempt(Lorg/apache/shiro/realm/Realm;Lorg/apache/shiro/authc/AuthenticationToken;Lorg/apache/shiro/authc/AuthenticationInfo;)Lorg/apache/shiro/authc/AuthenticationInfo;
    .locals 3
    .param p1, "realm"    # Lorg/apache/shiro/realm/Realm;
    .param p2, "token"    # Lorg/apache/shiro/authc/AuthenticationToken;
    .param p3, "info"    # Lorg/apache/shiro/authc/AuthenticationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authc/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1, p2}, Lorg/apache/shiro/realm/Realm;->supports(Lorg/apache/shiro/authc/AuthenticationToken;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] does not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " the submitted AuthenticationToken ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].  The ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] implementation requires all configured realm(s) to support and be able to process the submitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AuthenticationToken."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/authc/pam/UnsupportedTokenException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/authc/pam/UnsupportedTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object p3
.end method
