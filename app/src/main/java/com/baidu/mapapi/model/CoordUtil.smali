.class public Lcom/baidu/mapapi/model/CoordUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Coordinate_encryptEx(FFLjava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/baidu/platform/comapi/util/b;->a(FFLjava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static decodeLocationList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static decodeLocationList2D(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/b;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static decodeNodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/b;->b(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static getDistance(Lcom/baidu/mapapi/model/inner/Point;Lcom/baidu/mapapi/model/inner/Point;)D
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/platform/comjni/tools/a;->a(Lcom/baidu/mapapi/model/inner/Point;Lcom/baidu/mapapi/model/inner/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/baidu/platform/comapi/util/b;->a(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result v0

    return v0
.end method

.method public static ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;
    .locals 1

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/b;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;
    .locals 1

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/b;->b(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    return-object v0
.end method

.method public static mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/b;->a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    return-object v0
.end method
