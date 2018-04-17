.class public Lorg/apache/shiro/realm/text/PropertiesRealm;
.super Lorg/apache/shiro/realm/text/TextConfigurationRealm;
.source "PropertiesRealm.java"

# interfaces
.implements Lorg/apache/shiro/util/Destroyable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_RELOAD_INTERVAL_SECONDS:I = 0xa

.field private static final DEFAULT_RESOURCE_PATH:Ljava/lang/String; = "classpath:shiro-users.properties"

.field private static final ROLENAME_PREFIX:Ljava/lang/String; = "role."

.field private static final USERNAME_PREFIX:Ljava/lang/String; = "user."

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected fileLastModified:J

.field protected reloadIntervalSeconds:I

.field protected resourcePath:Ljava/lang/String;

.field protected scheduler:Ljava/util/concurrent/ExecutorService;

.field protected useXmlFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lorg/apache/shiro/realm/text/PropertiesRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->useXmlFormat:Z

    .line 103
    const-string v0, "classpath:shiro-users.properties"

    iput-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    .line 105
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->reloadIntervalSeconds:I

    .line 109
    return-void
.end method

.method private createRealmEntitiesFromProperties(Ljava/util/Properties;)V
    .locals 11
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v5, "userDefs":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v3, "roleDefs":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 307
    .local v2, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 309
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "value":Ljava/lang/String;
    sget-object v8, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 312
    sget-object v8, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing properties line - key: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], value: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->isUsername(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->getUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "username":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 318
    .end local v6    # "username":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->isRolename(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 319
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->getRolename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "rolename":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 322
    .end local v4    # "rolename":Ljava/lang/String;
    :cond_2
    const-string v1, "Encountered unexpected key/value pair.  All keys must be prefixed with either \'user.\' or \'role.\'."

    .line 324
    .local v1, "msg":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 328
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/shiro/realm/text/PropertiesRealm;->setUserDefinitions(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/shiro/realm/text/PropertiesRealm;->setRoleDefinitions(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->processDefinitions()V

    .line 331
    return-void
.end method

.method private isFileModified()Z
    .locals 7

    .prologue
    .line 269
    iget-object v4, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "fileNameWithoutPrefix":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "propertyFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 272
    .local v0, "currentLastModified":J
    iget-wide v4, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->fileLastModified:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 273
    iput-wide v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->fileLastModified:J

    .line 274
    const/4 v4, 0x1

    .line 276
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSourceModified()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->isFileModified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 6
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 221
    .local v2, "props":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 224
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v3, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    sget-object v3, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening input stream for path ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-static {p1}, Lorg/apache/shiro/io/ResourceUtils;->getInputStreamForPath(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 229
    iget-boolean v3, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->useXmlFormat:Z

    if-eqz v3, :cond_2

    .line 231
    sget-object v3, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    sget-object v3, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading properties from path ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in XML format..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 235
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    invoke-static {v1}, Lorg/apache/shiro/io/ResourceUtils;->close(Ljava/io/InputStream;)V

    .line 252
    return-object v2

    .line 238
    :cond_2
    :try_start_1
    sget-object v3, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    sget-object v3, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading properties from path ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 242
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lorg/apache/shiro/ShiroException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading properties path ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Initializing of the realm from this file failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/shiro/ShiroException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lorg/apache/shiro/io/ResourceUtils;->close(Ljava/io/InputStream;)V

    throw v3
.end method

.method private loadProperties()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The resourcePath property is not set.  It must be set prior to this realm being initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    sget-object v1, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    sget-object v1, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading user security information from file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 214
    :cond_2
    iget-object v1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/shiro/realm/text/PropertiesRealm;->loadProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 215
    .local v0, "properties":Ljava/util/Properties;
    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->createRealmEntitiesFromProperties(Ljava/util/Properties;)V

    .line 216
    return-void
.end method

.method private reloadPropertiesIfNecessary()V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->isSourceModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->restart()V

    .line 260
    :cond_0
    return-void
.end method

.method private restart()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The resourcePath property is not set.  It must be set prior to this realm being initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    sget-object v0, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading user security information from file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 292
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->init()V

    .line 297
    return-void

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected afterRoleCacheSet()V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->loadProperties()V

    .line 165
    iget-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->startReloadThread()V

    .line 168
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    iput-object v3, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    .line 185
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    sget-object v1, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    const-string v2, "Unable to cleanly shutdown Scheduler.  Ignoring (shutting down)..."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    iput-object v3, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    throw v1
.end method

.method protected getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRolename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string v0, "role."

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string v0, "user."

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isRolename(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 342
    if-eqz p1, :cond_0

    const-string v0, "role."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUsername(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    const-string v0, "user."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->onInit()V

    .line 158
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->afterRoleCacheSet()V

    .line 159
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/PropertiesRealm;->reloadPropertiesIfNecessary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    sget-object v1, Lorg/apache/shiro/realm/text/PropertiesRealm;->log:Lorg/slf4j/Logger;

    const-string v2, "Error while reloading property files for realm."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setReloadIntervalSeconds(I)V
    .locals 0
    .param p1, "reloadIntervalSeconds"    # I

    .prologue
    .line 147
    iput p1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->reloadIntervalSeconds:I

    .line 148
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->resourcePath:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setUseXmlFormat(Z)V
    .locals 0
    .param p1, "useXmlFormat"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->useXmlFormat:Z

    .line 123
    return-void
.end method

.method protected startReloadThread()V
    .locals 7

    .prologue
    .line 188
    iget v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->reloadIntervalSeconds:I

    if-lez v0, :cond_0

    .line 189
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    .line 190
    iget-object v0, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->scheduler:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget v1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->reloadIntervalSeconds:I

    int-to-long v2, v1

    iget v1, p0, Lorg/apache/shiro/realm/text/PropertiesRealm;->reloadIntervalSeconds:I

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 192
    :cond_0
    return-void
.end method
