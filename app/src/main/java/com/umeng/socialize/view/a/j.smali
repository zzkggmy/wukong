.class Lcom/umeng/socialize/view/a/j;
.super Ljava/lang/Object;
.source "ACProgressPie.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a/i;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a/i;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/umeng/socialize/view/a/j;->a:Lcom/umeng/socialize/view/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, Lcom/umeng/socialize/view/a/j;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/i;->a(Lcom/umeng/socialize/view/a/i;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/umeng/socialize/view/a/j;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/i;->a(Lcom/umeng/socialize/view/a/i;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 30
    iget-object v0, p0, Lcom/umeng/socialize/view/a/j;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/a/i;->a(Lcom/umeng/socialize/view/a/i;Ljava/util/Timer;)Ljava/util/Timer;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a/j;->a:Lcom/umeng/socialize/view/a/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/i;->a(Lcom/umeng/socialize/view/a/i;I)I

    .line 33
    iget-object v0, p0, Lcom/umeng/socialize/view/a/j;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/a/i;->a(Lcom/umeng/socialize/view/a/i;Lcom/umeng/socialize/view/a/b/c;)Lcom/umeng/socialize/view/a/b/c;

    .line 34
    return-void
.end method
