.class public Lcom/baidu/platform/comapi/map/f;
.super Lcom/baidu/platform/comapi/map/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/d;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/platform/comapi/map/f;->c:I

    const-string v0, "map"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f;->b:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/baidu/platform/comapi/map/f;->d:I

    return-void
.end method
