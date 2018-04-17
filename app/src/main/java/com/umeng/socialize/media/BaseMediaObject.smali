.class public abstract Lcom/umeng/socialize/media/BaseMediaObject;
.super Ljava/lang/Object;
.source "BaseMediaObject.java"

# interfaces
.implements Lcom/umeng/socialize/media/UMediaObject;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:I

.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->mText:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->b:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->c:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->d:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->e:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->f:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->g:I

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->mText:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->b:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->c:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->d:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->e:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->f:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->g:I

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->b:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->c:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->d:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->mText:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->b:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->c:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->d:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->e:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->f:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->g:I

    .line 46
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isUrlMedia()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMediaUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->d:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->c:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->b:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseMediaObject [media_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qzone_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qzone_thumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/BaseMediaObject;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseMediaObject;->a:Ljava/lang/String;

    return-object v0
.end method
