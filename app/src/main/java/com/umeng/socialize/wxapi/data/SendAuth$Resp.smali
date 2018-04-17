.class public Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;
.super Lcom/umeng/socialize/wxapi/data/BaseResp;
.source "SendAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/wxapi/data/SendAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# static fields
.field private static final LENGTH_LIMIT:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.SendAuth.Resp"


# instance fields
.field public code:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/umeng/socialize/wxapi/data/BaseResp;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/umeng/socialize/wxapi/data/BaseResp;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->state:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    .line 55
    const-string v0, "MicroMsg.SDK.SendAuth.Resp"

    const-string v1, "checkArgs fail, state is invalid"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/umeng/socialize/wxapi/data/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "_wxapi_sendauth_resp_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->code:Ljava/lang/String;

    .line 38
    const-string v0, "_wxapi_sendauth_resp_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->state:Ljava/lang/String;

    .line 39
    const-string v0, "_wxapi_sendauth_resp_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->url:Ljava/lang/String;

    .line 40
    const-string v0, "_wxapi_sendauth_resp_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->lang:Ljava/lang/String;

    .line 41
    const-string v0, "_wxapi_sendauth_resp_country"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->country:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/umeng/socialize/wxapi/data/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "_wxapi_sendauth_resp_token"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "_wxapi_sendauth_resp_state"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "_wxapi_sendauth_resp_url"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "_wxapi_sendauth_resp_lang"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "_wxapi_sendauth_resp_country"

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/data/SendAuth$Resp;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
