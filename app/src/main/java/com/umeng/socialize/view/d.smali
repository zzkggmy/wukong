.class Lcom/umeng/socialize/view/d;
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
    .line 186
    iput-object p1, p0, Lcom/umeng/socialize/view/d;->c:Lcom/umeng/socialize/view/c;

    iput-object p2, p0, Lcom/umeng/socialize/view/d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/umeng/socialize/view/d;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/d;->c:Lcom/umeng/socialize/view/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/c;->requestLayout()V

    .line 195
    return-void
.end method
