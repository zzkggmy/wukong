.class public Lcom/baidu/mapapi/map/HeatMap$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/HeatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/baidu/mapapi/map/Gradient;

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:I

    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->c:Lcom/baidu/mapapi/map/Gradient;

    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:D

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/HeatMap$Builder;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->a:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/HeatMap$Builder;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/Gradient;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->c:Lcom/baidu/mapapi/map/Gradient;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/HeatMap$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:D

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/baidu/mapapi/map/HeatMap;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->a:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No input data: you must use either .data or .weightedData before building"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/HeatMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapapi/map/HeatMap;-><init>(Lcom/baidu/mapapi/map/HeatMap$Builder;Lcom/baidu/mapapi/map/g;)V

    return-object v0
.end method

.method public data(Ljava/util/Collection;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/HeatMap$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input points can not contain null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/HeatMap$Builder;->weightedData(Ljava/util/Collection;)Lcom/baidu/mapapi/map/HeatMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradient(Lcom/baidu/mapapi/map/Gradient;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gradient can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->c:Lcom/baidu/mapapi/map/Gradient;

    return-object p0
.end method

.method public opacity(D)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 5

    iput-wide p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:D

    iget-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Opacity must be in range [0, 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p0
.end method

.method public radius(I)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 2

    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:I

    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Radius not within bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p0
.end method

.method public weightedData(Ljava/util/Collection;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/HeatMap$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input points can not contain null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/WeightedLatLng;

    iget-object v3, v0, Lcom/baidu/mapapi/map/WeightedLatLng;->latLng:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    const-wide v6, 0x3fd8053e2d6238daL    # 0.37532

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_4

    iget-wide v4, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    const-wide v6, 0x404b47ffd60e94eeL    # 54.562495

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_4

    iget-wide v4, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    const-wide v6, 0x405220884c6a3bdeL    # 72.508319

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_4

    iget-wide v4, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    const-wide v6, 0x4060fe267c6b8b69L    # 135.942198

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->a:Ljava/util/Collection;

    return-object p0
.end method
