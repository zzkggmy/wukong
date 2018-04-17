.class public interface abstract Lcom/umeng/socialize/wxapi/IWXAPI;
.super Ljava/lang/Object;
.source "IWXAPI.java"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract getWXAppSupportAPI()I
.end method

.method public abstract handleIntent(Landroid/content/Intent;Lcom/umeng/socialize/wxapi/IWXAPIEventHandler;)Z
.end method

.method public abstract isWXAppInstalled()Z
.end method

.method public abstract isWXAppSupportAPI()Z
.end method

.method public abstract openWXApp()Z
.end method

.method public abstract registerApp(Ljava/lang/String;)Z
.end method

.method public abstract sendReq(Lcom/umeng/socialize/wxapi/data/BaseReq;)Z
.end method

.method public abstract sendResp(Lcom/umeng/socialize/wxapi/data/BaseResp;)Z
.end method

.method public abstract unregisterApp()V
.end method
