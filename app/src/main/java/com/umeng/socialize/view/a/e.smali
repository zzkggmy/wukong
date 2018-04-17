.class Lcom/umeng/socialize/view/a/e;
.super Ljava/util/TimerTask;
.source "ACProgressCustom.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a/c;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/umeng/socialize/view/a/e;->a:Lcom/umeng/socialize/view/a/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/view/a/e;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c;->c(Lcom/umeng/socialize/view/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/socialize/view/a/e;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c;->d(Lcom/umeng/socialize/view/a/c;)I

    move-result v1

    rem-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Lcom/umeng/socialize/view/a/e;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c;->e(Lcom/umeng/socialize/view/a/c;)Lcom/umeng/socialize/view/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/a/b/a;->a(I)V

    .line 81
    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/view/a/e;->a:Lcom/umeng/socialize/view/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/c;->a(Lcom/umeng/socialize/view/a/c;I)I

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a/e;->a:Lcom/umeng/socialize/view/a/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c;->f(Lcom/umeng/socialize/view/a/c;)I

    goto :goto_0
.end method
