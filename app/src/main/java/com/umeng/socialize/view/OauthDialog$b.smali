.class Lcom/umeng/socialize/view/OauthDialog$b;
.super Landroid/webkit/WebViewClient;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/OauthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/umeng/socialize/view/OauthDialog;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/OauthDialog;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/OauthDialog;Lcom/umeng/socialize/view/a;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/OauthDialog$b;-><init>(Lcom/umeng/socialize/view/OauthDialog;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 442
    const-string v0, "OauthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OauthDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;I)I

    .line 444
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 446
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/OauthDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->c(Lcom/umeng/socialize/view/OauthDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->f(Lcom/umeng/socialize/view/OauthDialog;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->e(Lcom/umeng/socialize/view/OauthDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/OauthDialog$b;->a(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 412
    const-string v0, "?ud_get="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0, p2}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 416
    :cond_0
    const-string v0, "access_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "access_secret"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->e(Lcom/umeng/socialize/view/OauthDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/OauthDialog$b;->a(Ljava/lang/String;)V

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 396
    const-string v0, "OauthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nerrCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 405
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 409
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 374
    const-string v0, "OauthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->b(Lcom/umeng/socialize/view/OauthDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->b(Lcom/umeng/socialize/view/OauthDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u62b1\u6b49,\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    .line 384
    :cond_0
    const-string v0, "?ud_get="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0, p2}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog$b;->b:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->e(Lcom/umeng/socialize/view/OauthDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/OauthDialog$b;->a(Ljava/lang/String;)V

    .line 390
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
