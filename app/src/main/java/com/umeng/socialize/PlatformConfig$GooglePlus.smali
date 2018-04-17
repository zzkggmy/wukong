.class public Lcom/umeng/socialize/PlatformConfig$GooglePlus;
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
    name = "GooglePlus"
.end annotation


# static fields
.field public static final Name:Ljava/lang/String; = "g+"


# instance fields
.field public appId:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public appkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$GooglePlus;->appId:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$GooglePlus;->appkey:Ljava/lang/String;

    .line 517
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$GooglePlus;->appSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isAuthrized()Z
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 524
    return-void
.end method
