.class public final Lcom/umeng/socialize/wxapi/WXMediaMessage;
.super Ljava/lang/Object;
.source "WXMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;,
        Lcom/umeng/socialize/wxapi/WXMediaMessage$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_WXAPPMESSAGE:Ljava/lang/String; = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE"

.field private static final DESCRIPTION_LENGTH_LIMIT:I = 0x400

.field private static final MEDIA_TAG_NAME_LENGTH_LIMIT:I = 0x40

.field private static final MESSAGE_ACTION_LENGTH_LIMIT:I = 0x800

.field private static final MESSAGE_EXT_LENGTH_LIMIT:I = 0x800

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXMediaMessage"

.field public static final THUMB_LENGTH_LIMIT:I = 0x8000

.field private static final TITLE_LENGTH_LIMIT:I = 0x200


# instance fields
.field public description:Ljava/lang/String;

.field public mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

.field public mediaTagName:Ljava/lang/String;

.field public messageAction:Ljava/lang/String;

.field public messageExt:Ljava/lang/String;

.field public sdkVer:I

.field public thumbData:[B

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    check-cast v0, Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage;-><init>(Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;)V
    .locals 0
    .param p1, "var1"    # Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    .line 37
    return-void
.end method


# virtual methods
.method public final checkArgs()Z
    .locals 4

    .prologue
    const/16 v3, 0x800

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/umeng/socialize/wxapi/WXMediaMessage;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->thumbData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->thumbData:[B

    array-length v1, v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->thumbData:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->thumbData:[B

    array-length v1, v1

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->title:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-gt v1, v2, :cond_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-gt v1, v2, :cond_0

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_0

    .line 74
    :cond_5
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageAction:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 77
    :cond_6
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageExt:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;->type()I

    move-result v0

    goto :goto_0
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "var1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .local v0, "var2":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->thumbData:[B

    .line 48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "var2":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "var3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
