.class public Lcom/umeng/socialize/net/ShareMultiFollowRequest;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "ShareMultiFollowRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/follow/"

.field private static final b:I = 0x12


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 26
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/ShareMultiFollowResponse;

    const/16 v4, 0x12

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 27
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->c:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->d:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->e:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v1, "/share/follow/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareRequest()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->onPrepareRequest()V

    .line 37
    const-string v0, "to"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "fusid"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareMultiFollowRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
