.class public Lcom/baidu/platform/comapi/map/H;
.super Lcom/baidu/platform/comapi/map/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/d;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/platform/comapi/map/H;->c:I

    const-string v0, "mappoi"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/H;->b:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/platform/comapi/map/H;->d:I

    return-void
.end method
