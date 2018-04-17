.class public Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;
.super Ljava/lang/Object;
.source "RandomSessionIdGenerator.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;


# static fields
.field private static final RANDOM_NUM_GENERATOR_ALGORITHM_NAME:Ljava/lang/String; = "SHA1PRNG"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;->random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;->log:Lorg/slf4j/Logger;

    const-string v2, "The SecureRandom SHA1PRNG algorithm is not available on the current platform.  Using the platform\'s default SecureRandom algorithm."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;->random:Ljava/util/Random;

    goto :goto_0
.end method


# virtual methods
.method public generateId(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;->getRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;->random:Ljava/util/Random;

    return-object v0
.end method

.method public setRandom(Ljava/util/Random;)V
    .locals 0
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/eis/RandomSessionIdGenerator;->random:Ljava/util/Random;

    .line 57
    return-void
.end method
