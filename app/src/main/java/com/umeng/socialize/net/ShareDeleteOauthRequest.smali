.class public Lcom/umeng/socialize/net/ShareDeleteOauthRequest;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "ShareDeleteOauthRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/auth_delete/"

.field private static final b:I = 0xf


# instance fields
.field private c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 25
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/base/SocializeReseponse;

    const/16 v4, 0xf

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 26
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 28
    iput-object p3, p0, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->d:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/share/auth_delete/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public onPrepareRequest()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "uid"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "via"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareDeleteOauthRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
