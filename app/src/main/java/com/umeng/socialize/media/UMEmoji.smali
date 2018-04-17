.class public Lcom/umeng/socialize/media/UMEmoji;
.super Lcom/umeng/socialize/media/BaseMediaObject;
.source "UMEmoji.java"


# instance fields
.field public mSrcImage:Lcom/umeng/socialize/media/UMImage;

.field public mThumb:Lcom/umeng/socialize/media/UMImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>()V

    .line 34
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    invoke-direct {v0, p1, p2}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    invoke-direct {v0, p1, p2}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    .line 31
    return-void
.end method


# virtual methods
.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method

.method public getThumbImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/umeng/socialize/media/UMEmoji;->mThumb:Lcom/umeng/socialize/media/UMImage;

    return-object v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public setThumb(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/umeng/socialize/media/UMEmoji;->mThumb:Lcom/umeng/socialize/media/UMImage;

    .line 66
    return-void
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/media/UMEmoji;->mThumb:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UMEmoji ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMEmoji;->mThumb:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMEmoji;->isUrlMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_FURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMEmoji;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_FTYPE:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMEmoji;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-object v0
.end method
