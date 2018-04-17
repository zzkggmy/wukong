.class public Lcom/umeng/socialize/PlatformConfig$QQZone;
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
    name = "QQZone"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field private final media:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->appId:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->appKey:Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->media:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 214
    return-void
.end method


# virtual methods
.method public getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->media:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isAuthrized()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 221
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->appId:Ljava/lang/String;

    .line 222
    const-string v0, "secret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$QQZone;->appKey:Ljava/lang/String;

    .line 223
    return-void
.end method
