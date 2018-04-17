.class Lcom/umeng/socialize/i;
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

.field final synthetic b:Lcom/umeng/socialize/ShareAction;

.field final synthetic c:Lcom/umeng/socialize/UMShareListener;

.field final synthetic d:Lcom/umeng/socialize/UMShareAPI;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/umeng/socialize/i;->d:Lcom/umeng/socialize/UMShareAPI;

    iput-object p3, p0, Lcom/umeng/socialize/i;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/umeng/socialize/i;->b:Lcom/umeng/socialize/ShareAction;

    iput-object p5, p0, Lcom/umeng/socialize/i;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0, p2}, Lcom/umeng/socialize/common/QueuedWork$DialogThread;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/i;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/i;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    iget-object v1, p0, Lcom/umeng/socialize/i;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/i;->b:Lcom/umeng/socialize/ShareAction;

    iget-object v3, p0, Lcom/umeng/socialize/i;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/b/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V

    .line 143
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/i;->d:Lcom/umeng/socialize/UMShareAPI;

    new-instance v1, Lcom/umeng/socialize/b/a;

    iget-object v2, p0, Lcom/umeng/socialize/i;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/umeng/socialize/b/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    .line 141
    iget-object v0, p0, Lcom/umeng/socialize/i;->d:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/b/a;

    iget-object v1, p0, Lcom/umeng/socialize/i;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/i;->b:Lcom/umeng/socialize/ShareAction;

    iget-object v3, p0, Lcom/umeng/socialize/i;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/b/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/umeng/socialize/i;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
