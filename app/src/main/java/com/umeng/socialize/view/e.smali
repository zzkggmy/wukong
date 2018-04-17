.class Lcom/umeng/socialize/view/e;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/umeng/socialize/view/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/c;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/umeng/socialize/view/e;->c:Lcom/umeng/socialize/view/c;

    iput-object p2, p0, Lcom/umeng/socialize/view/e;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/umeng/socialize/view/e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/umeng/socialize/view/e;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/view/e;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/e;->c:Lcom/umeng/socialize/view/c;

    iget-object v0, v0, Lcom/umeng/socialize/view/c;->d:Lcom/umeng/socialize/view/OauthDialog;

    .line 207
    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->d(Lcom/umeng/socialize/view/OauthDialog;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/e;->c:Lcom/umeng/socialize/view/c;

    iget-object v0, v0, Lcom/umeng/socialize/view/c;->d:Lcom/umeng/socialize/view/OauthDialog;

    invoke-static {v0}, Lcom/umeng/socialize/view/OauthDialog;->d(Lcom/umeng/socialize/view/OauthDialog;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/umeng/socialize/view/e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/e;->c:Lcom/umeng/socialize/view/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/c;->requestLayout()V

    .line 211
    return-void
.end method
