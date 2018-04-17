.class public Lcom/umeng/socialize/PlatformConfig$TencentWeibo;
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
    name = "TencentWeibo"
.end annotation


# static fields
.field public static final Name:Ljava/lang/String; = "tencent"


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$TencentWeibo;->appKey:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$TencentWeibo;->appSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isAuthrized()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 295
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$TencentWeibo;->appKey:Ljava/lang/String;

    .line 296
    const-string v0, "secret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$TencentWeibo;->appSecret:Ljava/lang/String;

    .line 297
    return-void
.end method
