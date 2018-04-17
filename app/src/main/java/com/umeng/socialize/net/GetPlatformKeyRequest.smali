.class public Lcom/umeng/socialize/net/GetPlatformKeyRequest;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "GetPlatformKeyRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/keysecret/"

.field private static final b:I = 0x14


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 23
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/GetPlatformKeyResponse;

    const/16 v4, 0x14

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->GET:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 24
    iput-object p1, p0, Lcom/umeng/socialize/net/GetPlatformKeyRequest;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/share/keysecret/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/GetPlatformKeyRequest;->mContext:Landroid/content/Context;

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
