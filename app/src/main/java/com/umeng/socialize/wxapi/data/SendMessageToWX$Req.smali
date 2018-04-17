.class public Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;
.super Lcom/umeng/socialize/wxapi/data/BaseReq;
.source "SendMessageToWX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/wxapi/data/SendMessageToWX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final FAV_CONTENT_LENGTH_LIMIT:I = 0x1900000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.SendMessageToWX.Req"

.field public static final WXSceneFavorite:I = 0x2

.field public static final WXSceneSession:I = 0x0

.field public static final WXSceneTimeline:I = 0x1


# instance fields
.field public message:Lcom/umeng/socialize/wxapi/WXMediaMessage;

.field public scene:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/umeng/socialize/wxapi/data/BaseReq;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/umeng/socialize/wxapi/data/BaseReq;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->message:Lcom/umeng/socialize/wxapi/WXMediaMessage;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->message:Lcom/umeng/socialize/wxapi/WXMediaMessage;

    iget-object v0, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;->type()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->scene:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->message:Lcom/umeng/socialize/wxapi/WXMediaMessage;

    iget-object v0, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    check-cast v0, Lcom/umeng/socialize/wxapi/WXFileObject;

    const/high16 v1, 0x1900000

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/wxapi/WXFileObject;->setContentLengthLimit(I)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->message:Lcom/umeng/socialize/wxapi/WXMediaMessage;

    invoke-virtual {v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/umeng/socialize/wxapi/data/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p1}, Lcom/umeng/socialize/wxapi/WXMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/umeng/socialize/wxapi/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->message:Lcom/umeng/socialize/wxapi/WXMediaMessage;

    .line 64
    const-string v0, "_wxapi_sendmessagetowx_req_scene"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->scene:I

    .line 65
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/umeng/socialize/wxapi/data/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->message:Lcom/umeng/socialize/wxapi/WXMediaMessage;

    invoke-static {v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage$Builder;->toBundle(Lcom/umeng/socialize/wxapi/WXMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "_wxapi_sendmessagetowx_req_scene"

    iget v1, p0, Lcom/umeng/socialize/wxapi/data/SendMessageToWX$Req;->scene:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-void
.end method
