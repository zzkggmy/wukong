.class Lcom/umeng/socialize/media/UMImage$ResConvertor;
.super Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/media/UMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResConvertor"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;-><init>()V

    .line 522
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->b:I

    .line 525
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->a:Landroid/content/Context;

    .line 526
    iput p2, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->b:I

    .line 527
    return-void
.end method


# virtual methods
.method public asBinary()[B
    .locals 4

    .prologue
    .line 573
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 576
    iget v2, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 578
    invoke-static {v1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 580
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 582
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->b:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 532
    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->b:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 540
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$ResConvertor;->config:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socialize/net/utils/AesHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->generateCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 541
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 543
    const/16 v4, 0x1000

    :try_start_2
    new-array v4, v4, [B

    .line 544
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 545
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 553
    if-eqz v2, :cond_0

    .line 554
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 556
    :cond_0
    if-eqz v3, :cond_1

    .line 557
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    move-object v0, v1

    .line 563
    :cond_2
    :goto_3
    return-object v0

    .line 547
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 553
    if-eqz v2, :cond_4

    .line 554
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 556
    :cond_4
    if-eqz v3, :cond_2

    .line 557
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 559
    :catch_1
    move-exception v1

    .line 560
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 559
    :catch_2
    move-exception v0

    .line 560
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 552
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 553
    :goto_4
    if-eqz v2, :cond_5

    .line 554
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 556
    :cond_5
    if-eqz v1, :cond_6

    .line 557
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 561
    :cond_6
    :goto_5
    throw v0

    .line 559
    :catch_3
    move-exception v1

    .line 560
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 552
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 549
    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v3, v1

    goto :goto_1
.end method

.method public asUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method
