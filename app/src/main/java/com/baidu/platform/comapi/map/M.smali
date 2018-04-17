.class public Lcom/baidu/platform/comapi/map/M;
.super Lcom/baidu/platform/comapi/map/J;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/J;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/platform/comapi/map/M;->c:I

    const-string v0, "sdktile"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/M;->b:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/baidu/platform/comapi/map/M;->d:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/baidu/platform/comapi/map/M;->g:I

    return-void
.end method
