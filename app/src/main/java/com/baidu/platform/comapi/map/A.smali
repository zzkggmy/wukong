.class public Lcom/baidu/platform/comapi/map/A;
.super Lcom/baidu/platform/comapi/map/J;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/J;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/map/A;->c:I

    const-string v0, "location"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/A;->b:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/platform/comapi/map/A;->d:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/platform/comapi/map/A;->g:I

    return-void
.end method
