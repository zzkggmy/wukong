.class Lcom/umeng/socialize/view/g;
.super Lcom/umeng/socialize/view/OauthDialog$b;
.source "OauthDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/OauthDialog;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/OauthDialog;)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lcom/umeng/socialize/view/g;->a:Lcom/umeng/socialize/view/OauthDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/view/OauthDialog$b;-><init>(Lcom/umeng/socialize/view/OauthDialog;Lcom/umeng/socialize/view/a;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 351
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 352
    return-void
.end method
