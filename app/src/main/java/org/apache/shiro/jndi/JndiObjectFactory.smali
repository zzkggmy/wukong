.class public Lorg/apache/shiro/jndi/JndiObjectFactory;
.super Lorg/apache/shiro/jndi/JndiLocator;
.source "JndiObjectFactory.java"

# interfaces
.implements Lorg/apache/shiro/util/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/shiro/jndi/JndiLocator;",
        "Lorg/apache/shiro/util/Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private requiredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private resourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/shiro/jndi/JndiObjectFactory;, "Lorg/apache/shiro/jndi/JndiObjectFactory<TT;>;"
    invoke-direct {p0}, Lorg/apache/shiro/jndi/JndiLocator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/shiro/jndi/JndiObjectFactory;, "Lorg/apache/shiro/jndi/JndiObjectFactory<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->requiredType:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->requiredType:Ljava/lang/Class;

    iget-object v3, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->resourceName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->requiredType:Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Lorg/apache/shiro/jndi/JndiObjectFactory;->lookup(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->resourceName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/shiro/jndi/JndiObjectFactory;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljavax/naming/NamingException;
    iget-object v2, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->requiredType:Ljava/lang/Class;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->requiredType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "typeName":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to look up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with jndi name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->resourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v1    # "typeName":Ljava/lang/String;
    :cond_1
    const-string v1, "object"

    goto :goto_1
.end method

.method public getRequiredType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/shiro/jndi/JndiObjectFactory;, "Lorg/apache/shiro/jndi/JndiObjectFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->requiredType:Ljava/lang/Class;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/shiro/jndi/JndiObjectFactory;, "Lorg/apache/shiro/jndi/JndiObjectFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public setRequiredType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/shiro/jndi/JndiObjectFactory;, "Lorg/apache/shiro/jndi/JndiObjectFactory<TT;>;"
    .local p1, "requiredType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->requiredType:Ljava/lang/Class;

    .line 62
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/shiro/jndi/JndiObjectFactory;, "Lorg/apache/shiro/jndi/JndiObjectFactory<TT;>;"
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiObjectFactory;->resourceName:Ljava/lang/String;

    .line 54
    return-void
.end method
