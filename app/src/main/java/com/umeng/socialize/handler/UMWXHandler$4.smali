.class Lcom/umeng/socialize/handler/UMWXHandler$4;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMWXHandler;->uploadAuthData(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;

.field final synthetic val$bundle:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->val$bundle:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 321
    new-instance v0, Lcom/umeng/socialize/net/PlatformTokenUploadReq;

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v2}, Lcom/umeng/socialize/handler/UMWXHandler;->access$400(Lcom/umeng/socialize/handler/UMWXHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "req":Lcom/umeng/socialize/net/PlatformTokenUploadReq;
    const-string v2, "to"

    const-string v3, "wxsession"

    invoke-virtual {v0, v2, v3}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v3, "usid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->val$bundle:Ljava/util/Map;

    const-string v4, "uid"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v3, "access_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->val$bundle:Ljava/util/Map;

    const-string v4, "access_token"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "refresh_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->val$bundle:Ljava/util/Map;

    const-string v4, "refresh_token"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "expires_in"

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->val$bundle:Ljava/util/Map;

    const-string v4, "expires_in"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "app_id"

    iget-object v3, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v3}, Lcom/umeng/socialize/handler/UMWXHandler;->access$500(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/PlatformConfig$Weixin;

    move-result-object v3

    iget-object v3, v3, Lcom/umeng/socialize/PlatformConfig$Weixin;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v2, "app_secret"

    iget-object v3, p0, Lcom/umeng/socialize/handler/UMWXHandler$4;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-static {v3}, Lcom/umeng/socialize/handler/UMWXHandler;->access$500(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/PlatformConfig$Weixin;

    move-result-object v3

    iget-object v3, v3, Lcom/umeng/socialize/PlatformConfig$Weixin;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/umeng/socialize/net/PlatformTokenUploadReq;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {v0}, Lcom/umeng/socialize/net/RestAPI;->uploadPlatformToken(Lcom/umeng/socialize/net/PlatformTokenUploadReq;)Lcom/umeng/socialize/net/PlatformTokenUploadResponse;

    move-result-object v1

    .line 330
    .local v1, "resp":Lcom/umeng/socialize/net/PlatformTokenUploadResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload token resp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 331
    return-void
.end method
