.class public Lorg/apache/shiro/web/servlet/IniShiroFilter;
.super Lorg/apache/shiro/web/servlet/AbstractShiroFilter;
.source "IniShiroFilter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONFIG_INIT_PARAM_NAME:Ljava/lang/String; = "config"

.field public static final CONFIG_PATH_INIT_PARAM_NAME:Ljava/lang/String; = "configPath"

.field public static final DEFAULT_WEB_INI_RESOURCE_PATH:Ljava/lang/String; = "/WEB-INF/shiro.ini"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private config:Ljava/lang/String;

.field private configPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Lorg/apache/shiro/web/servlet/IniShiroFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/IniShiroFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AbstractShiroFilter;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method protected applyFilterChainResolver(Lorg/apache/shiro/config/Ini;Ljava/util/Map;)V
    .locals 5
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/config/Ini;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/shiro/config/Ini;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v4, "urls"

    invoke-virtual {p1, v4}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v3

    .line 282
    .local v3, "urls":Lorg/apache/shiro/config/Ini$Section;
    const-string v4, "filters"

    invoke-virtual {p1, v4}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 283
    .local v1, "filters":Lorg/apache/shiro/config/Ini$Section;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/shiro/config/Ini$Section;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/shiro/config/Ini$Section;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    :cond_3
    new-instance v0, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;

    invoke-direct {v0, p1, p2}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;-><init>(Lorg/apache/shiro/config/Ini;Ljava/util/Map;)V

    .line 287
    .local v0, "filterChainResolverFactory":Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getFilterConfig()Ljavax/servlet/FilterConfig;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->setFilterConfig(Ljavax/servlet/FilterConfig;)V

    .line 288
    invoke-virtual {v0}, Lorg/apache/shiro/web/config/IniFilterChainResolverFactory;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;

    .line 289
    .local v2, "resolver":Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;
    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->setFilterChainResolver(Lorg/apache/shiro/web/filter/mgt/FilterChainResolver;)V

    goto :goto_0
.end method

.method protected applyInitParams()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    const-string v2, "config"

    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getInitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "config":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->setConfig(Ljava/lang/String;)V

    .line 198
    :cond_0
    const-string v2, "configPath"

    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getInitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "configPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->setConfigPath(Ljava/lang/String;)V

    .line 202
    :cond_1
    return-void
.end method

.method protected applySecurityManager(Lorg/apache/shiro/config/Ini;)Ljava/util/Map;
    .locals 4
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/config/Ini;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    new-instance v0, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;

    invoke-direct {v0}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;-><init>()V

    .line 260
    .local v0, "factory":Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/shiro/mgt/SecurityManager;

    .line 261
    .local v2, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    instance-of v3, v2, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    if-nez v3, :cond_1

    .line 262
    const-string v1, "The configured security manager is not an instance of WebSecurityManager, so it can not be used with the Shiro servlet filter."

    .line 264
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v3, v1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    .end local v0    # "factory":Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    :cond_0
    new-instance v0, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;

    invoke-direct {v0, p1}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;-><init>(Lorg/apache/shiro/config/Ini;)V

    .restart local v0    # "factory":Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;
    goto :goto_0

    .line 267
    .restart local v2    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    :cond_1
    check-cast v2, Lorg/apache/shiro/web/mgt/WebSecurityManager;

    .end local v2    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->setSecurityManager(Lorg/apache/shiro/web/mgt/WebSecurityManager;)V

    .line 269
    invoke-virtual {v0}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;->getBeans()Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method protected configure()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->loadIniFromConfig()Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 207
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    sget-object v2, Lorg/apache/shiro/web/servlet/IniShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v3, "Null or empty configuration specified via \'config\' init-param.  Checking path-based configuration."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->loadIniFromPath()Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 213
    :cond_0
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    sget-object v2, Lorg/apache/shiro/web/servlet/IniShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v3, "Null or empty configuration specified via \'config\' or \'configPath\' filter parameters.  Trying the default /WEB-INF/shiro.ini file."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 217
    const-string v2, "/WEB-INF/shiro.ini"

    invoke-virtual {p0, v2}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getServletContextIniResource(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 221
    :cond_1
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    sget-object v2, Lorg/apache/shiro/web/servlet/IniShiroFilter;->log:Lorg/slf4j/Logger;

    const-string v3, "Null or empty configuration specified via \'config\' or \'configPath\' filter parameters.  Trying the default classpath:shiro.ini file."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lorg/apache/shiro/config/IniFactorySupport;->loadDefaultClassPathIni()Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 228
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->applySecurityManager(Lorg/apache/shiro/config/Ini;)Ljava/util/Map;

    move-result-object v1

    .line 229
    .local v1, "objects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0, v0, v1}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->applyFilterChainResolver(Lorg/apache/shiro/config/Ini;Ljava/util/Map;)V

    .line 230
    return-void
.end method

.method protected convertConfigToIni(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v0, Lorg/apache/shiro/config/Ini;

    invoke-direct {v0}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 295
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {v0, p1}, Lorg/apache/shiro/config/Ini;->load(Ljava/lang/String;)V

    .line 296
    return-object v0
.end method

.method protected convertPathToIni(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v0, Lorg/apache/shiro/config/Ini;

    invoke-direct {v0}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 341
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-static {p1}, Lorg/apache/shiro/io/ResourceUtils;->hasResourcePrefix(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getServletContextIniResource(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 343
    if-nez v0, :cond_1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no servlet context resource corresponding to configPath \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'  If "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "the resource is located elsewhere (not immediately resolveable in the servlet context), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "specify an appropriate classpath:, url:, or file: resource prefix accordingly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/shiro/config/Ini;->loadFromPath(Ljava/lang/String;)V

    .line 354
    :cond_1
    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/IniShiroFilter;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/IniShiroFilter;->configPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getServletContextIniResource(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;
    .locals 6
    .param p1, "servletContextPath"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v3

    invoke-interface {v3, v2}, Ljavax/servlet/ServletContext;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 312
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 313
    new-instance v0, Lorg/apache/shiro/config/Ini;

    invoke-direct {v0}, Lorg/apache/shiro/config/Ini;-><init>()V

    .line 314
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {v0, v1}, Lorg/apache/shiro/config/Ini;->load(Ljava/io/InputStream;)V

    .line 315
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    sget-object v3, Lorg/apache/shiro/web/servlet/IniShiroFilter;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServletContext INI resource \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' exists, but it did not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "any data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 322
    .end local v0    # "ini":Lorg/apache/shiro/config/Ini;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->applyInitParams()V

    .line 190
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->configure()V

    .line 191
    return-void
.end method

.method protected loadIniFromConfig()Lorg/apache/shiro/config/Ini;
    .locals 2

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getConfig()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "config":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->convertConfigToIni(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v1

    .line 238
    :cond_0
    return-object v1
.end method

.method protected loadIniFromPath()Lorg/apache/shiro/config/Ini;
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0, v1}, Lorg/apache/shiro/web/servlet/IniShiroFilter;->convertPathToIni(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 247
    :cond_0
    return-object v0
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/IniShiroFilter;->config:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setConfigPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "configPath"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/IniShiroFilter;->configPath:Ljava/lang/String;

    .line 186
    return-void
.end method
