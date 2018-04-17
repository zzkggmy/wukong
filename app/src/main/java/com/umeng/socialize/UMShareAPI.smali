.class public Lcom/umeng/socialize/UMShareAPI;
.super Ljava/lang/Object;
.source "UMShareAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/UMShareAPI$a;
    }
.end annotation


# static fields
.field private static b:Lcom/umeng/socialize/UMShareAPI;


# instance fields
.field a:Lcom/umeng/socialize/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/UMShareAPI;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/umeng/socialize/b/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    .line 36
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/UMShareAPI$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$a;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 37
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/UMShareAPI;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Lcom/umeng/socialize/UMShareAPI;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/UMShareAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/UMShareAPI;

    .line 44
    :cond_1
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/UMShareAPI;

    return-object v0
.end method


# virtual methods
.method public deleteOauth(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lcom/umeng/socialize/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/f;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 75
    invoke-virtual {v0}, Lcom/umeng/socialize/f;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 76
    return-void
.end method

.method public doOauthVerify(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 6

    .prologue
    .line 51
    new-instance v0, Lcom/umeng/socialize/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/e;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 60
    invoke-virtual {v0}, Lcom/umeng/socialize/e;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 61
    return-void
.end method

.method public doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V
    .locals 6

    .prologue
    .line 133
    new-instance v0, Lcom/umeng/socialize/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/i;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V

    .line 145
    invoke-virtual {v0}, Lcom/umeng/socialize/i;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 146
    return-void
.end method

.method public getFriend(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/view/UMFriendListener;)V
    .locals 6

    .prologue
    .line 114
    new-instance v0, Lcom/umeng/socialize/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/h;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/view/UMFriendListener;)V

    .line 127
    invoke-virtual {v0}, Lcom/umeng/socialize/h;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 128
    return-void
.end method

.method public getHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/b/a;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlatformInfo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 6

    .prologue
    .line 79
    new-instance v0, Lcom/umeng/socialize/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/g;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 90
    invoke-virtual {v0}, Lcom/umeng/socialize/g;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 91
    return-void
.end method

.method public isAuthorize(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/b/a;->b(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 105
    :cond_0
    new-instance v0, Lcom/umeng/socialize/b/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/b/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInstall(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/b/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/b/a;->a(IILandroid/content/Intent;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, "auth fail"

    const-string v1, "router=null"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openShare(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
