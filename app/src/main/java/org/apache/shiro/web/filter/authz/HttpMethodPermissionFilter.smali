.class public Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;
.super Lorg/apache/shiro/web/filter/authz/PermissionsAuthorizationFilter;
.source "HttpMethodPermissionFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;
    }
.end annotation


# static fields
.field private static final CREATE_ACTION:Ljava/lang/String; = "create"

.field private static final DELETE_ACTION:Ljava/lang/String; = "delete"

.field private static final READ_ACTION:Ljava/lang/String; = "read"

.field private static final UPDATE_ACTION:Ljava/lang/String; = "update"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final httpMethodActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authz/PermissionsAuthorizationFilter;-><init>()V

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->httpMethodActions:Ljava/util/Map;

    .line 127
    invoke-static {}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->values()[Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 128
    .local v3, "methodAction":Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;
    iget-object v4, p0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->httpMethodActions:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "methodAction":Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;
    :cond_0
    return-void
.end method


# virtual methods
.method protected buildPermissions(Ljavax/servlet/http/HttpServletRequest;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "configuredPerms"    # [Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0, p2, p3}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->buildPermissions([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected buildPermissions([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "configuredPerms"    # [Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, p1

    .line 240
    :cond_1
    :goto_0
    return-object v1

    .line 222
    :cond_2
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .line 225
    .local v1, "mappedPerms":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    :cond_3
    sget-object v3, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 232
    if-lez v0, :cond_4

    .line 233
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_4
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 237
    :cond_5
    sget-object v3, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "MAPPED \'{}\' action to permission(s) \'{}\'"

    invoke-interface {v3, v4, p2, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getHttpMethodAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "lc":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->getHttpMethodActions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "resolved":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "resolved":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "resolved":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method protected getHttpMethodAction(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 153
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->getHttpMethodAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getHttpMethodActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->httpMethodActions:Ljava/util/Map;

    return-object v0
.end method

.method public isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    check-cast p3, [Ljava/lang/String;

    .end local p3    # "mappedValue":Ljava/lang/Object;
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    .line 262
    .local v1, "perms":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->getHttpMethodAction(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;->buildPermissions([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "resolvedPerms":[Ljava/lang/String;
    invoke-super {p0, p1, p2, v2}, Lorg/apache/shiro/web/filter/authz/PermissionsAuthorizationFilter;->isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method
