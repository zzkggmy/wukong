.class Lcom/umeng/socialize/g;
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

.field final synthetic c:Lcom/umeng/socialize/UMAuthListener;

.field final synthetic d:Lcom/umeng/socialize/UMShareAPI;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/umeng/socialize/g;->d:Lcom/umeng/socialize/UMShareAPI;

    iput-object p3, p0, Lcom/umeng/socialize/g;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/umeng/socialize/g;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p5, p0, Lcom/umeng/socialize/g;->c:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0, p2}, Lcom/umeng/socialize/common/QueuedWork$DialogThread;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/umeng/socialize/g;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/umeng/socialize/g;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    iget-object v1, p0, Lcom/umeng/socialize/g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/g;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v3, p0, Lcom/umeng/socialize/g;->c:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/b/a;->b(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
