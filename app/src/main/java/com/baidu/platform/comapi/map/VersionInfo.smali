.class public Lcom/baidu/platform/comapi/map/VersionInfo;
.super Ljava/lang/Object;


# static fields
.field public static final KIT_NAME:Ljava/lang/String; = "BaiduMapSDK_map_v"

.field public static final VERSION_DESC:Ljava/lang/String; = "baidumapapi_map"

.field public static final VERSION_INFO:Ljava/lang/String; = "4_2_0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4_2_0"

    return-object v0
.end method

.method public static getKitName()Ljava/lang/String;
    .locals 1

    const-string v0, "BaiduMapSDK_map_v4_2_0"

    return-object v0
.end method

.method public static getVersionDesc()Ljava/lang/String;
    .locals 1

    const-string v0, "baidumapapi_map"

    return-object v0
.end method
