.class Lcom/umeng/socialize/editorpage/f;
.super Lcom/umeng/socialize/editorpage/location/b;
.source "ShareActivity.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/editorpage/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/editorpage/ShareActivity;Lcom/umeng/socialize/editorpage/location/a;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/f;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-direct {p0, p2}, Lcom/umeng/socialize/editorpage/location/b;-><init>(Lcom/umeng/socialize/editorpage/location/a;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/location/Location;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-super {p0, p1}, Lcom/umeng/socialize/editorpage/location/b;->onPostExecute(Ljava/lang/Object;)V

    .line 475
    const-string v0, "xxxxx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/f;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-static {p1}, Lcom/umeng/socialize/bean/UMLocation;->build(Landroid/location/Location;)Lcom/umeng/socialize/bean/UMLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Lcom/umeng/socialize/editorpage/ShareActivity;Lcom/umeng/socialize/bean/UMLocation;)Lcom/umeng/socialize/bean/UMLocation;

    .line 477
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/f;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-static {v0, v3}, Lcom/umeng/socialize/editorpage/ShareActivity;->b(Lcom/umeng/socialize/editorpage/ShareActivity;Z)V

    .line 478
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/editorpage/f;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/f;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->b(Lcom/umeng/socialize/editorpage/ShareActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u5730\u7406\u4f4d\u7f6e\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 481
    :cond_0
    return-void
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0}, Lcom/umeng/socialize/editorpage/location/b;->onCancelled()V

    .line 486
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/f;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->b(Lcom/umeng/socialize/editorpage/ShareActivity;Z)V

    .line 487
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 465
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/editorpage/f;->a(Landroid/location/Location;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 468
    invoke-super {p0}, Lcom/umeng/socialize/editorpage/location/b;->onPreExecute()V

    .line 469
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/f;->a:Lcom/umeng/socialize/editorpage/ShareActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->b(Lcom/umeng/socialize/editorpage/ShareActivity;Z)V

    .line 470
    return-void
.end method
