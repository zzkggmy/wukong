.class public Lcom/baidu/platform/comapi/map/r;
.super Lcom/baidu/platform/comapi/map/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/d;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/platform/comapi/map/r;->c:I

    const-string v0, "its"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/r;->b:Ljava/lang/String;

    const v0, 0x2bf20

    iput v0, p0, Lcom/baidu/platform/comapi/map/r;->d:I

    return-void
.end method
