.class public final enum Lcom/baidu/mapapi/http/HttpClient$HttpStateError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/http/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpStateError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mapapi/http/HttpClient$HttpStateError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

.field public static final enum INNER_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

.field public static final enum NETWORK_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->NETWORK_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    new-instance v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    const-string v1, "INNER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->INNER_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->NETWORK_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->INNER_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->$VALUES:[Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/http/HttpClient$HttpStateError;
    .locals 1

    const-class v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mapapi/http/HttpClient$HttpStateError;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->$VALUES:[Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    return-object v0
.end method
