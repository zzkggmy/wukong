.class Lcom/umeng/socialize/view/c;
.super Landroid/widget/FrameLayout;
.source "OauthDialog.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/umeng/socialize/view/OauthDialog;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/OauthDialog;Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/umeng/socialize/view/c;->d:Lcom/umeng/socialize/view/OauthDialog;

    iput-object p3, p0, Lcom/umeng/socialize/view/c;->a:Landroid/view/View;

    iput-object p4, p0, Lcom/umeng/socialize/view/c;->b:Landroid/view/View;

    iput p5, p0, Lcom/umeng/socialize/view/c;->c:I

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-ge p4, p3, :cond_1

    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/view/c;->d:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->c(Lcom/umeng/socialize/view/OauthDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/d;

    invoke-direct {v1, p0, p2, p1}, Lcom/umeng/socialize/view/d;-><init>(Lcom/umeng/socialize/view/c;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-lt p4, p3, :cond_0

    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/view/c;->d:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->c(Lcom/umeng/socialize/view/OauthDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/e;

    invoke-direct {v1, p0, p2, p1}, Lcom/umeng/socialize/view/e;-><init>(Lcom/umeng/socialize/view/c;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/view/c;->d:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->b(Lcom/umeng/socialize/view/OauthDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/umeng/socialize/view/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/c;->b:Landroid/view/View;

    iget v2, p0, Lcom/umeng/socialize/view/c;->c:I

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/umeng/socialize/view/c;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 178
    :cond_0
    return-void
.end method
