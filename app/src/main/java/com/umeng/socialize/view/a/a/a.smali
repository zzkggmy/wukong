.class public Lcom/umeng/socialize/view/a/a/a;
.super Ljava/lang/Object;
.source "FlowerDataCalc.java"


# instance fields
.field private a:[D

.field private b:[D


# direct methods
.method public constructor <init>(I)V
    .locals 8

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/umeng/socialize/view/a/a/a;->a:[D

    .line 15
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/umeng/socialize/view/a/a/a;->b:[D

    .line 17
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, p1

    div-double v2, v0, v2

    .line 18
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 19
    int-to-double v4, v0

    mul-double/2addr v4, v2

    .line 20
    iget-object v1, p0, Lcom/umeng/socialize/view/a/a/a;->a:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 21
    iget-object v1, p0, Lcom/umeng/socialize/view/a/a/a;->b:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIIII)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/view/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    move/from16 v0, p1

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 30
    move/from16 v0, p5

    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 31
    sub-int v2, p1, p2

    int-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    .line 32
    move/from16 v0, p3

    int-to-double v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    .line 34
    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p4

    if-ge v2, v0, :cond_0

    .line 35
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/umeng/socialize/view/a/a/a;->a:[D

    aget-wide v12, v12, v2

    mul-double/2addr v12, v8

    .line 36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/umeng/socialize/view/a/a/a;->b:[D

    aget-wide v14, v14, v2

    mul-double/2addr v14, v8

    .line 38
    sub-double v12, v6, v12

    double-to-int v12, v12

    .line 39
    add-double/2addr v14, v4

    double-to-int v13, v14

    .line 41
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/umeng/socialize/view/a/a/a;->a:[D

    aget-wide v14, v14, v2

    mul-double/2addr v14, v10

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/socialize/view/a/a/a;->b:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v2

    mul-double v16, v16, v10

    .line 44
    sub-double v14, v6, v14

    double-to-int v14, v14

    .line 45
    add-double v16, v16, v4

    move-wide/from16 v0, v16

    double-to-int v15, v0

    .line 47
    new-instance v16, Lcom/umeng/socialize/view/a/a/b;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/umeng/socialize/view/a/a/b;-><init>(IIII)V

    .line 48
    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v3
.end method

.method public a(IIII)[I
    .locals 20

    .prologue
    .line 55
    move/from16 v0, p3

    new-array v3, v0, [I

    .line 57
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 61
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 62
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 65
    sub-int/2addr v2, v4

    int-to-double v10, v2

    add-int/lit8 v2, p3, -0x1

    int-to-double v12, v2

    div-double/2addr v10, v12

    .line 66
    sub-int v2, v7, v5

    int-to-double v12, v2

    add-int/lit8 v2, p3, -0x1

    int-to-double v14, v2

    div-double/2addr v12, v14

    .line 67
    sub-int v2, v8, v6

    int-to-double v8, v2

    add-int/lit8 v2, p3, -0x1

    int-to-double v14, v2

    div-double/2addr v8, v14

    .line 69
    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v2, v0, :cond_0

    .line 70
    int-to-double v14, v4

    int-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    add-double v14, v14, v16

    double-to-int v7, v14

    int-to-double v14, v5

    int-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v14, v14, v16

    double-to-int v14, v14

    int-to-double v0, v6

    move-wide/from16 v16, v0

    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    move/from16 v0, p4

    invoke-static {v0, v7, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 74
    aput v7, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v3
.end method
