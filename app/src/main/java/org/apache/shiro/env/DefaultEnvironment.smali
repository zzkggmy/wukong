.class public Lorg/apache/shiro/env/DefaultEnvironment;
.super Ljava/lang/Object;
.source "DefaultEnvironment.java"

# interfaces
.implements Lorg/apache/shiro/env/NamedObjectEnvironment;
.implements Lorg/apache/shiro/util/Destroyable;


# static fields
.field public static final DEFAULT_SECURITY_MANAGER_KEY:Ljava/lang/String; = "securityManager"


# instance fields
.field protected final objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private securityManagerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/shiro/env/DefaultEnvironment;-><init>(Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "seed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "securityManager"

    iput-object v0, p0, Lorg/apache/shiro/env/DefaultEnvironment;->securityManagerName:Ljava/lang/String;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Backing map cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/env/DefaultEnvironment;->objects:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/shiro/env/DefaultEnvironment;->objects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/util/Collection;)V

    .line 169
    return-void
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/env/RequiredTypeException;
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "requiredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 139
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "name parameter cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_0
    if-nez p2, :cond_1

    .line 142
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "requiredType parameter cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_1
    iget-object v2, p0, Lorg/apache/shiro/env/DefaultEnvironment;->objects:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 146
    const/4 v1, 0x0

    .line 152
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    return-object v1

    .line 148
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not of required type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/env/RequiredTypeException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/env/RequiredTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getObjects()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/shiro/env/DefaultEnvironment;->objects:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/shiro/env/DefaultEnvironment;->lookupSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    .line 80
    .local v0, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    if-nez v0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No SecurityManager found in Environment.  This is an invalid environment state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    return-object v0
.end method

.method public getSecurityManagerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/shiro/env/DefaultEnvironment;->securityManagerName:Ljava/lang/String;

    return-object v0
.end method

.method protected lookupSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/shiro/env/DefaultEnvironment;->getSecurityManagerName()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "name":Ljava/lang/String;
    const-class v1, Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/env/DefaultEnvironment;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/mgt/SecurityManager;

    return-object v1
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name parameter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    if-nez p2, :cond_1

    .line 160
    iget-object v0, p0, Lorg/apache/shiro/env/DefaultEnvironment;->objects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/apache/shiro/env/DefaultEnvironment;->objects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 3
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null SecurityManager instances are not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/env/DefaultEnvironment;->getSecurityManagerName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/env/DefaultEnvironment;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public setSecurityManagerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityManagerName"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/shiro/env/DefaultEnvironment;->securityManagerName:Ljava/lang/String;

    .line 125
    return-void
.end method
