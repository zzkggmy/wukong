.class Lcom/umeng/socialize/handler/UMWXHandler$5;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$5;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 488
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 2
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v0

    .line 474
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 484
    .end local p1    # "resp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    :goto_0
    return-void

    .line 476
    .restart local p1    # "resp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    :pswitch_0
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler$5;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .end local p1    # "resp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    invoke-virtual {v1, p1}, Lcom/umeng/socialize/handler/UMWXHandler;->onAuthCallback(Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;)V

    goto :goto_0

    .line 479
    .restart local p1    # "resp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    :pswitch_1
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler$5;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;

    .end local p1    # "resp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    invoke-virtual {v1, p1}, Lcom/umeng/socialize/handler/UMWXHandler;->onShareCallback(Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;)V

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
