.class public Lcom/umeng/socialize/shareboard/b/b;
.super Landroid/view/ViewGroup;
.source "UMActionFrame.java"


# static fields
.field private static final a:I = 0x3

.field private static final b:I = 0x1

.field private static final c:I = 0x2


# instance fields
.field private d:I

.field private e:I

.field private f:[[I

.field private g:Lcom/umeng/socialize/shareboard/b/a;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    .line 29
    iput v2, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    move-object v0, v1

    .line 30
    check-cast v0, [[I

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    .line 37
    iput v2, p0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->k:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    .line 45
    iput-object v1, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    const-string v1, "umeng_socialize_grid_divider_line"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->color(Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    .line 95
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    .line 29
    iput v2, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    move-object v0, v1

    .line 30
    check-cast v0, [[I

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    .line 37
    iput v2, p0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->k:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    .line 45
    iput-object v1, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    const-string v1, "umeng_socialize_grid_divider_line"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->color(Ljava/lang/String;)I

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    .line 80
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    .line 29
    iput v2, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    move-object v0, v1

    .line 30
    check-cast v0, [[I

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    .line 37
    iput v2, p0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->k:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    .line 45
    iput-object v1, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    const-string v1, "umeng_socialize_grid_divider_line"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->color(Ljava/lang/String;)I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    .line 64
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 280
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    .line 297
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 286
    const/4 v0, 0x6

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/shareboard/b/a;->a()I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    invoke-virtual {v1}, Lcom/umeng/socialize/shareboard/b/a;->a()I

    move-result v1

    iget v2, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    .line 292
    iget v1, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    rem-int/2addr v0, v1

    if-lez v0, :cond_3

    .line 293
    iget v0, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    .line 295
    :cond_3
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### row = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget v0, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    iget v1, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/umeng/socialize/shareboard/b/a;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    return-object v0
.end method

.method public a(I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    array-length v4, v0

    .line 238
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    aget-object v0, v0, v2

    array-length v5, v0

    .line 240
    mul-int v0, v4, v5

    .line 242
    if-le p1, v0, :cond_0

    move p1, v0

    .line 244
    :cond_0
    rem-int v1, p1, v4

    .line 245
    if-lez v1, :cond_1

    sub-int v1, v4, v1

    .line 247
    :goto_0
    sub-int/2addr v0, p1

    sub-int v6, v0, v1

    .line 249
    add-int v7, v6, p1

    move v3, v2

    move v0, v2

    .line 251
    :goto_1
    if-ge v3, v5, :cond_5

    move v1, v0

    move v0, v2

    .line 252
    :goto_2
    if-ge v0, v4, :cond_4

    .line 253
    if-lt v1, v6, :cond_2

    if-ge v1, v7, :cond_2

    .line 254
    iget-object v8, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aput v9, v8, v3

    .line 260
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v1, v2

    .line 245
    goto :goto_0

    .line 255
    :cond_2
    if-lt v1, v7, :cond_3

    .line 256
    iget-object v8, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x2

    aput v9, v8, v3

    goto :goto_3

    .line 258
    :cond_3
    iget-object v8, p0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x3

    aput v9, v8, v3

    goto :goto_3

    .line 251
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_1

    .line 263
    :cond_5
    return-void
.end method

.method public a(Lcom/umeng/socialize/shareboard/b/a;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    .line 309
    invoke-direct {p0}, Lcom/umeng/socialize/shareboard/b/b;->b()V

    .line 310
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/b/b;->requestLayout()V

    .line 311
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 321
    iput p1, p0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    .line 322
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 332
    iput p1, p0, Lcom/umeng/socialize/shareboard/b/b;->k:I

    .line 333
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 343
    iput p1, p0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    .line 344
    return-void
.end method

.method public e(I)I
    .locals 3

    .prologue
    .line 355
    iget v0, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/umeng/socialize/shareboard/b/b;->d:I

    div-int/2addr v0, v1

    .line 356
    iget v1, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/umeng/socialize/shareboard/b/b;->e:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 358
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    if-nez v4, :cond_1

    .line 205
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/umeng/socialize/shareboard/b/b;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    invoke-virtual {v4}, Lcom/umeng/socialize/shareboard/b/a;->a()I

    move-result v4

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/umeng/socialize/shareboard/b/b;->a(I)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/umeng/socialize/shareboard/b/b;->removeAllViews()V

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    array-length v11, v4

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v12, v4

    .line 134
    move-object/from16 v0, p0

    iget v4, v0, Lcom/umeng/socialize/shareboard/b/b;->i:I

    add-int/lit8 v5, v11, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int v13, v4, v11

    .line 135
    move-object/from16 v0, p0

    iget v4, v0, Lcom/umeng/socialize/shareboard/b/b;->h:I

    add-int/lit8 v5, v12, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int v14, v4, v12

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v5, 0x0

    .line 142
    const/4 v4, 0x0

    move v8, v4

    move v9, v6

    move v6, v7

    :goto_0
    if-ge v8, v12, :cond_0

    .line 143
    const/4 v4, 0x0

    move v7, v4

    move v4, v5

    :goto_1
    if-ge v7, v11, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    aget-object v5, v5, v7

    aget v5, v5, v8

    const/4 v15, 0x1

    if-ne v5, v15, :cond_a

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/umeng/socialize/shareboard/b/b;->g:Lcom/umeng/socialize/shareboard/b/a;

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v4, v0}, Lcom/umeng/socialize/shareboard/b/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 146
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 147
    if-nez v4, :cond_3

    .line 148
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :goto_2
    add-int/lit8 v4, v11, -0x1

    if-ne v7, v4, :cond_4

    const/4 v4, 0x1

    .line 156
    :goto_3
    mul-int v16, v7, v13

    add-int v16, v16, v6

    .line 157
    add-int v17, v16, v13

    .line 158
    mul-int v18, v8, v14

    add-int v18, v18, v9

    .line 159
    add-int v19, v18, v14

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/umeng/socialize/shareboard/b/b;->addView(Landroid/view/View;)V

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13, v14}, Lcom/umeng/socialize/shareboard/b/b;->measureChild(Landroid/view/View;II)V

    .line 162
    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 165
    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    add-int/lit8 v20, v7, 0x1

    aget-object v15, v15, v20

    aget v15, v15, v8

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_2

    .line 166
    new-instance v15, Landroid/view/View;

    invoke-direct {v15, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/umeng/socialize/shareboard/b/b;->k:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/umeng/socialize/shareboard/b/b;->addView(Landroid/view/View;)V

    .line 169
    add-int v20, v16, v13

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, p4

    move/from16 v3, v19

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 173
    :cond_2
    new-instance v15, Landroid/view/View;

    invoke-direct {v15, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 175
    if-nez v4, :cond_5

    .line 176
    move-object/from16 v0, p0

    iget v4, v0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    invoke-virtual {v15, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    move-object/from16 v0, p0

    iget v4, v0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    add-int/2addr v4, v6

    .line 182
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/umeng/socialize/shareboard/b/b;->addView(Landroid/view/View;)V

    .line 183
    add-int v6, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    move/from16 v16, v0

    add-int v16, v16, v17

    move/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v15, v6, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    move/from16 v21, v5

    move v5, v4

    move/from16 v4, v21

    .line 143
    :goto_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    goto/16 :goto_1

    .line 151
    :cond_3
    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 155
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 179
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/umeng/socialize/shareboard/b/b;->k:I

    invoke-virtual {v15, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    const/4 v4, 0x0

    goto :goto_4

    .line 192
    :cond_6
    if-lez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/shareboard/b/b;->f:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    add-int/lit8 v6, v8, -0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    .line 193
    :goto_6
    if-eqz v5, :cond_7

    .line 194
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 195
    move-object/from16 v0, p0

    iget v6, v0, Lcom/umeng/socialize/shareboard/b/b;->j:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/umeng/socialize/shareboard/b/b;->addView(Landroid/view/View;)V

    .line 197
    mul-int v6, v8, v14

    add-int/2addr v6, v9

    .line 198
    move-object/from16 v0, p0

    iget v7, v0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    sub-int v7, v6, v7

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v5, v0, v7, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 200
    :cond_7
    const/4 v7, 0x0

    .line 201
    move-object/from16 v0, p0

    iget v5, v0, Lcom/umeng/socialize/shareboard/b/b;->l:I

    add-int v6, v9, v5

    .line 142
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v9, v6

    move v5, v4

    move v6, v7

    goto/16 :goto_0

    .line 192
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    move v5, v6

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 223
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->h:I

    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/shareboard/b/b;->i:I

    .line 225
    iget v0, p0, Lcom/umeng/socialize/shareboard/b/b;->i:I

    iget v1, p0, Lcom/umeng/socialize/shareboard/b/b;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/shareboard/b/b;->setMeasuredDimension(II)V

    .line 226
    return-void
.end method
