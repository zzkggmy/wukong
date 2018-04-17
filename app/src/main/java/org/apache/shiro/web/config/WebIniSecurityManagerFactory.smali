.class public Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;
.super Lorg/apache/shiro/config/IniSecurityManagerFactory;
.source "WebIniSecurityManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/shiro/config/IniSecurityManagerFactory;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/shiro/config/IniSecurityManagerFactory;-><init>(Lorg/apache/shiro/config/Ini;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected bridge synthetic createDefaultInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/apache/shiro/web/config/WebIniSecurityManagerFactory;->createDefaultInstance()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultInstance()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;

    invoke-direct {v0}, Lorg/apache/shiro/web/mgt/DefaultWebSecurityManager;-><init>()V

    return-object v0
.end method

.method protected createDefaults(Lorg/apache/shiro/config/Ini;Lorg/apache/shiro/config/Ini$Section;)Ljava/util/Map;
    .locals 3
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;
    .param p2, "mainSection"    # Lorg/apache/shiro/config/Ini$Section;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/config/Ini;",
            "Lorg/apache/shiro/config/Ini$Section;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createDefaults(Lorg/apache/shiro/config/Ini;Lorg/apache/shiro/config/Ini$Section;)Ljava/util/Map;

    move-result-object v1

    .line 73
    .local v1, "defaults":Ljava/util/Map;
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->createInstanceMap(Ljavax/servlet/FilterConfig;)Ljava/util/Map;

    move-result-object v0

    .line 74
    .local v0, "defaultFilters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    return-object v1
.end method
