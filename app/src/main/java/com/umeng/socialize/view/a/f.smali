.class public Lcom/umeng/socialize/view/a/f;
.super Lcom/umeng/socialize/view/a/a;
.source "ACProgressFlower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/a/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/umeng/socialize/view/a/f$a;

.field private b:Lcom/umeng/socialize/view/a/b/b;

.field private c:I

.field private d:Ljava/util/Timer;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/a/f$a;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p1}, Lcom/umeng/socialize/view/a/f$a;->a(Lcom/umeng/socialize/view/a/f$a;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/a/a;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/a/f;->c:I

    .line 22
    iput-object p1, p0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    .line 23
    new-instance v0, Lcom/umeng/socialize/view/a/g;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/a/g;-><init>(Lcom/umeng/socialize/view/a/f;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/a/f;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/a/f$a;Lcom/umeng/socialize/view/a/g;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/a/f;-><init>(Lcom/umeng/socialize/view/a/f$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/f;I)I
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lcom/umeng/socialize/view/a/f;->c:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/f;Lcom/umeng/socialize/view/a/b/b;)Lcom/umeng/socialize/view/a/b/b;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/umeng/socialize/view/a/f;->b:Lcom/umeng/socialize/view/a/b/b;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/f;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/umeng/socialize/view/a/f;->d:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/f;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/umeng/socialize/view/a/f;->d:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/umeng/socialize/view/a/f;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/umeng/socialize/view/a/f;->c:I

    return v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/a/f;)Lcom/umeng/socialize/view/a/f$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/a/f;)Lcom/umeng/socialize/view/a/b/b;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/umeng/socialize/view/a/f;->b:Lcom/umeng/socialize/view/a/b/b;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/a/f;)I
    .locals 2

    .prologue
    .line 12
    iget v0, p0, Lcom/umeng/socialize/view/a/f;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/socialize/view/a/f;->c:I

    return v0
.end method


# virtual methods
.method public show()V
    .locals 21

    .prologue
    .line 37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/socialize/view/a/f;->b:Lcom/umeng/socialize/view/a/b/b;

    if-nez v2, :cond_0

    .line 38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v2}, Lcom/umeng/socialize/view/a/f$a;->a(Lcom/umeng/socialize/view/a/f$a;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/view/a/f;->a(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v3}, Lcom/umeng/socialize/view/a/f$a;->b(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v4, v2

    .line 39
    new-instance v2, Lcom/umeng/socialize/view/a/b/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v3}, Lcom/umeng/socialize/view/a/f$a;->a(Lcom/umeng/socialize/view/a/f$a;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v5}, Lcom/umeng/socialize/view/a/f$a;->c(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v6}, Lcom/umeng/socialize/view/a/f$a;->d(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v7}, Lcom/umeng/socialize/view/a/f$a;->e(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    .line 40
    invoke-static {v8}, Lcom/umeng/socialize/view/a/f$a;->f(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v9}, Lcom/umeng/socialize/view/a/f$a;->g(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v10}, Lcom/umeng/socialize/view/a/f$a;->h(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v11}, Lcom/umeng/socialize/view/a/f$a;->i(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v12}, Lcom/umeng/socialize/view/a/f$a;->j(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    .line 41
    invoke-static {v13}, Lcom/umeng/socialize/view/a/f$a;->k(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v14}, Lcom/umeng/socialize/view/a/f$a;->l(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    .line 42
    invoke-static {v15}, Lcom/umeng/socialize/view/a/f$a;->m(Lcom/umeng/socialize/view/a/f$a;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/umeng/socialize/view/a/f$a;->n(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/umeng/socialize/view/a/f$a;->o(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/umeng/socialize/view/a/f$a;->p(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/umeng/socialize/view/a/f$a;->q(Lcom/umeng/socialize/view/a/f$a;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/umeng/socialize/view/a/f$a;->r(Lcom/umeng/socialize/view/a/f$a;)Z

    move-result v20

    invoke-direct/range {v2 .. v20}, Lcom/umeng/socialize/view/a/b/b;-><init>(Landroid/content/Context;IIFFIIFFFIILjava/lang/String;FIFIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/umeng/socialize/view/a/f;->b:Lcom/umeng/socialize/view/a/b/b;

    .line 44
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/socialize/view/a/f;->b:Lcom/umeng/socialize/view/a/b/b;

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Lcom/umeng/socialize/view/a/a;->setContentView(Landroid/view/View;)V

    .line 45
    invoke-super/range {p0 .. p0}, Lcom/umeng/socialize/view/a/a;->show()V

    .line 47
    const/high16 v2, 0x447a0000    # 1000.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/view/a/f;->a:Lcom/umeng/socialize/view/a/f$a;

    invoke-static {v3}, Lcom/umeng/socialize/view/a/f$a;->s(Lcom/umeng/socialize/view/a/f$a;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-long v4, v2

    .line 48
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/umeng/socialize/view/a/f;->d:Ljava/util/Timer;

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/socialize/view/a/f;->d:Ljava/util/Timer;

    new-instance v3, Lcom/umeng/socialize/view/a/h;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/umeng/socialize/view/a/h;-><init>(Lcom/umeng/socialize/view/a/f;)V

    move-wide v6, v4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 65
    return-void
.end method
