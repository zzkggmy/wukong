.class Lcom/umeng/socialize/view/a/k;
.super Ljava/util/TimerTask;
.source "ACProgressPie.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a/i;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a/i;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/umeng/socialize/view/a/k;->a:Lcom/umeng/socialize/view/a/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/view/a/k;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/i;->b(Lcom/umeng/socialize/view/a/i;)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/socialize/view/a/k;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/i;->c(Lcom/umeng/socialize/view/a/i;)Lcom/umeng/socialize/view/a/i$a;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/view/a/i$a;->o(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/umeng/socialize/view/a/k;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/i;->d(Lcom/umeng/socialize/view/a/i;)Lcom/umeng/socialize/view/a/b/c;

    move-result-object v1

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v3, p0, Lcom/umeng/socialize/view/a/k;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v3}, Lcom/umeng/socialize/view/a/i;->c(Lcom/umeng/socialize/view/a/i;)Lcom/umeng/socialize/view/a/i$a;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socialize/view/a/i$a;->o(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/a/b/c;->a(F)V

    .line 56
    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/view/a/k;->a:Lcom/umeng/socialize/view/a/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/a/i;->a(Lcom/umeng/socialize/view/a/i;I)I

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a/k;->a:Lcom/umeng/socialize/view/a/i;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/i;->e(Lcom/umeng/socialize/view/a/i;)I

    goto :goto_0
.end method
