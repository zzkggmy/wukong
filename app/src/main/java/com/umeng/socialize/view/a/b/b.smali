.class public final Lcom/umeng/socialize/view/a/b/b;
.super Landroid/view/View;
.source "FlowerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/a/b/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/view/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:[I

.field private k:Landroid/os/Handler;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFFIIFFFIILjava/lang/String;FIFIZ)V
    .locals 19

    .prologue
    .line 47
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v2, Lcom/umeng/socialize/view/a/b/b$a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/umeng/socialize/view/a/b/b$a;-><init>(Lcom/umeng/socialize/view/a/b/b;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/umeng/socialize/view/a/b/b;->k:Landroid/os/Handler;

    .line 49
    move/from16 v0, p17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/umeng/socialize/view/a/b/b;->p:I

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p18

    .line 50
    invoke-direct/range {v2 .. v18}, Lcom/umeng/socialize/view/a/b/b;->a(IIFFIIFFFIILjava/lang/String;FIFZ)V

    .line 53
    return-void
.end method

.method private a(IIFFIIFFFIILjava/lang/String;FIFZ)V
    .locals 8

    .prologue
    .line 61
    if-eqz p12, :cond_0

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p16, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/umeng/socialize/view/a/b/b;->q:Z

    .line 63
    iput p1, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    .line 64
    iput p6, p0, Lcom/umeng/socialize/view/a/b/b;->c:I

    .line 65
    iput p4, p0, Lcom/umeng/socialize/view/a/b/b;->d:F

    .line 67
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->f:Landroid/graphics/Paint;

    .line 68
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->f:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->f:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->g:Landroid/graphics/Paint;

    .line 73
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->g:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->g:Landroid/graphics/Paint;

    int-to-float v3, p5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    if-eqz p12, :cond_1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/umeng/socialize/view/a/b/b;->m:Ljava/lang/String;

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->h:Landroid/graphics/Paint;

    .line 80
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->h:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->h:Landroid/graphics/Paint;

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->h:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, p15

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->h:Landroid/graphics/Paint;

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 85
    iget-object v3, p0, Lcom/umeng/socialize/view/a/b/b;->h:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p12

    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 86
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    .line 87
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/umeng/socialize/view/a/b/b;->o:I

    .line 92
    :goto_1
    iget-boolean v2, p0, Lcom/umeng/socialize/view/a/b/b;->q:Z

    if-eqz v2, :cond_2

    .line 93
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v6, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v7, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->e:Landroid/graphics/RectF;

    .line 94
    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v3, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/umeng/socialize/view/a/b/b;->b:I

    .line 100
    :goto_2
    new-instance v2, Lcom/umeng/socialize/view/a/a/a;

    invoke-direct {v2, p6}, Lcom/umeng/socialize/view/a/a/a;-><init>(I)V

    .line 101
    iget v3, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v4, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    int-to-float v4, v4

    mul-float v4, v4, p8

    float-to-int v4, v4

    iget v5, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    int-to-float v5, v5

    mul-float v5, v5, p9

    float-to-int v5, v5

    iget v7, p0, Lcom/umeng/socialize/view/a/b/b;->b:I

    move v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/umeng/socialize/view/a/a/a;->a(IIIII)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/view/a/b/b;->i:Ljava/util/List;

    .line 102
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p7

    float-to-int v3, v3

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v2, v0, v1, p6, v3}, Lcom/umeng/socialize/view/a/a/a;->a(IIII)[I

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->j:[I

    .line 104
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 89
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    goto :goto_1

    .line 96
    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    int-to-float v5, v5

    iget v6, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v7, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->e:Landroid/graphics/RectF;

    .line 97
    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iput v2, p0, Lcom/umeng/socialize/view/a/b/b;->b:I

    goto :goto_2
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 107
    iput p1, p0, Lcom/umeng/socialize/view/a/b/b;->l:I

    .line 108
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/b;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/b;->e:Landroid/graphics/RectF;

    iget v1, p0, Lcom/umeng/socialize/view/a/b/b;->d:F

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->d:F

    iget-object v3, p0, Lcom/umeng/socialize/view/a/b/b;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 124
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/umeng/socialize/view/a/b/b;->c:I

    if-ge v6, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/b;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/a/a/b;

    .line 126
    iget v1, p0, Lcom/umeng/socialize/view/a/b/b;->l:I

    add-int/2addr v1, v6

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->c:I

    rem-int/2addr v1, v2

    .line 127
    iget-object v2, p0, Lcom/umeng/socialize/view/a/b/b;->g:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/umeng/socialize/view/a/b/b;->j:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-virtual {v0}, Lcom/umeng/socialize/view/a/a/b;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/umeng/socialize/view/a/a/b;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/umeng/socialize/view/a/a/b;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/umeng/socialize/view/a/a/b;->d()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/umeng/socialize/view/a/b/b;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/b;->m:Ljava/lang/String;

    iget v1, p0, Lcom/umeng/socialize/view/a/b/b;->b:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->o:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/umeng/socialize/view/a/b/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/umeng/socialize/view/a/b/b;->q:Z

    if-eqz v0, :cond_0

    .line 114
    iget v0, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v1, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/view/a/b/b;->setMeasuredDimension(II)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget v0, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v1, p0, Lcom/umeng/socialize/view/a/b/b;->a:I

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->n:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/umeng/socialize/view/a/b/b;->p:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/view/a/b/b;->setMeasuredDimension(II)V

    goto :goto_0
.end method
