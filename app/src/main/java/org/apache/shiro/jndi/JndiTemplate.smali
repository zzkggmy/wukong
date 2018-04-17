.class public Lorg/apache/shiro/jndi/JndiTemplate;
.super Ljava/lang/Object;
.source "JndiTemplate.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private environment:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/shiro/jndi/JndiTemplate;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/jndi/JndiTemplate;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "environment"    # Ljava/util/Properties;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiTemplate;->environment:Ljava/util/Properties;

    .line 62
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lorg/apache/shiro/jndi/JndiTemplate;->log:Lorg/slf4j/Logger;

    const-string v1, "Binding JNDI object with name \'{}\'"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    new-instance v0, Lorg/apache/shiro/jndi/JndiTemplate$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/shiro/jndi/JndiTemplate$2;-><init>(Lorg/apache/shiro/jndi/JndiTemplate;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/jndi/JndiTemplate;->execute(Lorg/apache/shiro/jndi/JndiCallback;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method protected createInitialContext()Ljavax/naming/Context;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/apache/shiro/jndi/JndiTemplate;->getEnvironment()Ljava/util/Properties;

    move-result-object v1

    .line 115
    .local v1, "env":Ljava/util/Properties;
    const/4 v2, 0x0

    .line 116
    .local v2, "icEnv":Ljava/util/Hashtable;
    if-eqz v1, :cond_0

    .line 117
    new-instance v2, Ljava/util/Hashtable;

    .end local v2    # "icEnv":Ljava/util/Hashtable;
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 118
    .restart local v2    # "icEnv":Ljava/util/Hashtable;
    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v0    # "en":Ljava/util/Enumeration;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljavax/naming/InitialContext;

    invoke-direct {v4, v2}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    return-object v4
.end method

.method public execute(Lorg/apache/shiro/jndi/JndiCallback;)Ljava/lang/Object;
    .locals 5
    .param p1, "contextCallback"    # Lorg/apache/shiro/jndi/JndiCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/shiro/jndi/JndiTemplate;->createInitialContext()Ljavax/naming/Context;

    move-result-object v0

    .line 93
    .local v0, "ctx":Ljavax/naming/Context;
    :try_start_0
    invoke-interface {p1, v0}, Lorg/apache/shiro/jndi/JndiCallback;->doInContext(Ljavax/naming/Context;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 97
    :try_start_1
    invoke-interface {v0}, Ljavax/naming/Context;->close()V
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "ex":Ljavax/naming/NamingException;
    sget-object v3, Lorg/apache/shiro/jndi/JndiTemplate;->log:Lorg/slf4j/Logger;

    const-string v4, "Could not close JNDI InitialContext"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    .end local v1    # "ex":Ljavax/naming/NamingException;
    :catchall_0
    move-exception v2

    .line 97
    :try_start_2
    invoke-interface {v0}, Ljavax/naming/Context;->close()V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :goto_1
    throw v2

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .restart local v1    # "ex":Ljavax/naming/NamingException;
    sget-object v3, Lorg/apache/shiro/jndi/JndiTemplate;->log:Lorg/slf4j/Logger;

    const-string v4, "Could not close JNDI InitialContext"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getEnvironment()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/shiro/jndi/JndiTemplate;->environment:Ljava/util/Properties;

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lorg/apache/shiro/jndi/JndiTemplate;->log:Lorg/slf4j/Logger;

    const-string v1, "Looking up JNDI object with name \'{}\'"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lorg/apache/shiro/jndi/JndiTemplate$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/shiro/jndi/JndiTemplate$1;-><init>(Lorg/apache/shiro/jndi/JndiTemplate;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/jndi/JndiTemplate;->execute(Lorg/apache/shiro/jndi/JndiCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lorg/apache/shiro/jndi/JndiTemplate;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "jndiObject":Ljava/lang/Object;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jndi object acquired under name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and not assignable to the required type ["

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

    move-result-object v1

    .line 168
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljavax/naming/NamingException;

    invoke-direct {v2, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lorg/apache/shiro/jndi/JndiTemplate;->log:Lorg/slf4j/Logger;

    const-string v1, "Rebinding JNDI object with name \'{}\'"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    new-instance v0, Lorg/apache/shiro/jndi/JndiTemplate$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/shiro/jndi/JndiTemplate$3;-><init>(Lorg/apache/shiro/jndi/JndiTemplate;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/jndi/JndiTemplate;->execute(Lorg/apache/shiro/jndi/JndiCallback;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public setEnvironment(Ljava/util/Properties;)V
    .locals 0
    .param p1, "environment"    # Ljava/util/Properties;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiTemplate;->environment:Ljava/util/Properties;

    .line 71
    return-void
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lorg/apache/shiro/jndi/JndiTemplate;->log:Lorg/slf4j/Logger;

    const-string v1, "Unbinding JNDI object with name \'{}\'"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    new-instance v0, Lorg/apache/shiro/jndi/JndiTemplate$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/shiro/jndi/JndiTemplate$4;-><init>(Lorg/apache/shiro/jndi/JndiTemplate;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/jndi/JndiTemplate;->execute(Lorg/apache/shiro/jndi/JndiCallback;)Ljava/lang/Object;

    .line 222
    return-void
.end method
