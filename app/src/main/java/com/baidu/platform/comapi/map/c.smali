.class public Lcom/baidu/platform/comapi/map/c;
.super Lcom/baidu/platform/comapi/map/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/d;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/platform/comapi/map/c;->c:I

    const-string v0, "poiindoormarklayer"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/c;->b:Ljava/lang/String;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/baidu/platform/comapi/map/c;->d:I

    return-void
.end method
