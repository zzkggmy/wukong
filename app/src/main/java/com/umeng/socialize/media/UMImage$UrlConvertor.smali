.class Lcom/umeng/socialize/media/UMImage$UrlConvertor;
.super Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/media/UMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlConvertor"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->a:Ljava/lang/String;

    .line 407
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->a:Ljava/lang/String;

    .line 408
    return-void
.end method


# virtual methods
.method public asBinary()[B
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->getNetData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->asBinary()[B

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    .line 442
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->config:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/net/utils/AesHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->generateCacheFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 416
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->asBinary()[B

    move-result-object v2

    .line 417
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 418
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 419
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    :goto_0
    return-object v0

    .line 421
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 423
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 421
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public asUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;->a:Ljava/lang/String;

    return-object v0
.end method
