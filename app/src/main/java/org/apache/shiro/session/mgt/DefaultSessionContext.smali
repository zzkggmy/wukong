.class public Lorg/apache/shiro/session/mgt/DefaultSessionContext;
.super Lorg/apache/shiro/util/MapContext;
.source "DefaultSessionContext.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionContext;


# static fields
.field private static final HOST:Ljava/lang/String;

.field private static final SESSION_ID:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x13c3a2a867f0de66L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/session/mgt/DefaultSessionContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->HOST:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/session/mgt/DefaultSessionContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SESSION_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->SESSION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/shiro/util/MapContext;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/apache/shiro/util/MapContext;-><init>(Ljava/util/Map;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->HOST:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/io/Serializable;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->SESSION_ID:Ljava/lang/String;

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->HOST:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    return-void
.end method

.method public setSessionId(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 63
    sget-object v0, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->SESSION_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/DefaultSessionContext;->nullSafePut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method
