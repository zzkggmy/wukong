.class public Lorg/apache/shiro/config/IniSecurityManagerFactory;
.super Lorg/apache/shiro/config/IniFactorySupport;
.source "IniSecurityManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/shiro/config/IniFactorySupport",
        "<",
        "Lorg/apache/shiro/mgt/SecurityManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INI_REALM_NAME:Ljava/lang/String; = "iniRealm"

.field public static final MAIN_SECTION_NAME:Ljava/lang/String; = "main"

.field public static final SECURITY_MANAGER_NAME:Ljava/lang/String; = "securityManager"

.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private builder:Lorg/apache/shiro/config/ReflectionBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/apache/shiro/config/IniSecurityManagerFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/config/IniSecurityManagerFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/shiro/config/IniFactorySupport;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "iniResourcePath"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1}, Lorg/apache/shiro/config/Ini;->fromResourcePath(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/shiro/config/IniSecurityManagerFactory;-><init>(Lorg/apache/shiro/config/Ini;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/shiro/config/IniFactorySupport;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->setIni(Lorg/apache/shiro/config/Ini;)V

    .line 66
    return-void
.end method

.method private addToRealms(Ljava/util/Collection;Lorg/apache/shiro/realm/RealmFactory;)V
    .locals 2
    .param p2, "factory"    # Lorg/apache/shiro/realm/RealmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;",
            "Lorg/apache/shiro/realm/RealmFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-static {p2}, Lorg/apache/shiro/util/LifecycleUtils;->init(Ljava/lang/Object;)V

    .line 166
    invoke-interface {p2}, Lorg/apache/shiro/realm/RealmFactory;->getRealms()Ljava/util/Collection;

    move-result-object v0

    .line 168
    .local v0, "factoryRealms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 171
    :cond_0
    return-void
.end method

.method private assertRealmSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 3
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "securityManager instance cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    instance-of v1, p1, Lorg/apache/shiro/mgt/RealmSecurityManager;

    if-nez v1, :cond_1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "securityManager instance is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/mgt/RealmSecurityManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance.  This is required to access or configure realms on the instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private buildInstances(Lorg/apache/shiro/config/Ini$Section;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "section"    # Lorg/apache/shiro/config/Ini$Section;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/shiro/config/Ini$Section;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Lorg/apache/shiro/config/ReflectionBuilder;

    invoke-direct {v0, p2}, Lorg/apache/shiro/config/ReflectionBuilder;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/shiro/config/IniSecurityManagerFactory;->builder:Lorg/apache/shiro/config/ReflectionBuilder;

    .line 161
    iget-object v0, p0, Lorg/apache/shiro/config/IniSecurityManagerFactory;->builder:Lorg/apache/shiro/config/ReflectionBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/shiro/config/ReflectionBuilder;->buildObjects(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private createSecurityManager(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/mgt/SecurityManager;
    .locals 2
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 97
    const-string v1, "main"

    invoke-virtual {p1, v1}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    .line 98
    .local v0, "mainSection":Lorg/apache/shiro/config/Ini$Section;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, ""

    invoke-virtual {p1, v1}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    .line 102
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createSecurityManager(Lorg/apache/shiro/config/Ini;Lorg/apache/shiro/config/Ini$Section;)Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v1

    return-object v1
.end method

.method private createSecurityManager(Lorg/apache/shiro/config/Ini;Lorg/apache/shiro/config/Ini$Section;)Lorg/apache/shiro/mgt/SecurityManager;
    .locals 6
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;
    .param p2, "mainSection"    # Lorg/apache/shiro/config/Ini$Section;

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createDefaults(Lorg/apache/shiro/config/Ini;Lorg/apache/shiro/config/Ini$Section;)Ljava/util/Map;

    move-result-object v1

    .line 124
    .local v1, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p2, v1}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->buildInstances(Lorg/apache/shiro/config/Ini$Section;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 126
    .local v2, "objects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->getSecurityManagerBean()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v4

    .line 128
    .local v4, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    invoke-virtual {p0, v4}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->isAutoApplyRealms(Lorg/apache/shiro/mgt/SecurityManager;)Z

    move-result v0

    .line 130
    .local v0, "autoApplyRealms":Z
    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, v2}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->getRealms(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v3

    .line 135
    .local v3, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-static {v3}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    invoke-virtual {p0, v3, v4}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->applyRealmsToSecurityManager(Ljava/util/Collection;Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 140
    .end local v3    # "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    :cond_0
    return-object v4
.end method

.method private getRealms(Ljava/util/Map;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "instances":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v5, "realms":Ljava/util/List;, "Ljava/util/List<Lorg/apache/shiro/realm/Realm;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 185
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Lorg/apache/shiro/realm/RealmFactory;

    if-eqz v7, :cond_1

    .line 186
    check-cast v6, Lorg/apache/shiro/realm/RealmFactory;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-direct {p0, v5, v6}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->addToRealms(Ljava/util/Collection;Lorg/apache/shiro/realm/RealmFactory;)V

    goto :goto_0

    .line 187
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v6, Lorg/apache/shiro/realm/Realm;

    if-eqz v7, :cond_0

    move-object v4, v6

    .line 188
    check-cast v4, Lorg/apache/shiro/realm/Realm;

    .line 190
    .local v4, "realm":Lorg/apache/shiro/realm/Realm;
    invoke-interface {v4}, Lorg/apache/shiro/realm/Realm;->getName()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "existingName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    :cond_2
    instance-of v7, v4, Lorg/apache/shiro/util/Nameable;

    if-eqz v7, :cond_4

    move-object v7, v4

    .line 193
    check-cast v7, Lorg/apache/shiro/util/Nameable;

    invoke-interface {v7, v3}, Lorg/apache/shiro/util/Nameable;->setName(Ljava/lang/String;)V

    .line 194
    sget-object v7, Lorg/apache/shiro/config/IniSecurityManagerFactory;->log:Lorg/slf4j/Logger;

    const-string v8, "Applied name \'{}\' to Nameable realm instance {}"

    invoke-interface {v7, v8, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    :cond_3
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_4
    sget-object v7, Lorg/apache/shiro/config/IniSecurityManagerFactory;->log:Lorg/slf4j/Logger;

    const-string v8, "Realm does not implement the {} interface.  Configured name will not be applied."

    const-class v9, Lorg/apache/shiro/util/Nameable;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 204
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "existingName":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "realm":Lorg/apache/shiro/realm/Realm;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    return-object v5
.end method

.method private getSecurityManagerBean()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/shiro/config/IniSecurityManagerFactory;->builder:Lorg/apache/shiro/config/ReflectionBuilder;

    const-string v1, "securityManager"

    const-class v2, Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {v0, v1, v2}, Lorg/apache/shiro/config/ReflectionBuilder;->getBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/mgt/SecurityManager;

    return-object v0
.end method


# virtual methods
.method protected applyRealmsToSecurityManager(Ljava/util/Collection;Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 0
    .param p2, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/realm/Realm;",
            ">;",
            "Lorg/apache/shiro/mgt/SecurityManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-direct {p0, p2}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->assertRealmSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V

    .line 220
    check-cast p2, Lorg/apache/shiro/mgt/RealmSecurityManager;

    .end local p2    # "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    invoke-virtual {p2, p1}, Lorg/apache/shiro/mgt/RealmSecurityManager;->setRealms(Ljava/util/Collection;)V

    .line 221
    return-void
.end method

.method protected bridge synthetic createDefaultInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createDefaultInstance()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultInstance()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lorg/apache/shiro/mgt/DefaultSecurityManager;

    invoke-direct {v0}, Lorg/apache/shiro/mgt/DefaultSecurityManager;-><init>()V

    return-object v0
.end method

.method protected createDefaults(Lorg/apache/shiro/config/Ini;Lorg/apache/shiro/config/Ini$Section;)Ljava/util/Map;
    .locals 4
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
    .line 144
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 146
    .local v0, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createDefaultInstance()Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v2

    .line 147
    .local v2, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    const-string v3, "securityManager"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->shouldImplicitlyCreateRealm(Lorg/apache/shiro/config/Ini;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createRealm(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/realm/Realm;

    move-result-object v1

    .line 151
    .local v1, "realm":Lorg/apache/shiro/realm/Realm;
    if-eqz v1, :cond_0

    .line 152
    const-string v3, "iniRealm"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v1    # "realm":Lorg/apache/shiro/realm/Realm;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic createInstance(Lorg/apache/shiro/config/Ini;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createInstance(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/mgt/SecurityManager;
    .locals 4
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 85
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Ini argument cannot be null or empty."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/shiro/config/IniSecurityManagerFactory;->createSecurityManager(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/mgt/SecurityManager;

    move-result-object v1

    .line 89
    .local v1, "securityManager":Lorg/apache/shiro/mgt/SecurityManager;
    if-nez v1, :cond_1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/apache/shiro/mgt/SecurityManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance cannot be null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/shiro/config/ConfigurationException;

    invoke-direct {v2, v0}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method protected createRealm(Lorg/apache/shiro/config/Ini;)Lorg/apache/shiro/realm/Realm;
    .locals 2
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 247
    new-instance v0, Lorg/apache/shiro/realm/text/IniRealm;

    invoke-direct {v0}, Lorg/apache/shiro/realm/text/IniRealm;-><init>()V

    .line 248
    .local v0, "realm":Lorg/apache/shiro/realm/text/IniRealm;
    const-string v1, "iniRealm"

    invoke-virtual {v0, v1}, Lorg/apache/shiro/realm/text/IniRealm;->setName(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Lorg/apache/shiro/realm/text/IniRealm;->setIni(Lorg/apache/shiro/config/Ini;)V

    .line 250
    return-object v0
.end method

.method public getBeans()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/shiro/config/IniSecurityManagerFactory;->builder:Lorg/apache/shiro/config/ReflectionBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/config/IniSecurityManagerFactory;->builder:Lorg/apache/shiro/config/ReflectionBuilder;

    invoke-virtual {v0}, Lorg/apache/shiro/config/ReflectionBuilder;->getObjects()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAutoApplyRealms(Lorg/apache/shiro/mgt/SecurityManager;)Z
    .locals 5
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 106
    const/4 v0, 0x1

    .line 107
    .local v0, "autoApply":Z
    instance-of v3, p1, Lorg/apache/shiro/mgt/RealmSecurityManager;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 109
    check-cast v1, Lorg/apache/shiro/mgt/RealmSecurityManager;

    .line 110
    .local v1, "realmSecurityManager":Lorg/apache/shiro/mgt/RealmSecurityManager;
    invoke-virtual {v1}, Lorg/apache/shiro/mgt/RealmSecurityManager;->getRealms()Ljava/util/Collection;

    move-result-object v2

    .line 111
    .local v2, "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    invoke-static {v2}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    sget-object v3, Lorg/apache/shiro/config/IniSecurityManagerFactory;->log:Lorg/slf4j/Logger;

    const-string v4, "Realms have been explicitly set on the SecurityManager instance - auto-setting of realms will not occur."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .line 117
    .end local v1    # "realmSecurityManager":Lorg/apache/shiro/mgt/RealmSecurityManager;
    .end local v2    # "realms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/realm/Realm;>;"
    :cond_0
    return v0
.end method

.method protected shouldImplicitlyCreateRealm(Lorg/apache/shiro/config/Ini;)Z
    .locals 1
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 234
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roles"

    invoke-virtual {p1, v0}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
