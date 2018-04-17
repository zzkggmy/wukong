.class public Lcom/baidu/platform/comapi/map/K;
.super Lcom/baidu/platform/comapi/map/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/d;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/platform/comapi/map/K;->c:I

    const-string v0, "android_sdk"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/K;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/map/K;->d:I

    return-void
.end method
