.class public Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "UpdatePlatformKeyRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/keysecret/"

.field private static final b:I = 0x19


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/UpdatePlatformKeyResponse;

    const/16 v4, 0x19

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->c:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->c:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/share/keysecret/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->mContext:Landroid/content/Context;

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
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->c:Ljava/util/Map;

    const-string v1, "wx_appid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->c:Ljava/util/Map;

    const-string v2, "wx_secret"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->c:Ljava/util/Map;

    const-string v3, "qzone_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->c:Ljava/util/Map;

    const-string v4, "qzone_secret"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    const-string v4, "wxsession_key"

    invoke-virtual {p0, v4, v0}, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "wxsession_secret"

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "qzone_key"

    invoke-virtual {p0, v0, v2}, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "qzone_secret"

    invoke-virtual {p0, v0, v3}, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "ak"

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "umeng_secret"

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
