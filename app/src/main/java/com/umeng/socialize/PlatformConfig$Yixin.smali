.class public Lcom/umeng/socialize/PlatformConfig$Yixin;
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
    name = "Yixin"
.end annotation


# instance fields
.field private final media:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public yixinId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Yixin;->yixinId:Ljava/lang/String;

    .line 490
    iput-object p1, p0, Lcom/umeng/socialize/PlatformConfig$Yixin;->media:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 491
    return-void
.end method


# virtual methods
.method public getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Yixin;->media:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isAuthrized()Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$Yixin;->yixinId:Ljava/lang/String;

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
    .locals 0

    .prologue
    .line 499
    return-void
.end method
