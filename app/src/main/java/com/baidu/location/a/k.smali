.class public Lcom/baidu/location/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static d:Lcom/baidu/location/a/k;


# instance fields
.field private a:[F

.field private b:[F

.field private c:Landroid/hardware/SensorManager;

.field private e:F

.field private f:D

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:F

.field private l:J

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:J

.field private p:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/a/k;->f:D

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->g:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->h:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->i:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/k;->k:F

    iput-wide v4, p0, Lcom/baidu/location/a/k;->l:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->n:Z

    iput-wide v4, p0, Lcom/baidu/location/a/k;->o:J

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->p:Z

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->j:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/a/k;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/baidu/location/a/k;
    .locals 2

    const-class v1, Lcom/baidu/location/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/k;

    invoke-direct {v0}, Lcom/baidu/location/a/k;-><init>()V

    sput-object v0, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/a/k;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/a/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/k;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->h:Z

    return v0
.end method

.method static synthetic k()Lcom/baidu/location/a/k;
    .locals 1

    sget-object v0, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/a/k;

    return-object v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/baidu/location/a/k;->p:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/a/k;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->p:Z

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/a/k;->h:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/g/a;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/a/l;

    invoke-direct {v1, p0}, Lcom/baidu/location/a/l;-><init>(Lcom/baidu/location/a/k;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/k;->g:Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/a/k;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/a/k;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->i:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/baidu/location/a/k;->g:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/baidu/location/a/k;->i:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->p:Z

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/a/k;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->p:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->n:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/k;->k:F

    iget-object v0, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/baidu/location/a/k;->h:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k;->c:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/baidu/location/a/k;->d:Lcom/baidu/location/a/k;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->p:Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/a/k;->o:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->o:J

    invoke-direct {p0}, Lcom/baidu/location/a/k;->l()V

    :cond_1
    return-void
.end method

.method public e()F
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/baidu/location/a/k;->j:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/baidu/location/a/k;->l:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/location/a/k;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/location/a/k;->f()F

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/baidu/location/a/k;->k:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lcom/baidu/location/a/k;->k:F

    goto :goto_0
.end method

.method public f()F
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->j:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/baidu/location/a/k;->l:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v2

    move v2, v1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return v2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->i:Z

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/a/k;->e:F

    return v0
.end method

.method public j()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/a/k;->f:D

    return-wide v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/baidu/location/a/k;->a:[F

    iget-object v0, p0, Lcom/baidu/location/a/k;->a:[F

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/k;->a:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x0

    aget v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/location/a/k;->e:F

    iget v0, p0, Lcom/baidu/location/a/k;->e:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/a/k;->e:F

    float-to-double v0, v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/location/a/k;->e:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v2, p0, Lcom/baidu/location/a/k;->e:F

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/baidu/location/a/k;->e:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_1

    :sswitch_1
    :try_start_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/baidu/location/a/k;->b:[F

    iget-object v0, p0, Lcom/baidu/location/a/k;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/baidu/location/a/k;->k:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->l:J

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->h:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/baidu/location/a/k;->l:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/a/k;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lcom/baidu/location/a/k;->k:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const v0, 0x447d5000    # 1013.25f

    iget-object v1, p0, Lcom/baidu/location/a/k;->b:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->f:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
