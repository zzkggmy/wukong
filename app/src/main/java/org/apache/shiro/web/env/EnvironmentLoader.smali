.class public Lorg/apache/shiro/web/env/EnvironmentLoader;
.super Ljava/lang/Object;
.source "EnvironmentLoader.java"


# static fields
.field public static final CONFIG_LOCATIONS_PARAM:Ljava/lang/String; = "shiroConfigLocations"

.field public static final ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

.field public static final ENVIRONMENT_CLASS_PARAM:Ljava/lang/String; = "shiroEnvironmentClass"

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/shiro/web/env/EnvironmentLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ENVIRONMENT_ATTRIBUTE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    .line 108
    const-class v0, Lorg/apache/shiro/web/env/EnvironmentLoader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/env/EnvironmentLoader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;
    .locals 8
    .param p1, "sc"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/env/EnvironmentLoader;->determineWebEnvironmentClass(Ljavax/servlet/ServletContext;)Ljava/lang/Class;

    move-result-object v0

    .line 196
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lorg/apache/shiro/web/env/MutableWebEnvironment;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 197
    new-instance v5, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom WebEnvironment class ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is not of required type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lorg/apache/shiro/web/env/WebEnvironment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_0
    const-string v5, "shiroConfigLocations"

    invoke-interface {p1, v5}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "configLocations":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    .line 204
    .local v2, "configSpecified":Z
    if-eqz v2, :cond_1

    const-class v5, Lorg/apache/shiro/config/ResourceConfigurable;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebEnvironment class ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] does not implement the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/apache/shiro/config/ResourceConfigurable;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "interface.  This is required to accept any "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "configured "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "shiroConfigLocations"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "value(s)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v5, v4}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 211
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lorg/apache/shiro/util/ClassUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/shiro/web/env/MutableWebEnvironment;

    .line 213
    .local v3, "environment":Lorg/apache/shiro/web/env/MutableWebEnvironment;
    invoke-interface {v3, p1}, Lorg/apache/shiro/web/env/MutableWebEnvironment;->setServletContext(Ljavax/servlet/ServletContext;)V

    .line 215
    if-eqz v2, :cond_2

    instance-of v5, v3, Lorg/apache/shiro/config/ResourceConfigurable;

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 216
    check-cast v5, Lorg/apache/shiro/config/ResourceConfigurable;

    invoke-interface {v5, v1}, Lorg/apache/shiro/config/ResourceConfigurable;->setConfigLocations(Ljava/lang/String;)V

    .line 219
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/shiro/web/env/EnvironmentLoader;->customizeEnvironment(Lorg/apache/shiro/web/env/WebEnvironment;)V

    .line 221
    invoke-static {v3}, Lorg/apache/shiro/util/LifecycleUtils;->init(Ljava/lang/Object;)V

    .line 223
    return-object v3
.end method

.method protected customizeEnvironment(Lorg/apache/shiro/web/env/WebEnvironment;)V
    .locals 0
    .param p1, "environment"    # Lorg/apache/shiro/web/env/WebEnvironment;

    .prologue
    .line 227
    return-void
.end method

.method public destroyEnvironment(Ljavax/servlet/ServletContext;)V
    .locals 3
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 235
    const-string v1, "Cleaning up Shiro Environment"

    invoke-interface {p1, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 237
    :try_start_0
    sget-object v1, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "environment":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    sget-object v1, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljavax/servlet/ServletContext;->removeAttribute(Ljava/lang/String;)V

    .line 242
    return-void

    .line 240
    .end local v0    # "environment":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljavax/servlet/ServletContext;->removeAttribute(Ljava/lang/String;)V

    throw v1
.end method

.method protected determineWebEnvironmentClass(Ljavax/servlet/ServletContext;)Ljava/lang/Class;
    .locals 5
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletContext;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    const-string v2, "shiroEnvironmentClass"

    invoke-interface {p1, v2}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    invoke-static {v0}, Lorg/apache/shiro/util/ClassUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Lorg/apache/shiro/util/UnknownClassException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "ex":Lorg/apache/shiro/util/UnknownClassException;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load custom WebEnvironment class ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 175
    .end local v1    # "ex":Lorg/apache/shiro/util/UnknownClassException;
    :cond_0
    const-class v2, Lorg/apache/shiro/web/env/IniWebEnvironment;

    goto :goto_0
.end method

.method public initEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;
    .locals 11
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 121
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 122
    const-string v5, "There is already a Shiro environment associated with the current ServletContext.  Check if you have multiple EnvironmentLoader* definitions in your web.xml!"

    .line 124
    .local v5, "msg":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 127
    .end local v5    # "msg":Ljava/lang/String;
    :cond_0
    const-string v8, "Initializing Shiro environment"

    invoke-interface {p1, v8}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 128
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->log:Lorg/slf4j/Logger;

    const-string v9, "Starting Shiro environment initialization."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 133
    .local v6, "startTime":J
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/env/EnvironmentLoader;->createEnvironment(Ljavax/servlet/ServletContext;)Lorg/apache/shiro/web/env/WebEnvironment;

    move-result-object v2

    .line 134
    .local v2, "environment":Lorg/apache/shiro/web/env/WebEnvironment;
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {p1, v8, v2}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->log:Lorg/slf4j/Logger;

    const-string v9, "Published WebEnvironment as ServletContext attribute with name [{}]"

    sget-object v10, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 141
    .local v0, "elapsed":J
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->log:Lorg/slf4j/Logger;

    const-string v9, "Shiro environment initialized in {} ms."

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .end local v0    # "elapsed":J
    :cond_1
    return-object v2

    .line 145
    .end local v2    # "environment":Lorg/apache/shiro/web/env/WebEnvironment;
    :catch_0
    move-exception v4

    .line 146
    .local v4, "ex":Ljava/lang/RuntimeException;
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->log:Lorg/slf4j/Logger;

    const-string v9, "Shiro environment initialization failed"

    invoke-interface {v8, v9, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {p1, v8, v4}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    throw v4

    .line 149
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 150
    .local v3, "err":Ljava/lang/Error;
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->log:Lorg/slf4j/Logger;

    const-string v9, "Shiro environment initialization failed"

    invoke-interface {v8, v9, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    sget-object v8, Lorg/apache/shiro/web/env/EnvironmentLoader;->ENVIRONMENT_ATTRIBUTE_KEY:Ljava/lang/String;

    invoke-interface {p1, v8, v3}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    throw v3
.end method
