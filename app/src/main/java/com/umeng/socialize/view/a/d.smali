.class Lcom/umeng/socialize/view/a/d;
.super Ljava/lang/Object;
.source "ACProgressCustom.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a/c;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c;->a(Lcom/umeng/socialize/view/a/c;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c;->a(Lcom/umeng/socialize/view/a/c;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/c;->a(Lcom/umeng/socialize/view/a/c;Ljava/util/Timer;)Ljava/util/Timer;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c;->b(Lcom/umeng/socialize/view/a/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c;->b(Lcom/umeng/socialize/view/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/c;->a(Lcom/umeng/socialize/view/a/c;Ljava/util/List;)Ljava/util/List;

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/a/c;->a(Lcom/umeng/socialize/view/a/c;I)I

    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/a/c;->b(Lcom/umeng/socialize/view/a/c;I)I

    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/a/d;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/c;->a(Lcom/umeng/socialize/view/a/c;Lcom/umeng/socialize/view/a/b/a;)Lcom/umeng/socialize/view/a/b/a;

    .line 49
    return-void
.end method
