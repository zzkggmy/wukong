.class public Lcom/umeng/socialize/media/SimpleShareContent;
.super Ljava/lang/Object;
.source "SimpleShareContent.java"


# instance fields
.field private a:Lcom/umeng/socialize/media/UMImage;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/umeng/socialize/media/UMVideo;

.field private f:Lcom/umeng/socialize/media/UMusic;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->b:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mTargetUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->a:Lcom/umeng/socialize/media/UMImage;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->a:Lcom/umeng/socialize/media/UMImage;

    return-object v0
.end method

.method public getMusic()Lcom/umeng/socialize/media/UMusic;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->f:Lcom/umeng/socialize/media/UMusic;

    return-object v0
.end method

.method public getTargeturl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Lcom/umeng/socialize/media/UMVideo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Lcom/umeng/socialize/media/UMVideo;

    return-object v0
.end method

.method public setImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->a:Lcom/umeng/socialize/media/UMImage;

    .line 48
    return-void
.end method

.method public setMusic(Lcom/umeng/socialize/media/UMusic;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->f:Lcom/umeng/socialize/media/UMusic;

    .line 63
    return-void
.end method

.method public setTargeturl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setVideo(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Lcom/umeng/socialize/media/UMVideo;

    .line 71
    return-void
.end method
