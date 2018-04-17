.class final enum Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;
.super Ljava/lang/Enum;
.source "HttpMethodPermissionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HttpMethodAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum DELETE:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum GET:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum HEAD:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum MKCOL:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum OPTIONS:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum POST:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum PUT:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

.field public static final enum TRACE:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "DELETE"

    const-string v2, "delete"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->DELETE:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 103
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "GET"

    const-string v2, "read"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->GET:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 104
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "HEAD"

    const-string v2, "read"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->HEAD:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 105
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "MKCOL"

    const-string v2, "create"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->MKCOL:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 106
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "OPTIONS"

    const-string v2, "read"

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->OPTIONS:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 107
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "POST"

    const/4 v2, 0x5

    const-string v3, "create"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->POST:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 108
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "PUT"

    const/4 v2, 0x6

    const-string v3, "update"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->PUT:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 109
    new-instance v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    const-string v1, "TRACE"

    const/4 v2, 0x7

    const-string v3, "read"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->TRACE:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    sget-object v1, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->DELETE:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->GET:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->HEAD:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->MKCOL:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->OPTIONS:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->POST:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->PUT:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->TRACE:Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->$VALUES:[Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-object p3, p0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->action:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    return-object v0
.end method

.method public static values()[Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->$VALUES:[Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    invoke-virtual {v0}, [Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/shiro/web/filter/authz/HttpMethodPermissionFilter$HttpMethodAction;->action:Ljava/lang/String;

    return-object v0
.end method
