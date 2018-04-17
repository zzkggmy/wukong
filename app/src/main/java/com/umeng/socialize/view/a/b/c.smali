.class public final Lcom/umeng/socialize/view/a/b/c;
.super Landroid/view/View;
.source "PieView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/a/b/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFFFFIIFIF)V
    .locals 8

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v1, Lcom/umeng/socialize/view/a/b/c$a;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/a/b/c$a;-><init>(Lcom/umeng/socialize/view/a/b/c;)V

    iput-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->j:Landroid/os/Handler;

    .line 36
    iput p2, p0, Lcom/umeng/socialize/view/a/b/c;->f:I

    .line 37
    iput p5, p0, Lcom/umeng/socialize/view/a/b/c;->g:F

    .line 38
    iput p6, p0, Lcom/umeng/socialize/view/a/b/c;->h:F

    .line 40
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p2

    int-to-float v5, p2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->a:Landroid/graphics/RectF;

    .line 42
    add-float v1, p6, p7

    int-to-float v2, p2

    mul-float/2addr v1, v2

    .line 43
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    add-float/2addr v4, v5

    int-to-float v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v1, v6

    sub-float/2addr v5, v6

    int-to-float v6, p2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    sub-float v1, v6, v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/umeng/socialize/view/a/b/c;->b:Landroid/graphics/RectF;

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->c:Landroid/graphics/Paint;

    .line 46
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->c:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->d:Landroid/graphics/Paint;

    .line 51
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->d:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->d:Landroid/graphics/Paint;

    move/from16 v0, p8

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->d:Landroid/graphics/Paint;

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->d:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->e:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->e:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->e:Landroid/graphics/Paint;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->e:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 64
    iput p1, p0, Lcom/umeng/socialize/view/a/b/c;->i:F

    .line 65
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/c;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/c;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/umeng/socialize/view/a/b/c;->g:F

    iget v2, p0, Lcom/umeng/socialize/view/a/b/c;->g:F

    iget-object v3, p0, Lcom/umeng/socialize/view/a/b/c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 76
    iget v0, p0, Lcom/umeng/socialize/view/a/b/c;->f:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/umeng/socialize/view/a/b/c;->f:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/umeng/socialize/view/a/b/c;->f:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/umeng/socialize/view/a/b/c;->h:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/umeng/socialize/view/a/b/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    const-string v0, "23232"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/socialize/view/a/b/c;->i:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/c;->b:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/umeng/socialize/view/a/b/c;->i:F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/umeng/socialize/view/a/b/c;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/umeng/socialize/view/a/b/c;->f:I

    iget v1, p0, Lcom/umeng/socialize/view/a/b/c;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/view/a/b/c;->setMeasuredDimension(II)V

    .line 71
    return-void
.end method
