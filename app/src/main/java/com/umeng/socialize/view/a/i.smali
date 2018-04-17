.class public Lcom/umeng/socialize/view/a/i;
.super Lcom/umeng/socialize/view/a/a;
.source "ACProgressPie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/a/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/umeng/socialize/view/a/i$a;

.field private b:Lcom/umeng/socialize/view/a/b/c;

.field private c:Ljava/util/Timer;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/a/i$a;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p1}, Lcom/umeng/socialize/view/a/i$a;->a(Lcom/umeng/socialize/view/a/i$a;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/a/a;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/a/i;->d:I

    .line 24
    iput-object p1, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    .line 25
    new-instance v0, Lcom/umeng/socialize/view/a/j;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/a/j;-><init>(Lcom/umeng/socialize/view/a/i;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/a/i;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/a/i$a;Lcom/umeng/socialize/view/a/j;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/a/i;-><init>(Lcom/umeng/socialize/view/a/i$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/i;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/umeng/socialize/view/a/i;->d:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/i;Lcom/umeng/socialize/view/a/b/c;)Lcom/umeng/socialize/view/a/b/c;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/umeng/socialize/view/a/i;->b:Lcom/umeng/socialize/view/a/b/c;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/i;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->c:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/i;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/umeng/socialize/view/a/i;->c:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/umeng/socialize/view/a/i;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/umeng/socialize/view/a/i;->d:I

    return v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/a/i;)Lcom/umeng/socialize/view/a/i$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/a/i;)Lcom/umeng/socialize/view/a/b/c;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->b:Lcom/umeng/socialize/view/a/b/c;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/a/i;)I
    .locals 2

    .prologue
    .line 14
    iget v0, p0, Lcom/umeng/socialize/view/a/i;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/socialize/view/a/i;->d:I

    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/i$a;->m(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->b:Lcom/umeng/socialize/view/a/b/c;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->b:Lcom/umeng/socialize/view/a/b/c;

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/a/b/c;->a(F)V

    .line 70
    :cond_0
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    .line 39
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->b:Lcom/umeng/socialize/view/a/b/c;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/i$a;->a(Lcom/umeng/socialize/view/a/i$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/a/i;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/i$a;->b(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 41
    new-instance v0, Lcom/umeng/socialize/view/a/b/c;

    iget-object v1, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/i$a;->a(Lcom/umeng/socialize/view/a/i$a;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v3}, Lcom/umeng/socialize/view/a/i$a;->c(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v3

    iget-object v4, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v4}, Lcom/umeng/socialize/view/a/i$a;->d(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v4

    iget-object v5, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v5}, Lcom/umeng/socialize/view/a/i$a;->e(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v5

    iget-object v6, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    .line 42
    invoke-static {v6}, Lcom/umeng/socialize/view/a/i$a;->f(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v6

    iget-object v7, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v7}, Lcom/umeng/socialize/view/a/i$a;->g(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v7

    iget-object v8, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    .line 43
    invoke-static {v8}, Lcom/umeng/socialize/view/a/i$a;->h(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v8

    iget-object v9, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v9}, Lcom/umeng/socialize/view/a/i$a;->i(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v9

    iget-object v10, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v10}, Lcom/umeng/socialize/view/a/i$a;->j(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v10

    iget-object v11, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    .line 44
    invoke-static {v11}, Lcom/umeng/socialize/view/a/i$a;->k(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v11

    iget-object v12, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v12}, Lcom/umeng/socialize/view/a/i$a;->l(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/umeng/socialize/view/a/b/c;-><init>(Landroid/content/Context;IIFFFFIIFIF)V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/i;->b:Lcom/umeng/socialize/view/a/b/c;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->b:Lcom/umeng/socialize/view/a/b/c;

    invoke-super {p0, v0}, Lcom/umeng/socialize/view/a/a;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-super {p0}, Lcom/umeng/socialize/view/a/a;->show()V

    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/i$a;->m(Lcom/umeng/socialize/view/a/i$a;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 49
    const/high16 v0, 0x447a0000    # 1000.0f

    iget-object v1, p0, Lcom/umeng/socialize/view/a/i;->a:Lcom/umeng/socialize/view/a/i$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/i$a;->n(Lcom/umeng/socialize/view/a/i$a;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v2, v0

    .line 50
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/i;->c:Ljava/util/Timer;

    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/view/a/i;->c:Ljava/util/Timer;

    new-instance v1, Lcom/umeng/socialize/view/a/k;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/a/k;-><init>(Lcom/umeng/socialize/view/a/i;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 64
    :cond_1
    return-void
.end method
