.class Lcom/umeng/socialize/media/UMImage$FileConvertor;
.super Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/media/UMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileConvertor"
.end annotation


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage$FileConvertor;->a:Ljava/io/File;

    .line 323
    return-void
.end method

.method private a(Ljava/io/File;)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 353
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 367
    :cond_1
    :goto_0
    return-object v0

    .line 357
    :cond_2
    invoke-static {p1}, Lcom/umeng/socialize/media/UMImage$FileConvertor;->b(Ljava/io/File;)[B

    move-result-object v0

    .line 359
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 360
    invoke-static {v0}, Lcom/umeng/socialize/common/ImageFormat;->checkFormat([B)Ljava/lang/String;

    move-result-object v1

    .line 361
    sget-object v2, Lcom/umeng/socialize/common/ImageFormat;->FORMAT_NAMES:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    invoke-static {v0}, Lcom/umeng/socialize/media/UMImage;->a([B)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 367
    goto :goto_0
.end method

.method private static b(Ljava/io/File;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 371
    .line 375
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 380
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 381
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 389
    if-eqz v3, :cond_0

    .line 390
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_0
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 398
    :cond_1
    :goto_2
    return-object v0

    .line 383
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 389
    if-eqz v3, :cond_3

    .line 390
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_3
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 395
    :catch_1
    move-exception v1

    goto :goto_2

    .line 388
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 389
    :goto_3
    if-eqz v3, :cond_4

    .line 390
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_4
    if-eqz v2, :cond_5

    .line 393
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 396
    :cond_5
    :goto_4
    throw v0

    .line 395
    :catch_2
    move-exception v1

    goto :goto_4

    .line 388
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 395
    :catch_3
    move-exception v1

    goto :goto_2

    .line 384
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method public asBinary()[B
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$FileConvertor;->a:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/UMImage$FileConvertor;->a(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$FileConvertor;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$FileConvertor;->a:Ljava/io/File;

    return-object v0
.end method

.method public asUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method
