.class public abstract Lcom/umeng/socialize/weixin/view/WXCallbackActivity;
.super Landroid/app/Activity;
.source "WXCallbackActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-class v0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string v1, "create wx callback activity"

    invoke-static {v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    move-result-object v0

    .line 27
    .local v0, "api":Lcom/umeng/socialize/UMShareAPI;
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/UMShareAPI;->getHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xxxx wxhandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v2}, Lcom/umeng/socialize/PlatformConfig;->getPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/umeng/socialize/handler/UMWXHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 30
    iget-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v1}, Lcom/umeng/socialize/handler/UMWXHandler;->getWXApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 31
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->TAG:Ljava/lang/String;

    const-string v2, "### WXCallbackActivity   onNewIntent"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->setIntent(Landroid/content/Intent;)V

    .line 40
    invoke-static {p0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    move-result-object v0

    .line 41
    .local v0, "api":Lcom/umeng/socialize/UMShareAPI;
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/UMShareAPI;->getHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    .line 42
    iget-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v2}, Lcom/umeng/socialize/PlatformConfig;->getPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/umeng/socialize/handler/UMWXHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 43
    iget-object v1, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v1}, Lcom/umeng/socialize/handler/UMWXHandler;->getWXApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 44
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 1
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/UMWXHandler;->getWXEventHandler()Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->finish()V

    .line 66
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 1
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->mWxHandler:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/UMWXHandler;->getWXEventHandler()Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->finish()V

    .line 55
    return-void
.end method
