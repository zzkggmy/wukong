.class public Lcom/baidu/location/c/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/i$a;
    }
.end annotation


# instance fields
.field private A:D

.field private B:D

.field private C:D

.field private D:D

.field private E:D

.field private F:D

.field private G:D

.field private H:I

.field private I:F

.field private J:I

.field private K:I

.field private L:[D

.field private M:Z

.field a:Ljava/util/Timer;

.field public b:Landroid/hardware/SensorEventListener;

.field private c:Lcom/baidu/location/c/i$a;

.field private d:Landroid/hardware/SensorManager;

.field private e:Z

.field private f:I

.field private g:Landroid/hardware/Sensor;

.field private h:Landroid/hardware/Sensor;

.field private final i:J

.field private volatile j:I

.field private k:I

.field private l:[F

.field private m:[F

.field private n:[D

.field private o:I

.field private p:[D

.field private q:I

.field private r:I

.field private s:I

.field private t:[D

.field private u:I

.field private v:D

.field private w:I

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/baidu/location/c/i;->i:J

    iput v4, p0, Lcom/baidu/location/c/i;->j:I

    iput v4, p0, Lcom/baidu/location/c/i;->k:I

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/baidu/location/c/i;->l:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/location/c/i;->m:[F

    new-array v0, v3, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/baidu/location/c/i;->n:[D

    const/16 v0, 0x1f

    iput v0, p0, Lcom/baidu/location/c/i;->o:I

    iget v0, p0, Lcom/baidu/location/c/i;->o:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/baidu/location/c/i;->p:[D

    iput v2, p0, Lcom/baidu/location/c/i;->q:I

    const/4 v0, 0x6

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/baidu/location/c/i;->t:[D

    iput v2, p0, Lcom/baidu/location/c/i;->u:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/i;->x:J

    iput v2, p0, Lcom/baidu/location/c/i;->y:I

    iput v2, p0, Lcom/baidu/location/c/i;->z:I

    iput-wide v6, p0, Lcom/baidu/location/c/i;->A:D

    iput-wide v6, p0, Lcom/baidu/location/c/i;->B:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/baidu/location/c/i;->C:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/baidu/location/c/i;->D:D

    iget-wide v0, p0, Lcom/baidu/location/c/i;->D:D

    iput-wide v0, p0, Lcom/baidu/location/c/i;->E:D

    const-wide v0, 0x3feb333333333333L    # 0.85

    iput-wide v0, p0, Lcom/baidu/location/c/i;->F:D

    const-wide v0, 0x3fdae147ae147ae1L    # 0.42

    iput-wide v0, p0, Lcom/baidu/location/c/i;->G:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/c/i;->H:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c/i;->I:F

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/location/c/i;->J:I

    iput v2, p0, Lcom/baidu/location/c/i;->K:I

    iget v0, p0, Lcom/baidu/location/c/i;->J:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/baidu/location/c/i;->L:[D

    iput-boolean v2, p0, Lcom/baidu/location/c/i;->M:Z

    new-instance v0, Lcom/baidu/location/c/j;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/j;-><init>(Lcom/baidu/location/c/i;)V

    iput-object v0, p0, Lcom/baidu/location/c/i;->b:Landroid/hardware/SensorEventListener;

    const-wide v0, 0x3ff999999999999aL    # 1.6

    iput-wide v0, p0, Lcom/baidu/location/c/i;->v:D

    const/16 v0, 0x1b8

    iput v0, p0, Lcom/baidu/location/c/i;->w:I

    :try_start_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/c/i;->d:Landroid/hardware/SensorManager;

    iput p2, p0, Lcom/baidu/location/c/i;->f:I

    iget-object v0, p0, Lcom/baidu/location/c/i;->d:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/i;->g:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/baidu/location/c/i;->d:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/i;->h:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/c/i$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/baidu/location/c/i;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/baidu/location/c/i;->c:Lcom/baidu/location/c/i$a;

    return-void
.end method

.method private a(DDD)D
    .locals 7

    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double v0, p3, p1

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    add-double/2addr v0, v4

    :cond_0
    :goto_0
    mul-double/2addr v0, p5

    add-double/2addr v0, p1

    return-wide v0

    :cond_1
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    sub-double/2addr v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/c/i;DDD)D
    .locals 3

    invoke-direct/range {p0 .. p6}, Lcom/baidu/location/c/i;->a(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a([D)D
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    array-length v6, p1

    move v1, v0

    move-wide v4, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-wide v8, p1, v1

    add-double/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-double v8, v6

    div-double/2addr v4, v8

    :goto_1
    if-ge v0, v6, :cond_1

    aget-wide v8, p1, v0

    sub-double/2addr v8, v4

    aget-wide v10, p1, v0

    sub-double/2addr v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, -0x1

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/location/c/i;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/i;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/c/i;->r:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/c/i;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/i;->j:I

    return p1
.end method

.method private a(D)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/c/i;->t:[D

    iget v1, p0, Lcom/baidu/location/c/i;->u:I

    rem-int/lit8 v1, v1, 0x6

    aput-wide p1, v0, v1

    iget v0, p0, Lcom/baidu/location/c/i;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/c/i;->u:I

    iget v0, p0, Lcom/baidu/location/c/i;->u:I

    rem-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/baidu/location/c/i;->u:I

    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/location/c/i;->k:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/location/c/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/c/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/i;->M:Z

    return p1
.end method

.method private a(FFF)[F
    .locals 9

    const v8, 0x3f4ccccd    # 0.8f

    const v7, 0x3e4ccccc    # 0.19999999f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/baidu/location/c/i;->l:[F

    iget-object v2, p0, Lcom/baidu/location/c/i;->l:[F

    aget v2, v2, v4

    mul-float/2addr v2, v8

    mul-float v3, v7, p1

    add-float/2addr v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Lcom/baidu/location/c/i;->l:[F

    iget-object v2, p0, Lcom/baidu/location/c/i;->l:[F

    aget v2, v2, v5

    mul-float/2addr v2, v8

    mul-float v3, v7, p2

    add-float/2addr v2, v3

    aput v2, v1, v5

    iget-object v1, p0, Lcom/baidu/location/c/i;->l:[F

    iget-object v2, p0, Lcom/baidu/location/c/i;->l:[F

    aget v2, v2, v6

    mul-float/2addr v2, v8

    mul-float v3, v7, p3

    add-float/2addr v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Lcom/baidu/location/c/i;->l:[F

    aget v1, v1, v4

    sub-float v1, p1, v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/baidu/location/c/i;->l:[F

    aget v1, v1, v5

    sub-float v1, p2, v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/baidu/location/c/i;->l:[F

    aget v1, v1, v6

    sub-float v1, p3, v1

    aput v1, v0, v6

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c/i;FFF)[F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/c/i;->a(FFF)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c/i;[F)[F
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/i;->m:[F

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/c/i;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/i;->j:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/location/c/i;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/i;->K:I

    return p1
.end method

.method private b(D)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v2, 0x5

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_1

    iget-object v3, p0, Lcom/baidu/location/c/i;->t:[D

    iget v4, p0, Lcom/baidu/location/c/i;->u:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x6

    rem-int/lit8 v4, v4, 0x6

    aget-wide v4, v3, v4

    iget-object v3, p0, Lcom/baidu/location/c/i;->t:[D

    iget v6, p0, Lcom/baidu/location/c/i;->u:I

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v6, v6, 0x6

    aget-wide v6, v3, v6

    sub-double/2addr v4, v6

    cmpl-double v3, v4, p1

    if-lez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/baidu/location/c/i;)[D
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/i;->L:[D

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/location/c/i;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/i;->K:I

    return v0
.end method

.method static synthetic e(Lcom/baidu/location/c/i;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/i;->K:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/location/c/i;->K:I

    return v0
.end method

.method static synthetic f(Lcom/baidu/location/c/i;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/i;->J:I

    return v0
.end method

.method private f()Z
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/baidu/location/c/i;->J:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/c/i;->L:[D

    aget-wide v2, v2, v0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/baidu/location/c/i;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/i;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/c/i;->s:I

    return v0
.end method

.method private g()V
    .locals 14

    const/4 v7, 0x2

    const-wide v12, 0x4076800000000000L    # 360.0

    const/4 v5, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v0, p0, Lcom/baidu/location/c/i;->r:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-array v2, v5, [F

    iget-object v3, p0, Lcom/baidu/location/c/i;->m:[F

    invoke-static {v3, v10, v2, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v5, [D

    iget-object v4, p0, Lcom/baidu/location/c/i;->n:[D

    invoke-static {v4, v10, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v4, v2, v10

    aget v5, v2, v10

    mul-float/2addr v4, v5

    aget v5, v2, v11

    aget v6, v2, v11

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v2, v7

    aget v2, v2, v7

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-object v2, p0, Lcom/baidu/location/c/i;->p:[D

    iget v6, p0, Lcom/baidu/location/c/i;->q:I

    aput-wide v4, v2, v6

    invoke-direct {p0, v4, v5}, Lcom/baidu/location/c/i;->a(D)V

    iget v2, p0, Lcom/baidu/location/c/i;->z:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/location/c/i;->z:I

    iget-wide v6, p0, Lcom/baidu/location/c/i;->B:D

    cmpl-double v2, v4, v6

    if-lez v2, :cond_7

    iput-wide v4, p0, Lcom/baidu/location/c/i;->B:D

    :cond_2
    :goto_1
    iget v2, p0, Lcom/baidu/location/c/i;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/location/c/i;->q:I

    iget v2, p0, Lcom/baidu/location/c/i;->q:I

    iget v6, p0, Lcom/baidu/location/c/i;->o:I

    if-ne v2, v6, :cond_3

    iput v10, p0, Lcom/baidu/location/c/i;->q:I

    iget-object v2, p0, Lcom/baidu/location/c/i;->p:[D

    invoke-direct {p0, v2}, Lcom/baidu/location/c/i;->a([D)D

    move-result-wide v6

    iget v2, p0, Lcom/baidu/location/c/i;->j:I

    if-nez v2, :cond_8

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpg-double v2, v6, v8

    if-gez v2, :cond_8

    invoke-direct {p0, v10}, Lcom/baidu/location/c/i;->a(I)V

    iput v10, p0, Lcom/baidu/location/c/i;->j:I

    :cond_3
    :goto_2
    iget-wide v6, p0, Lcom/baidu/location/c/i;->x:J

    sub-long v6, v0, v6

    iget v2, p0, Lcom/baidu/location/c/i;->w:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    iget-wide v6, p0, Lcom/baidu/location/c/i;->v:D

    invoke-direct {p0, v6, v7}, Lcom/baidu/location/c/i;->b(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/baidu/location/c/i;->y:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/location/c/i;->y:I

    iput-wide v0, p0, Lcom/baidu/location/c/i;->x:J

    aget-wide v0, v3, v10

    iget v2, p0, Lcom/baidu/location/c/i;->z:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_a

    iget v2, p0, Lcom/baidu/location/c/i;->z:I

    if-lez v2, :cond_a

    iget-wide v2, p0, Lcom/baidu/location/c/i;->B:D

    iget-wide v6, p0, Lcom/baidu/location/c/i;->C:D

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-wide v6, p0, Lcom/baidu/location/c/i;->G:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/baidu/location/c/i;->E:D

    iget-wide v2, p0, Lcom/baidu/location/c/i;->E:D

    iget-wide v6, p0, Lcom/baidu/location/c/i;->F:D

    cmpl-double v2, v2, v6

    if-lez v2, :cond_9

    iget-wide v2, p0, Lcom/baidu/location/c/i;->F:D

    iput-wide v2, p0, Lcom/baidu/location/c/i;->E:D

    :cond_4
    :goto_3
    iget v2, p0, Lcom/baidu/location/c/i;->I:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    cmpl-double v2, v0, v12

    if-lez v2, :cond_5

    sub-double/2addr v0, v12

    :cond_5
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_6

    add-double/2addr v0, v12

    :cond_6
    iput v11, p0, Lcom/baidu/location/c/i;->z:I

    iput-wide v4, p0, Lcom/baidu/location/c/i;->B:D

    iput-wide v4, p0, Lcom/baidu/location/c/i;->C:D

    iget-boolean v2, p0, Lcom/baidu/location/c/i;->M:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/c/i;->c:Lcom/baidu/location/c/i$a;

    iget-wide v4, p0, Lcom/baidu/location/c/i;->E:D

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/baidu/location/c/i$a;->a(DD)V

    goto/16 :goto_0

    :cond_7
    iget-wide v6, p0, Lcom/baidu/location/c/i;->C:D

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    iput-wide v4, p0, Lcom/baidu/location/c/i;->C:D

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v11}, Lcom/baidu/location/c/i;->a(I)V

    iput v11, p0, Lcom/baidu/location/c/i;->j:I

    goto :goto_2

    :cond_9
    iget-wide v2, p0, Lcom/baidu/location/c/i;->E:D

    iget-wide v6, p0, Lcom/baidu/location/c/i;->D:D

    cmpg-double v2, v2, v6

    if-gez v2, :cond_4

    iget-wide v2, p0, Lcom/baidu/location/c/i;->D:D

    iput-wide v2, p0, Lcom/baidu/location/c/i;->E:D

    goto :goto_3

    :cond_a
    iget-wide v2, p0, Lcom/baidu/location/c/i;->D:D

    iput-wide v2, p0, Lcom/baidu/location/c/i;->E:D

    goto :goto_3
.end method

.method static synthetic h(Lcom/baidu/location/c/i;)Z
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/c/i;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/baidu/location/c/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/i;->M:Z

    return v0
.end method

.method static synthetic j(Lcom/baidu/location/c/i;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/i;->h:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/location/c/i;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/i;->d:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/location/c/i;)[D
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/i;->n:[D

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/location/c/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/i;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-boolean v0, p0, Lcom/baidu/location/c/i;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/i;->g:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/c/i;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/baidu/location/c/i;->b:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/baidu/location/c/i;->g:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/baidu/location/c/i;->f:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "UpdateData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/baidu/location/c/i;->a:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/location/c/k;

    invoke-direct {v1, p0}, Lcom/baidu/location/c/k;-><init>(Lcom/baidu/location/c/i;)V

    iget-object v0, p0, Lcom/baidu/location/c/i;->a:Ljava/util/Timer;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/i;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/i;->h:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/c/i;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/baidu/location/c/i;->b:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/baidu/location/c/i;->h:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/baidu/location/c/i;->f:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/c/i;->e:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/c/i;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/baidu/location/c/i;->b:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/baidu/location/c/i;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/location/c/i;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/i;->a:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/i;->e:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/location/c/i;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/baidu/location/c/i;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/location/c/i;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/baidu/location/c/i;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/baidu/location/c/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
