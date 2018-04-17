.class public abstract Lcom/umeng/socialize/wxapi/data/BaseResp;
.super Ljava/lang/Object;
.source "BaseResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/wxapi/data/BaseResp$ErrCode;
    }
.end annotation


# instance fields
.field public errCode:I

.field public errStr:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const-string v0, "_wxapi_baseresp_errcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->errCode:I

    .line 29
    const-string v0, "_wxapi_baseresp_errstr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->errStr:Ljava/lang/String;

    .line 30
    const-string v0, "_wxapi_baseresp_transaction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->transaction:Ljava/lang/String;

    .line 31
    const-string v0, "_wxapi_baseresp_openId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->openId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const-string v0, "_wxapi_command_type"

    invoke-virtual {p0}, Lcom/umeng/socialize/wxapi/data/BaseResp;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    const-string v0, "_wxapi_baseresp_errcode"

    iget v1, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->errCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    const-string v0, "_wxapi_baseresp_errstr"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "_wxapi_baseresp_transaction"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "_wxapi_baseresp_openId"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/BaseResp;->openId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
