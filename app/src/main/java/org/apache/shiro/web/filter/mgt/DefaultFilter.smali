.class public final enum Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
.super Ljava/lang/Enum;
.source "DefaultFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/shiro/web/filter/mgt/DefaultFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum anon:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum authc:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum authcBasic:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum logout:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum noSessionCreation:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum perms:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum port:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum rest:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum roles:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum ssl:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

.field public static final enum user:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;


# instance fields
.field private final filterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "anon"

    const-class v2, Lorg/apache/shiro/web/filter/authc/AnonymousFilter;

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->anon:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 41
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "authc"

    const-class v2, Lorg/apache/shiro/web/filter/authc/FormAuthenticationFilter;

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->authc:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 42
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "authcBasic"

    const-class v2, Lorg/apache/shiro/web/filter/authc/BasicHttpAuthenticationFilter;

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->authcBasic:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 43
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "logout"

    const-class v2, Lorg/apache/shiro/web/filter/authc/LogoutFilter;

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->logout:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 44
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "noSessionCreation"

    const-class v2, Lorg/apache/shiro/web/filter/session/NoSessionCreationFilter;

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->noSessionCreation:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 45
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "perms"

    const/4 v2, 0x5

    const-class v3, Lorg/apache/shiro/web/filter/authz/PermissionsAuthorizationFilter;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->perms:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 46
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "port"

    const/4 v2, 0x6

    const-class v3, Lorg/apache/shiro/web/filter/authz/PortFilter;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->port:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 47
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "rest"

    const/4 v2, 0x7

    const-class v3, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->rest:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 48
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "roles"

    const/16 v2, 0x8

    const-class v3, Lorg/apache/shiro/web/filter/authz/RolesAuthorizationFilter;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->roles:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 49
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "ssl"

    const/16 v2, 0x9

    const-class v3, Lorg/apache/shiro/web/filter/authz/SslFilter;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->ssl:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 50
    new-instance v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    const-string v1, "user"

    const/16 v2, 0xa

    const-class v3, Lorg/apache/shiro/web/filter/authc/UserFilter;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->user:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    .line 38
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    sget-object v1, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->anon:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->authc:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->authcBasic:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->logout:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->noSessionCreation:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->perms:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->port:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->rest:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->roles:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->ssl:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->user:Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->$VALUES:[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->filterClass:Ljava/lang/Class;

    .line 56
    return-void
.end method

.method public static createInstanceMap(Ljavax/servlet/FilterConfig;)Ljava/util/Map;
    .locals 10
    .param p0, "config"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/FilterConfig;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->values()[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    move-result-object v8

    array-length v8, v8

    invoke-direct {v4, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 68
    .local v4, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/Filter;>;"
    invoke-static {}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->values()[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 69
    .local v1, "defaultFilter":Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    invoke-virtual {v1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->newInstance()Ljavax/servlet/Filter;

    move-result-object v3

    .line 70
    .local v3, "filter":Ljavax/servlet/Filter;
    if-eqz p0, :cond_0

    .line 72
    :try_start_0
    invoke-interface {v3, p0}, Ljavax/servlet/Filter;->init(Ljavax/servlet/FilterConfig;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljavax/servlet/ServletException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to correctly init default filter instance of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "msg":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 81
    .end local v1    # "defaultFilter":Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    .end local v2    # "e":Ljavax/servlet/ServletException;
    .end local v3    # "filter":Ljavax/servlet/Filter;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    return-object v0
.end method

.method public static values()[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->$VALUES:[Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    invoke-virtual {v0}, [Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/shiro/web/filter/mgt/DefaultFilter;

    return-object v0
.end method


# virtual methods
.method public getFilterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->filterClass:Ljava/lang/Class;

    return-object v0
.end method

.method public newInstance()Ljavax/servlet/Filter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/shiro/web/filter/mgt/DefaultFilter;->filterClass:Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/shiro/util/ClassUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    return-object v0
.end method
