.class public Lcom/umeng/socialize/net/UploadImageRequest;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "UploadImageRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/api/upload_pic/"

.field private static final b:I = 0x17


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/umeng/socialize/media/UMediaObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 19
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/UploadImageResponse;

    const/16 v4, 0x17

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 20
    iput-object p1, p0, Lcom/umeng/socialize/net/UploadImageRequest;->c:Landroid/content/Context;

    .line 21
    iput-object p3, p0, Lcom/umeng/socialize/net/UploadImageRequest;->d:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/umeng/socialize/net/UploadImageRequest;->e:Lcom/umeng/socialize/media/UMediaObject;

    .line 23
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/upload_pic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/UploadImageRequest;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareRequest()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "usid"

    iget-object v1, p0, Lcom/umeng/socialize/net/UploadImageRequest;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/UploadImageRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/net/UploadImageRequest;->e:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/net/UploadImageRequest;->addMediaParams(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 35
    return-void
.end method
