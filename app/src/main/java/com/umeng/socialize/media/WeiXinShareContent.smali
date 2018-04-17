.class public Lcom/umeng/socialize/media/WeiXinShareContent;
.super Ljava/lang/Object;
.source "WeiXinShareContent.java"


# static fields
.field public static final TYPE_EMOJI:Ljava/lang/String; = "emoji"

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_MUSIC:Ljava/lang/String; = "music"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_TEXT_IMAGE:Ljava/lang/String; = "text_image"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field private final DEFAULT_TITLE:Ljava/lang/String;

.field private final DESCRIPTION_LIMIT:I

.field private final SHOW_COMPRESS_TOAST:I

.field private final SHOW_TITLE_TOAST:I

.field private final THUMB_LIMIT:I

.field private final THUMB_SIZE:I

.field private final TITLE_LIMIT:I

.field private mShareContent:Lcom/umeng/socialize/ShareContent;

.field public mShareType:Ljava/lang/String;

.field private mTargetUrl:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWxMediaMessage:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

.field private uMediaObject:Lcom/umeng/socialize/media/UMediaObject;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 1
    .param p1, "shareContent"    # Lcom/umeng/socialize/ShareContent;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "\u5206\u4eab\u5230\u5fae\u4fe1"

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->DEFAULT_TITLE:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mWxMediaMessage:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 46
    const/16 v0, 0x96

    iput v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->THUMB_SIZE:I

    .line 47
    const v0, 0x8000

    iput v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->THUMB_LIMIT:I

    .line 48
    const/16 v0, 0x200

    iput v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->TITLE_LIMIT:I

    .line 49
    const/16 v0, 0x400

    iput v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->DESCRIPTION_LIMIT:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->SHOW_COMPRESS_TOAST:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->SHOW_TITLE_TOAST:I

    .line 65
    iput-object p1, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    .line 66
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTitle:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mText:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    .line 69
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mTargetUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTargetUrl:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private buildEmojiParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 8

    .prologue
    const/16 v7, 0x96

    .line 215
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v1, v6, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v1, Lcom/umeng/socialize/media/UMEmoji;

    .line 216
    .local v1, "emoji":Lcom/umeng/socialize/media/UMEmoji;
    iget-object v2, v1, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    .line 217
    .local v2, "image":Lcom/umeng/socialize/media/UMImage;
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;

    invoke-direct {v5}, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;-><init>()V

    .line 220
    .local v5, "wxEmojiObject":Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;
    iget-object v6, v1, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/socialize/utils/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 224
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7, v7}, Lcom/umeng/socialize/utils/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 228
    :cond_0
    iput-object v4, v5, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 229
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 230
    .local v3, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v5, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 232
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 233
    iget-object v6, v1, Lcom/umeng/socialize/media/UMEmoji;->mThumb:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 242
    :goto_0
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTitle:Ljava/lang/String;

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 243
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v6, v6, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 244
    return-object v3

    .line 234
    :cond_1
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->getThumb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 235
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->getThumb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7, v7}, Lcom/umeng/socialize/utils/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 240
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, v1, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    goto :goto_0
.end method

.method private buildImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 6

    .prologue
    .line 309
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v0, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 311
    .local v0, "img":Lcom/umeng/socialize/media/UMImage;
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>()V

    .line 312
    .local v1, "imgObj":Lcom/tencent/mm/sdk/modelmsg/WXImageObject;
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    .line 314
    .local v2, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;

    .line 321
    :cond_0
    :goto_0
    const-string v3, "wechat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "we char data size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageData:[B

    .line 323
    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 324
    return-object v2

    .line 319
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asUrlImage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 8

    .prologue
    const/16 v7, 0x96

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "localPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 384
    .local v5, "urlPath":Ljava/lang/String;
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v6, v6, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v6, v6, Lcom/umeng/socialize/media/UMImage;

    if-eqz v6, :cond_3

    .line 385
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v4, v6, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v4, Lcom/umeng/socialize/media/UMImage;

    .line 386
    .local v4, "umImage":Lcom/umeng/socialize/media/UMImage;
    invoke-virtual {v4}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 387
    invoke-virtual {v4}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .end local v4    # "umImage":Lcom/umeng/socialize/media/UMImage;
    :cond_0
    :goto_0
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 413
    .local v2, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 414
    invoke-static {v5, v7, v7}, Lcom/umeng/socialize/utils/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 424
    :cond_1
    :goto_1
    return-object v2

    .line 389
    .end local v2    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .restart local v4    # "umImage":Lcom/umeng/socialize/media/UMImage;
    :cond_2
    invoke-virtual {v4}, Lcom/umeng/socialize/media/UMImage;->asUrlImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 390
    .end local v4    # "umImage":Lcom/umeng/socialize/media/UMImage;
    :cond_3
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v6, v6, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v6, v6, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v6, :cond_5

    .line 391
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v6, v6, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v6, Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    .line 392
    .local v0, "icon":Lcom/umeng/socialize/media/UMImage;
    if-eqz v0, :cond_0

    .line 394
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 395
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 398
    :cond_4
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asUrlImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 401
    .end local v0    # "icon":Lcom/umeng/socialize/media/UMImage;
    :cond_5
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v6, v6, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v6, v6, Lcom/umeng/socialize/media/UMusic;

    if-eqz v6, :cond_0

    .line 402
    iget-object v6, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v6, v6, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v6, Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    .line 403
    .restart local v0    # "icon":Lcom/umeng/socialize/media/UMImage;
    if-eqz v0, :cond_0

    .line 405
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 406
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 408
    :cond_6
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asUrlImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 416
    .end local v0    # "icon":Lcom/umeng/socialize/media/UMImage;
    .restart local v2    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 417
    invoke-direct {p0, v1}, Lcom/umeng/socialize/media/WeiXinShareContent;->getThumbFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 418
    .local v3, "thumb":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 420
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 421
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method private buildMusicParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 253
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v2, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v2, Lcom/umeng/socialize/media/UMusic;

    .line 255
    .local v2, "umusic":Lcom/umeng/socialize/media/UMusic;
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;-><init>()V

    .line 256
    .local v1, "music":Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMusic;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mTargetUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 266
    :goto_0
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    .line 269
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 270
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const-string v3, "\u5206\u4eab\u97f3\u9891"

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 281
    :goto_1
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 282
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 284
    return-object v0

    .line 260
    .end local v0    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    :cond_0
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMusic;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    goto :goto_0

    .line 276
    .restart local v0    # "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    :cond_2
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method private buildTextImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 360
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v0, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 362
    .local v0, "img":Lcom/umeng/socialize/media/UMImage;
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTargetUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    const-string v3, "http://www.umeng.com/social"

    iput-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTargetUrl:Ljava/lang/String;

    .line 365
    :cond_0
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 366
    .local v2, "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTargetUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 367
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    .line 368
    .local v1, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTitle:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 369
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 370
    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 371
    return-object v1
.end method

.method private buildTextParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 3

    .prologue
    .line 293
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;-><init>()V

    .line 294
    .local v1, "textObj":Lcom/tencent/mm/sdk/modelmsg/WXTextObject;
    iget-object v2, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v2, v2, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 296
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 297
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 298
    iget-object v2, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v2, v2, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 299
    iget-object v2, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 300
    return-object v0
.end method

.method private buildVideoParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 333
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v1, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v1, Lcom/umeng/socialize/media/UMVideo;

    .line 335
    .local v1, "uvideo":Lcom/umeng/socialize/media/UMVideo;
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;-><init>()V

    .line 336
    .local v2, "video":Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    .line 339
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 341
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    const-string v3, "\u5206\u4eab\u89c6\u9891"

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 349
    :goto_0
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 351
    return-object v0

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private compressBitmap([BI)[B
    .locals 12
    .param p1, "datas"    # [B
    .param p2, "byteCount"    # I

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "isFinish":Z
    if-eqz p1, :cond_4

    array-length v8, p1

    if-lt v8, p2, :cond_4

    .line 170
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 174
    .local v7, "tmpBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    .line 176
    .local v6, "times":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 178
    .local v4, "percentage":D
    :goto_0
    if-nez v1, :cond_1

    const/16 v8, 0xa

    if-gt v6, v8, :cond_1

    .line 179
    const-wide v8, 0x3fe999999999999aL    # 0.8

    int-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 180
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v4

    double-to-int v3, v8

    .line 181
    .local v3, "quality":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    .line 182
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v8, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeiXin Thumb Size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 184
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v9, v9

    div-int/lit16 v9, v9, 0x400

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    invoke-static {v8}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    .line 185
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-ge v8, p2, :cond_0

    .line 186
    const/4 v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "quality":I
    :cond_1
    if-eqz v2, :cond_4

    .line 194
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 195
    .local v0, "compress_datas":[B
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 196
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    :cond_2
    if-eqz v0, :cond_3

    array-length v8, v0

    if-gtz v8, :cond_3

    .line 200
    const-string v8, "### \u60a8\u7684\u539f\u59cb\u56fe\u7247\u592a\u5927,\u5bfc\u81f4\u7f29\u7565\u56fe\u538b\u7f29\u8fc7\u540e\u8fd8\u5927\u4e8e32KB,\u8bf7\u5c06\u5206\u4eab\u5230\u5fae\u4fe1\u7684\u56fe\u7247\u8fdb\u884c\u9002\u5f53\u7f29\u5c0f."

    invoke-static {v8}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 206
    .end local v0    # "compress_datas":[B
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "percentage":D
    .end local v6    # "times":I
    .end local v7    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    goto :goto_1
.end method

.method private getThumbFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x96

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/umeng/socialize/utils/BitmapUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const v1, 0x8000

    invoke-static {p1, v1}, Lcom/umeng/socialize/utils/BitmapUtils;->isNeedScale(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-static {p1, v2, v2}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    :cond_0
    :goto_0
    return-object v0

    .line 441
    :cond_1
    invoke-static {p1}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getWxMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 9

    .prologue
    const v8, 0x8000

    const/16 v7, 0x400

    const/16 v6, 0x200

    const/4 v5, 0x0

    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, "wxMessage":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    const-string v3, "--->"

    const-string v4, "text share.."

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildTextParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    .line 124
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 125
    iget-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 126
    .local v1, "thumbData":[B
    if-eqz v1, :cond_1

    array-length v3, v1

    if-le v3, v8, :cond_1

    .line 127
    invoke-direct {p0, v1, v8}, Lcom/umeng/socialize/media/WeiXinShareContent;->compressBitmap([BI)[B

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u538b\u7f29\u4e4b\u540e\u7f29\u7565\u56fe\u5927\u5c0f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-lt v3, v6, :cond_8

    .line 134
    iget-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 135
    .local v0, "datas":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 140
    .end local v0    # "datas":[B
    :goto_1
    iget-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-lt v3, v7, :cond_2

    .line 141
    iget-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 142
    .restart local v0    # "datas":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, v7}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 147
    .end local v0    # "datas":[B
    .end local v1    # "thumbData":[B
    :cond_2
    return-object v2

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v3, v3, Lcom/umeng/socialize/media/UMEmoji;

    if-eqz v3, :cond_4

    .line 108
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildEmojiParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    goto :goto_0

    .line 109
    :cond_4
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v3, v3, Lcom/umeng/socialize/media/UMImage;

    if-eqz v3, :cond_5

    .line 111
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    goto/16 :goto_0

    .line 112
    :cond_5
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v3, v3, Lcom/umeng/socialize/media/UMusic;

    if-eqz v3, :cond_6

    .line 114
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildMusicParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    goto/16 :goto_0

    .line 115
    :cond_6
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v3, v3, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v3, :cond_7

    .line 117
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildVideoParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    goto/16 :goto_0

    .line 118
    :cond_7
    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareContent:Lcom/umeng/socialize/ShareContent;

    iget-object v3, v3, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v3, v3, Lcom/umeng/socialize/media/UMImage;

    if-eqz v3, :cond_0

    .line 120
    const-string v3, "\u56fe\u6587\u5206\u4eab.."

    invoke-static {v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildTextImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    goto/16 :goto_0

    .line 137
    .restart local v1    # "thumbData":[B
    :cond_8
    const-string v3, "\u5206\u4eab\u5230\u5fae\u4fe1"

    iput-object v3, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mTitle:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public parseMediaType()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v0, :cond_1

    .line 78
    const-string v0, "text"

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMEmoji;

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "emoji"

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_3

    .line 85
    const-string v0, "image"

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_4

    .line 88
    const-string v0, "music"

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_5

    .line 91
    const-string v0, "video"

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->uMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "text_image"

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    goto :goto_0
.end method
