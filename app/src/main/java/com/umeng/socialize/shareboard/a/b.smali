.class Lcom/umeng/socialize/shareboard/a/b;
.super Ljava/lang/Object;
.source "SNSPlatformAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/shareboard/SnsPlatform;

.field final synthetic b:Lcom/umeng/socialize/shareboard/a/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/shareboard/a/a;Lcom/umeng/socialize/shareboard/SnsPlatform;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/a/b;->b:Lcom/umeng/socialize/shareboard/a/a;

    iput-object p2, p0, Lcom/umeng/socialize/shareboard/a/b;->a:Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/b;->b:Lcom/umeng/socialize/shareboard/a/a;

    invoke-static {v0}, Lcom/umeng/socialize/shareboard/a/a;->a(Lcom/umeng/socialize/shareboard/a/a;)Lcom/umeng/socialize/shareboard/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/shareboard/a;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/b;->a:Lcom/umeng/socialize/shareboard/SnsPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 135
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/a/b;->b:Lcom/umeng/socialize/shareboard/a/a;

    invoke-static {v1}, Lcom/umeng/socialize/shareboard/a/a;->b(Lcom/umeng/socialize/shareboard/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/b;->b:Lcom/umeng/socialize/shareboard/a/a;

    invoke-static {v0}, Lcom/umeng/socialize/shareboard/a/a;->b(Lcom/umeng/socialize/shareboard/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/a/b;->b:Lcom/umeng/socialize/shareboard/a/a;

    iget-object v2, p0, Lcom/umeng/socialize/shareboard/a/b;->a:Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/shareboard/a/a;->a(Lcom/umeng/socialize/shareboard/a/a;Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method
