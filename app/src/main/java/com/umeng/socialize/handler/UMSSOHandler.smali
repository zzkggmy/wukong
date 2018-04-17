.class public abstract Lcom/umeng/socialize/handler/UMSSOHandler;
.super Ljava/lang/Object;
.source "UMSSOHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UMSSOHandler"


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

.field private mContext:Landroid/content/Context;

.field public mTargetUrl:Ljava/lang/String;

.field protected mThumbLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

    .line 27
    const v0, 0x8000

    iput v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mThumbLimit:I

    .line 26
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public deleteAuth(Landroid/content/Context;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lcom/umeng/socialize/PlatformConfig$Platform;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlatformInfo(Landroid/app/Activity;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .prologue
    .line 59
    const-string v0, "\'getPlatformInfo\', it works!"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getfriend(Landroid/app/Activity;Lcom/umeng/socialize/view/UMFriendListener;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public isAuthorize(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 67
    const-string v0, "\u8be5\u5e73\u53f0\u4e0d\u652f\u6301\u67e5\u8be2"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isInstall(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 62
    const-string v0, "\u8be5\u5e73\u53f0\u4e0d\u652f\u6301\u67e5\u8be2"

    invoke-static {v0}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAuth()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

    .line 32
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mCaller:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public abstract share(Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end method
