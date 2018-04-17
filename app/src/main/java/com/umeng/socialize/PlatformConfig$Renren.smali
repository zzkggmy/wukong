.class public Lcom/umeng/socialize/PlatformConfig$Renren;
.super Ljava/lang/Object;
.source "PlatformConfig.java"

# interfaces
.implements Lcom/umeng/socialize/PlatformConfig$Platform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/PlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Renren"
.end annotation


# static fields
.field public static final Name:Ljava/lang/String; = "renren"


# instance fields
.field public appId:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public appkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const-string v0, "201874"

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appId:Ljava/lang/String;

    .line 336
    const-string v0, "28401c0964f04a72a14c812d6132fcef"

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appkey:Ljava/lang/String;

    .line 337
    const-string v0, "3bf66e42db1e4fa9829b955cc300b737"

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isAuthrized()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public isConfigured()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 351
    :goto_0
    iget-object v3, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appSecret:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 352
    :goto_1
    iget-object v4, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    .line 354
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :goto_3
    return v1

    :cond_0
    move v0, v2

    .line 350
    goto :goto_0

    :cond_1
    move v3, v2

    .line 351
    goto :goto_1

    :cond_2
    move v4, v2

    .line 352
    goto :goto_2

    :cond_3
    move v1, v2

    .line 354
    goto :goto_3
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 344
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appId:Ljava/lang/String;

    .line 345
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appkey:Ljava/lang/String;

    .line 346
    const-string v0, "secret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Renren;->appSecret:Ljava/lang/String;

    .line 347
    return-void
.end method
