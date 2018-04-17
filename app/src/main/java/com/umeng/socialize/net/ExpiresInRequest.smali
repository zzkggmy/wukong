.class public Lcom/umeng/socialize/net/ExpiresInRequest;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "ExpiresInRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/validate_token/"

.field private static final b:I = 0x18


# instance fields
.field private c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 6

    .prologue
    .line 28
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/ExpiresInResponse;

    const/16 v4, 0x18

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->GET:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 29
    iput-object p2, p0, Lcom/umeng/socialize/net/ExpiresInRequest;->c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 30
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/share/validate_token/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/ExpiresInRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public onPrepareRequest()V
    .locals 6

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/net/ExpiresInRequest;->c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/net/ExpiresInRequest;->c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 36
    iget-object v2, p0, Lcom/umeng/socialize/net/ExpiresInRequest;->c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 37
    sget-object v5, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v4, v5, :cond_0

    .line 38
    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 44
    :cond_2
    const-string v0, "platforms"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ExpiresInRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "uid"

    sget-object v1, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ExpiresInRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
