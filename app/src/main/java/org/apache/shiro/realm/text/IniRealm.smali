.class public Lorg/apache/shiro/realm/text/IniRealm;
.super Lorg/apache/shiro/realm/text/TextConfigurationRealm;
.source "IniRealm.java"


# static fields
.field public static final ROLES_SECTION_NAME:Ljava/lang/String; = "roles"

.field public static final USERS_SECTION_NAME:Ljava/lang/String; = "users"

.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private ini:Lorg/apache/shiro/config/Ini;

.field private resourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/shiro/realm/text/IniRealm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/IniRealm;-><init>()V

    .line 93
    invoke-static {p1}, Lorg/apache/shiro/config/Ini;->fromResourcePath(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 94
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    iput-object v0, p0, Lorg/apache/shiro/realm/text/IniRealm;->ini:Lorg/apache/shiro/config/Ini;

    .line 95
    iput-object p1, p0, Lorg/apache/shiro/realm/text/IniRealm;->resourcePath:Ljava/lang/String;

    .line 96
    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/text/IniRealm;->processDefinitions(Lorg/apache/shiro/config/Ini;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/shiro/realm/text/IniRealm;-><init>()V

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/shiro/realm/text/IniRealm;->processDefinitions(Lorg/apache/shiro/config/Ini;)V

    .line 75
    return-void
.end method

.method private processDefinitions(Lorg/apache/shiro/config/Ini;)V
    .locals 6
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 172
    invoke-static {p1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    sget-object v2, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "{} defined, but the ini instance is null or empty."

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v2, "roles"

    invoke-virtual {p1, v2}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v0

    .line 178
    .local v0, "rolesSection":Lorg/apache/shiro/config/Ini$Section;
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    sget-object v2, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "Discovered the [{}] section.  Processing..."

    const-string v4, "roles"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/text/IniRealm;->processRoleDefinitions(Ljava/util/Map;)V

    .line 183
    :cond_1
    const-string v2, "users"

    invoke-virtual {p1, v2}, Lorg/apache/shiro/config/Ini;->getSection(Ljava/lang/String;)Lorg/apache/shiro/config/Ini$Section;

    move-result-object v1

    .line 184
    .local v1, "usersSection":Lorg/apache/shiro/config/Ini$Section;
    invoke-static {v1}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    sget-object v2, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "Discovered the [{}] section.  Processing..."

    const-string v4, "users"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0, v1}, Lorg/apache/shiro/realm/text/IniRealm;->processUserDefinitions(Ljava/util/Map;)V

    goto :goto_0

    .line 188
    :cond_2
    sget-object v2, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v3, "{} defined, but there is no [{}] section defined.  This realm will not be populated with any users and it is assumed that they will be populated programatically.  Users must be defined for this Realm instance to be useful."

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "users"

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getIni()Lorg/apache/shiro/config/Ini;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/shiro/realm/text/IniRealm;->ini:Lorg/apache/shiro/config/Ini;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/shiro/realm/text/IniRealm;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method protected onInit()V
    .locals 5

    .prologue
    .line 129
    invoke-super {p0}, Lorg/apache/shiro/realm/text/TextConfigurationRealm;->onInit()V

    .line 134
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/IniRealm;->getIni()Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 135
    .local v0, "ini":Lorg/apache/shiro/config/Ini;
    invoke-virtual {p0}, Lorg/apache/shiro/realm/text/IniRealm;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "resourcePath":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/shiro/realm/text/IniRealm;->users:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/shiro/realm/text/IniRealm;->roles:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 138
    :cond_0
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    sget-object v3, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Users or Roles are already populated.  Configured Ini instance will be ignored."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    sget-object v3, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Users or Roles are already populated.  resourcePath \'{}\' will be ignored."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_2
    sget-object v3, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Instance is already populated with users or roles.  No additional user/role population will be performed."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 150
    :cond_3
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    sget-object v3, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "No INI instance configuration present.  Checking resourcePath..."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 153
    invoke-static {v2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    sget-object v3, Lorg/apache/shiro/realm/text/IniRealm;->log:Lorg/slf4j/Logger;

    const-string v4, "Resource path {} defined.  Creating INI instance."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-static {v2}, Lorg/apache/shiro/config/Ini;->fromResourcePath(Ljava/lang/String;)Lorg/apache/shiro/config/Ini;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 157
    invoke-virtual {p0, v0}, Lorg/apache/shiro/realm/text/IniRealm;->setIni(Lorg/apache/shiro/config/Ini;)V

    .line 162
    :cond_4
    invoke-static {v0}, Lorg/apache/shiro/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 163
    const-string v1, "Ini instance and/or resourcePath resulted in null or empty Ini configuration.  Cannot load account data."

    .line 165
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/shiro/realm/text/IniRealm;->processDefinitions(Lorg/apache/shiro/config/Ini;)V

    goto :goto_0
.end method

.method public setIni(Lorg/apache/shiro/config/Ini;)V
    .locals 0
    .param p1, "ini"    # Lorg/apache/shiro/config/Ini;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/shiro/realm/text/IniRealm;->ini:Lorg/apache/shiro/config/Ini;

    .line 125
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/shiro/realm/text/IniRealm;->resourcePath:Ljava/lang/String;

    .line 105
    return-void
.end method
