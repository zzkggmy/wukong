.class Lcom/umeng/socialize/h;
.super Lcom/umeng/socialize/common/QueuedWork$DialogThread;
.source "UMShareAPI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/QueuedWork$DialogThread",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic c:Lcom/umeng/socialize/view/UMFriendListener;

.field final synthetic d:Lcom/umeng/socialize/UMShareAPI;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/view/UMFriendListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/umeng/socialize/h;->d:Lcom/umeng/socialize/UMShareAPI;

    iput-object p3, p0, Lcom/umeng/socialize/h;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/umeng/socialize/h;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p5, p0, Lcom/umeng/socialize/h;->c:Lcom/umeng/socialize/view/UMFriendListener;

    invoke-direct {p0, p2}, Lcom/umeng/socialize/common/QueuedWork$DialogThread;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/umeng/socialize/h;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/umeng/socialize/h;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    iget-object v1, p0, Lcom/umeng/socialize/h;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/h;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v3, p0, Lcom/umeng/socialize/h;->c:Lcom/umeng/socialize/view/UMFriendListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/b/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/view/UMFriendListener;)V

    .line 125
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/h;->d:Lcom/umeng/socialize/UMShareAPI;

    new-instance v1, Lcom/umeng/socialize/b/a;

    iget-object v2, p0, Lcom/umeng/socialize/h;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/umeng/socialize/b/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/h;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    iget-object v1, p0, Lcom/umeng/socialize/h;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/h;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v3, p0, Lcom/umeng/socialize/h;->c:Lcom/umeng/socialize/view/UMFriendListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/b/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/view/UMFriendListener;)V

    goto :goto_0
.end method
