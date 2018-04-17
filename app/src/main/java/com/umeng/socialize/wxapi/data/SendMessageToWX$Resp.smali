.class public Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Resp;
.super Lcom/umeng/socialize/wxapi/data/BaseResp;
.source "SendMessageToWX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/wxapi/data/SendMessageToWX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/umeng/socialize/wxapi/data/BaseResp;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/umeng/socialize/wxapi/data/BaseResp;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/umeng/socialize/wxapi/data/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/umeng/socialize/wxapi/data/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method
