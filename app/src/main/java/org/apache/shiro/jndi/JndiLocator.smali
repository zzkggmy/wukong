.class public Lorg/apache/shiro/jndi/JndiLocator;
.super Ljava/lang/Object;
.source "JndiLocator.java"


# static fields
.field public static final CONTAINER_PREFIX:Ljava/lang/String; = "java:comp/env/"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private jndiTemplate:Lorg/apache/shiro/jndi/JndiTemplate;

.field private resourceRef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/shiro/jndi/JndiLocator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/jndi/JndiLocator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/jndi/JndiLocator;->resourceRef:Z

    .line 56
    new-instance v0, Lorg/apache/shiro/jndi/JndiTemplate;

    invoke-direct {v0}, Lorg/apache/shiro/jndi/JndiTemplate;-><init>()V

    iput-object v0, p0, Lorg/apache/shiro/jndi/JndiLocator;->jndiTemplate:Lorg/apache/shiro/jndi/JndiTemplate;

    return-void
.end method


# virtual methods
.method protected convertJndiName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "jndiName"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/shiro/jndi/JndiLocator;->isResourceRef()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java:comp/env/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java:comp/env/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_0
    return-object p1
.end method

.method public getJndiEnvironment()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/shiro/jndi/JndiLocator;->jndiTemplate:Lorg/apache/shiro/jndi/JndiTemplate;

    invoke-virtual {v0}, Lorg/apache/shiro/jndi/JndiTemplate;->getEnvironment()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getJndiTemplate()Lorg/apache/shiro/jndi/JndiTemplate;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/shiro/jndi/JndiLocator;->jndiTemplate:Lorg/apache/shiro/jndi/JndiTemplate;

    return-object v0
.end method

.method public isResourceRef()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/shiro/jndi/JndiLocator;->resourceRef:Z

    return v0
.end method

.method protected lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "jndiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/jndi/JndiLocator;->lookup(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected lookup(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "jndiName"    # Ljava/lang/String;
    .param p2, "requiredType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "jndiName argument must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/jndi/JndiLocator;->convertJndiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "convertedName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/jndi/JndiLocator;->getJndiTemplate()Lorg/apache/shiro/jndi/JndiTemplate;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lorg/apache/shiro/jndi/JndiTemplate;->lookup(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 157
    .local v2, "jndiObject":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lorg/apache/shiro/jndi/JndiLocator;->log:Lorg/slf4j/Logger;

    const-string v4, "Located object with JNDI name \'{}\'"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-object v2

    .line 145
    .end local v2    # "jndiObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Ljavax/naming/NamingException;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    sget-object v3, Lorg/apache/shiro/jndi/JndiLocator;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    sget-object v3, Lorg/apache/shiro/jndi/JndiLocator;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converted JNDI name ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] not found - trying original name ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual {p0}, Lorg/apache/shiro/jndi/JndiLocator;->getJndiTemplate()Lorg/apache/shiro/jndi/JndiTemplate;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/shiro/jndi/JndiTemplate;->lookup(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "jndiObject":Ljava/lang/Object;
    goto :goto_0

    .line 154
    .end local v2    # "jndiObject":Ljava/lang/Object;
    :cond_2
    throw v1
.end method

.method public setJndiEnvironment(Ljava/util/Properties;)V
    .locals 1
    .param p1, "jndiEnvironment"    # Ljava/util/Properties;

    .prologue
    .line 83
    new-instance v0, Lorg/apache/shiro/jndi/JndiTemplate;

    invoke-direct {v0, p1}, Lorg/apache/shiro/jndi/JndiTemplate;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lorg/apache/shiro/jndi/JndiLocator;->jndiTemplate:Lorg/apache/shiro/jndi/JndiTemplate;

    .line 84
    return-void
.end method

.method public setJndiTemplate(Lorg/apache/shiro/jndi/JndiTemplate;)V
    .locals 0
    .param p1, "jndiTemplate"    # Lorg/apache/shiro/jndi/JndiTemplate;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .end local p1    # "jndiTemplate":Lorg/apache/shiro/jndi/JndiTemplate;
    :goto_0
    iput-object p1, p0, Lorg/apache/shiro/jndi/JndiLocator;->jndiTemplate:Lorg/apache/shiro/jndi/JndiTemplate;

    .line 67
    return-void

    .line 66
    .restart local p1    # "jndiTemplate":Lorg/apache/shiro/jndi/JndiTemplate;
    :cond_0
    new-instance p1, Lorg/apache/shiro/jndi/JndiTemplate;

    .end local p1    # "jndiTemplate":Lorg/apache/shiro/jndi/JndiTemplate;
    invoke-direct {p1}, Lorg/apache/shiro/jndi/JndiTemplate;-><init>()V

    goto :goto_0
.end method

.method public setResourceRef(Z)V
    .locals 0
    .param p1, "resourceRef"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lorg/apache/shiro/jndi/JndiLocator;->resourceRef:Z

    .line 101
    return-void
.end method
