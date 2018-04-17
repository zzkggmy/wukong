.class Lcom/umeng/socialize/media/UMImage$BinaryConvertor;
.super Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/media/UMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryConvertor"
.end annotation


# instance fields
.field private a:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

.field private b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;-><init>()V

    .line 449
    new-instance v0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    invoke-direct {v0}, Lcom/umeng/socialize/media/UMImage$ConvertConfig;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->a:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    .line 453
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->b:[B

    .line 454
    return-void
.end method

.method private a([BLjava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 500
    const/4 v2, 0x0

    .line 503
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 504
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 509
    if-eqz v1, :cond_0

    .line 511
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 516
    :cond_0
    :goto_0
    return-object p2

    .line 506
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 507
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 509
    if-eqz v1, :cond_0

    .line 511
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 512
    :catch_1
    move-exception v0

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 511
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 513
    :cond_1
    :goto_3
    throw v0

    .line 512
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 509
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 506
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public asBinary()[B
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->b:[B

    return-object v0
.end method

.method public asBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->b:[B

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->b:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->a:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->generateCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->b:[B

    invoke-direct {p0, v1, v0}, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;->a([BLjava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorry cannot setImage..["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 494
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/net/utils/AesHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    return-object v0
.end method
