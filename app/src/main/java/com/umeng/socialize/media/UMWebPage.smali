.class public Lcom/umeng/socialize/media/UMWebPage;
.super Lcom/umeng/socialize/media/BaseMediaObject;
.source "UMWebPage.java"


# instance fields
.field private h:Ljava/lang/String;

.field private i:Lcom/umeng/socialize/media/UMImage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMWebPage;->h:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMWebPage;->i:Lcom/umeng/socialize/media/UMImage;

    .line 35
    iput-object p1, p0, Lcom/umeng/socialize/media/UMWebPage;->d:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/media/UMWebPage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->WEBPAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method

.method public getThumbImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/umeng/socialize/media/UMWebPage;->i:Lcom/umeng/socialize/media/UMImage;

    return-object v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/umeng/socialize/media/UMWebPage;->h:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/umeng/socialize/media/BaseMediaObject;->setTargetUrl(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/umeng/socialize/media/UMWebPage;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setThumb(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/umeng/socialize/media/UMWebPage;->i:Lcom/umeng/socialize/media/UMImage;

    .line 79
    return-void
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UMWebPage [mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMWebPage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMWebPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaThumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMWebPage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaTargetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMWebPage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socialize/media/UMWebPage;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUrlExtraParams()Ljava/util/Map;
    .locals 1
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
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
