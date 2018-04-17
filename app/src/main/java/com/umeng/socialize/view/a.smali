.class Lcom/umeng/socialize/view/a;
.super Landroid/os/Handler;
.source "OauthDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/OauthDialog;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/OauthDialog;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/umeng/socialize/view/a;->a:Lcom/umeng/socialize/view/OauthDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/a;->a:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->a:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/view/OauthDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 100
    :cond_1
    return-void
.end method
