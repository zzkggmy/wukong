.class public Lcom/umeng/socialize/net/ShareFriendsRequest;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "ShareFriendsRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/friends/"

.field private static final b:I = 0xe


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 54
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/ShareFriendsResponse;

    const/16 v4, 0xe

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->GET:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 55
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareFriendsRequest;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/umeng/socialize/net/ShareFriendsRequest;->c:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/umeng/socialize/net/ShareFriendsRequest;->d:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 58
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/share/friends/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareFriendsRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareFriendsRequest;->c:Ljava/lang/String;

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
    .line 62
    const-string v0, "to"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareFriendsRequest;->d:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareFriendsRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
