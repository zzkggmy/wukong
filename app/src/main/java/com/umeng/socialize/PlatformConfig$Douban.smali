.class public Lcom/umeng/socialize/PlatformConfig$Douban;
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
    name = "Douban"
.end annotation


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Douban;->appKey:Ljava/lang/String;

    .line 387
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Douban;->appSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isAuthrized()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 394
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Douban;->appKey:Ljava/lang/String;

    .line 395
    const-string v0, "secret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Douban;->appSecret:Ljava/lang/String;

    .line 396
    return-void
.end method
