.class public Lcom/umeng/socialize/media/UMImage;
.super Lcom/umeng/socialize/media/BaseMediaObject;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/media/UMImage$IImageConvertor;,
        Lcom/umeng/socialize/media/UMImage$ConvertConfig;,
        Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;,
        Lcom/umeng/socialize/media/UMImage$ResConvertor;,
        Lcom/umeng/socialize/media/UMImage$BinaryConvertor;,
        Lcom/umeng/socialize/media/UMImage$UrlConvertor;,
        Lcom/umeng/socialize/media/UMImage$FileConvertor;,
        Lcom/umeng/socialize/media/UMImage$BitmapConvertor;
    }
.end annotation


# instance fields
.field private h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

.field private i:Lcom/umeng/socialize/media/UMImage$ConvertConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 675
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 676
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 677
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 678
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 679
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 680
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 681
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 682
    return-object v0

    .line 677
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 114
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/umeng/socialize/media/UMImage$FileConvertor;

    check-cast p2, Ljava/io/File;

    invoke-direct {v0, p2}, Lcom/umeng/socialize/media/UMImage$FileConvertor;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    new-instance v1, Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    invoke-direct {v1, p1}, Lcom/umeng/socialize/media/UMImage$ConvertConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->setConfig(Lcom/umeng/socialize/media/UMImage$ConvertConfig;)V

    .line 128
    return-void

    .line 116
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lcom/umeng/socialize/media/UMImage$UrlConvertor;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/umeng/socialize/media/UMImage$UrlConvertor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 118
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Lcom/umeng/socialize/media/UMImage$ResConvertor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/umeng/socialize/media/UMImage$ResConvertor;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 120
    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    .line 121
    new-instance v0, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {v0, p2}, Lcom/umeng/socialize/media/UMImage$BinaryConvertor;-><init>([B)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 122
    :cond_3
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 123
    new-instance v0, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {v0, p2}, Lcom/umeng/socialize/media/UMImage$BitmapConvertor;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a([B)[B
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/umeng/socialize/media/UMImage;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b([B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 162
    .line 168
    :try_start_0
    invoke-static {p0}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapOptions([B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 169
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 172
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v2, :cond_0

    .line 174
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 175
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 179
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 182
    if-eqz v1, :cond_1

    .line 184
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    :cond_1
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 182
    :goto_1
    if-eqz v1, :cond_1

    .line 184
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 185
    :catch_1
    move-exception v1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v1, :cond_2

    .line 184
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    :cond_2
    :goto_3
    throw v0

    .line 185
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 182
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 180
    :catch_4
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public asBinImage()[B
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asBinary()[B

    move-result-object v0

    goto :goto_0
.end method

.method public asBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public asFileImage()Ljava/io/File;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xxxxx convor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public asUrlImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->h:Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->asUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public resize(II)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    return-object v0
.end method

.method public final toUrlExtraParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_FURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_FTYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-object v0
.end method
