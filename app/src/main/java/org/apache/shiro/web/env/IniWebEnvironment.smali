.class public Lorg/apache/shiro/web/env/IniWebEnvironment;
.super Lorg/apache/shiro/web/env/ResourceBasedWebEnvironment;
.source "IniWebEnvironment.java"

# interfaces
.implements Lorg/apache/shiro/util/Initializable;
.implements Lorg/apache/shiro/util/Destroyable;


# static fields
.field public static final DEFAULT_WEB_INI_RESOURCE_PATH:Ljava/lang/String; = "/WEB-INF/shiro.ini"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private ini:Lorg/apache/shiro/config/Ini;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/shiro/web/env/IniWebEnvironment;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/shiro/web/env/ResourceBasedWebEnvironment;-><init>()V

    return-void
.end method

.method private convertPathToIni(Ljava/lang/String;Z)Lorg/apache/shiro/config/Ini;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "ini":Lorg/apache/shiro/config/Ini;
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const/4 v2, 0x0

    .line 248
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {p1}, Lorg/apache/shiro/io/ResourceUtils;->hasResourcePrefix(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 249
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getServletContextResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 263
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 264
    new-instance v1, Lorg/apache/shiro/config/Ini;

    .end local v1    # "ini":Lorg/apache/shiro/config/Ini;
    invoke-direct {v1}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 265
    .restart local v1    # "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {v1, v2}, Lorg/apache/shiro/config/Ini;->load(Ljava/io/InputStream;)V

    .line 273
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    return-object v1

    .line 252
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/apache/shiro/io/ResourceUtils;->getInputStreamForPath(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    if-eqz p2, :cond_3

    .line 255
    new-instance v3, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v3, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 257
    :cond_3
    sget-object v3, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    sget-object v3, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load optional path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    if-eqz p2, :cond_1

    .line 268
    new-instance v3, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load resource path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getServletContextResourceStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    .line 282
    .local v1, "sc":Ljavax/servlet/ServletContext;
    if-eqz v1, :cond_0

    .line 283
    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 286
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected configure()V
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lorg/apache/shiro/web/env/IniWebEnvironment;->objects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 99
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->createWebSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;

    move-result-object v1

    .line 100
    .local v1, "securityManager":Lorg/apache/shiro/web/mgt/WebSecurityManager;
    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/env/IniWebEnvironment;->setWebSecurityManager(Lorg/apache/shiro/web/mgt/WebSecurityManager;)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->createFilterChainResolver()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    move-result-object v0

    .line 103
    .local v0, "resolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->setFilterChainResolver(Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected createFilterChainResolver()Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    .locals 6

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 178
    .local v3, "resolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getIni()Lorg/apache/shiro/config/Ini;

    move-result-object v2

    .line 180
    .local v2, "ini":Lorg/apache/shiro/config/Ini;
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    const-string v5, "urls"

    invoke-virtual {v2, v5}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v4

    .line 183
    .local v4, "urls":Lorg/apache/shiro/config/Ini$Section;
    const-string v5, "filters"

    invoke-virtual {v2, v5}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 184
    .local v1, "filters":Lorg/apache/shiro/config/Ini$Section;
    invoke-static {v4}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    :cond_0
    new-instance v0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;

    iget-object v5, p0, Lorg/apache/shiro/web/env/IniWebEnvironment;->objects:Ljava/util/Map;

    invoke-direct {v0, v2, v5}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;-><init>(Lorg/apache/shiro/config/Ini;Ljava/util/Map;)V

    .line 187
    .local v0, "factory":Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;
    invoke-virtual {v0}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->getInstance()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "resolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    check-cast v3, Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    .line 191
    .end local v0    # "factory":Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;
    .end local v1    # "filters":Lorg/apache/shiro/config/Ini$Section;
    .end local v4    # "urls":Lorg/apache/shiro/config/Ini$Section;
    .restart local v3    # "resolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    :cond_1
    return-object v3
.end method

.method protected createIni(Ljava/lang/String;Z)Lorg/apache/shiro/config/Ini;
    .locals 4
    .param p1, "configLocation"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    if-eqz p1, :cond_0

    .line 163
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/web/env/IniWebEnvironment;->convertPathToIni(Ljava/lang/String;Z)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required configuration location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist or did not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contain any INI configuration."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected createWebSecurityManager()Lorg/apache/shiro/web/mgt/WebSecurityManager;
    .locals 5

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getIni()Lorg/apache/shiro/config/Ini;

    move-result-object v2

    .line 197
    .local v2, "ini":Lorg/apache/shiro/config/Ini;
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    new-instance v1, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;

    invoke-direct {v1}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;-><init>()V

    .line 203
    .local v1, "factory":Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    .line 207
    .local v3, "wsm":Lorg/apache/shiro/web/mgt/WebSecurityManager;
    invoke-virtual {v1}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;->getBeans()Ljava/util/Map;

    move-result-object v0

    .line 208
    .local v0, "beans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    iget-object v4, p0, Lorg/apache/shiro/web/env/IniWebEnvironment;->objects:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 212
    :cond_0
    return-object v3

    .line 200
    .end local v0    # "beans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1    # "factory":Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;
    .end local v3    # "wsm":Lorg/apache/shiro/web/mgt/WebSecurityManager;
    :cond_1
    new-instance v1, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;

    invoke-direct {v1, v2}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;-><init>(Lorg/apache/shiro/config/Ini;)V

    .restart local v1    # "factory":Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;
    goto :goto_0
.end method

.method protected getDefaultConfigLocations()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/WEB-INF/shiro.ini"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "classpath:shiro.ini"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDefaultIni()Lorg/apache/shiro/config/Ini;
    .locals 8

    .prologue
    .line 129
    const/4 v3, 0x0

    .line 131
    .local v3, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getDefaultConfigLocations()[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "configLocations":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 133
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 134
    .local v5, "location":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/apache/shiro/web/env/IniWebEnvironment;->createIni(Ljava/lang/String;Z)Lorg/apache/shiro/config/Ini;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    sget-object v6, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    const-string v7, "Discovered non-empty INI configuration at location \'{}\'.  Using for configuration."

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "location":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 133
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "location":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getIni()Lorg/apache/shiro/config/Ini;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/shiro/web/env/IniWebEnvironment;->ini:Lorg/apache/shiro/config/Ini;

    return-object v0
.end method

.method protected getSpecifiedIni([Ljava/lang/String;)Lorg/apache/shiro/config/Ini;
    .locals 5
    .param p1, "configLocations"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 114
    array-length v1, p1

    if-le v1, v4, :cond_0

    .line 115
    sget-object v1, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    const-string v2, "More than one Shiro .ini config location has been specified.  Only the first will be used for configuration as the {} implementation does not currently support multiple files.  This may be supported in the future however."

    const-class v3, Lorg/apache/shiro/web/env/IniWebEnvironment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/shiro/web/env/IniWebEnvironment;->createIni(Ljava/lang/String;Z)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 124
    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getIni()Lorg/apache/shiro/config/Ini;

    move-result-object v1

    .line 65
    .local v1, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getConfigLocations()[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "configLocations":[Ljava/lang/String;
    sget-object v3, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 69
    sget-object v3, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    const-string v4, "Explicit INI instance has been provided, but configuration locations have also been specified.  The {} implementation does not currently support multiple Ini config, but this may be supported in the future. Only the INI instance will be used for configuration."

    const-class v5, Lorg/apache/shiro/web/env/IniWebEnvironment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_0
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    sget-object v3, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    const-string v4, "Checking any specified config locations."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getSpecifiedIni([Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v1

    .line 80
    :cond_1
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    sget-object v3, Lorg/apache/shiro/web/env/IniWebEnvironment;->log:Lorg/slf4j/Logger;

    const-string v4, "No INI instance or config locations specified.  Trying default config locations."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->getDefaultIni()Lorg/apache/shiro/config/Ini;

    move-result-object v1

    .line 85
    :cond_2
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    const-string v2, "Shiro INI configuration was either not found or discovered to be empty/unconfigured."

    .line 87
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v3, v2}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/env/IniWebEnvironment;->setIni(Lorg/apache/shiro/config/Ini;)V

    .line 92
    invoke-virtual {p0}, Lorg/apache/shiro/web/env/IniWebEnvironment;->configure()V

    .line 93
    return-void
.end method

.method public setIni(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/apache/shiro/web/env/IniWebEnvironment;->ini:Lorg/apache/shiro/config/Ini;

    .line 308
    return-void
.end method
