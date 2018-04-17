.class Lcom/umeng/socialize/view/a/g;
.super Ljava/lang/Object;
.source "ACProgressFlower.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a/f;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a/f;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/umeng/socialize/view/a/g;->a:Lcom/umeng/socialize/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    iget-object v0, p0, Lcom/umeng/socialize/view/a/g;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/f;->a(Lcom/umeng/socialize/view/a/f;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/umeng/socialize/view/a/g;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/f;->a(Lcom/umeng/socialize/view/a/f;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 28
    iget-object v0, p0, Lcom/umeng/socialize/view/a/g;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/a/f;->a(Lcom/umeng/socialize/view/a/f;Ljava/util/Timer;)Ljava/util/Timer;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a/g;->a:Lcom/umeng/socialize/view/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/f;->a(Lcom/umeng/socialize/view/a/f;I)I

    .line 31
    iget-object v0, p0, Lcom/umeng/socialize/view/a/g;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/a/f;->a(Lcom/umeng/socialize/view/a/f;Lcom/umeng/socialize/view/a/b/b;)Lcom/umeng/socialize/view/a/b/b;

    .line 32
    return-void
.end method
