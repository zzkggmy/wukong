.class Lcom/umeng/socialize/media/UMImage$ConvertConfig;
.super Ljava/lang/Object;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/media/UMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConvertConfig"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "/umeng_cache/"


# instance fields
.field private b:Ljava/lang/String;

.field public mImageSizeLimit:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->mImageSizeLimit:F

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->b:Ljava/lang/String;

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->mImageSizeLimit:F

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->b:Ljava/lang/String;

    .line 612
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public generateCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {}, Lcom/umeng/socialize/utils/BitmapUtils;->cleanCache()V

    .line 658
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->getCache()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 662
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 663
    return-object v0
.end method

.method public getCache()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-static {}, Lcom/umeng/socialize/utils/DeviceConfig;->isSdCardWrittenable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 638
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/umeng_cache/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 644
    :cond_0
    return-object v1

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$ConvertConfig;->b:Ljava/lang/String;

    goto :goto_0

    .line 635
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "dirpath is unknow"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
