.class Lcom/umeng/socialize/view/a/h;
.super Ljava/util/TimerTask;
.source "ACProgressFlower.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a/f;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a/f;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/f;->b(Lcom/umeng/socialize/view/a/f;)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/f;->c(Lcom/umeng/socialize/view/a/f;)Lcom/umeng/socialize/view/a/f$a;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/view/a/f$a;->g(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v1

    rem-int/2addr v0, v1

    .line 53
    iget-object v1, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/f;->c(Lcom/umeng/socialize/view/a/f;)Lcom/umeng/socialize/view/a/f$a;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/view/a/f$a;->t(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 54
    iget-object v1, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/f;->d(Lcom/umeng/socialize/view/a/f;)Lcom/umeng/socialize/view/a/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/a/b/b;->a(I)V

    .line 58
    :goto_0
    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/f;->a(Lcom/umeng/socialize/view/a/f;I)I

    .line 63
    :goto_1
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/f;->d(Lcom/umeng/socialize/view/a/f;)Lcom/umeng/socialize/view/a/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v2}, Lcom/umeng/socialize/view/a/f;->c(Lcom/umeng/socialize/view/a/f;)Lcom/umeng/socialize/view/a/f$a;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/view/a/f$a;->g(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/a/b/b;->a(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/a/h;->a:Lcom/umeng/socialize/view/a/f;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/f;->e(Lcom/umeng/socialize/view/a/f;)I

    goto :goto_1
.end method
