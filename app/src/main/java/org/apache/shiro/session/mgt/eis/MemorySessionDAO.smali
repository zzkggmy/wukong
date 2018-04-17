.class public Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;
.super Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;
.source "MemorySessionDAO.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private sessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/io/Serializable;",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/eis/AbstractSessionDAO;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->sessions:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    return-void
.end method


# virtual methods
.method public delete(Lorg/apache/shiro/session/Session;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "session argument cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v0

    .line 93
    .local v0, "id":Ljava/io/Serializable;
    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    return-void
.end method

.method protected doCreate(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->generateSessionId(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;

    move-result-object v0

    .line 68
    .local v0, "sessionId":Ljava/io/Serializable;
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->assignSessionId(Lorg/apache/shiro/session/Session;Ljava/io/Serializable;)V

    .line 69
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->storeSession(Ljava/io/Serializable;Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;

    .line 70
    return-object v0
.end method

.method protected doReadSession(Ljava/io/Serializable;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/session/Session;

    return-object v0
.end method

.method public getActiveSessions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 100
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/Session;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method protected storeSession(Ljava/io/Serializable;Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "id"    # Ljava/io/Serializable;
    .param p2, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id argument cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/session/Session;

    return-object v0
.end method

.method public update(Lorg/apache/shiro/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/eis/MemorySessionDAO;->storeSession(Ljava/io/Serializable;Lorg/apache/shiro/session/Session;)Lorg/apache/shiro/session/Session;

    .line 86
    return-void
.end method
