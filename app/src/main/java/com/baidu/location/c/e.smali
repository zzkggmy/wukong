.class public Lcom/baidu/location/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/e$c;,
        Lcom/baidu/location/c/e$b;,
        Lcom/baidu/location/c/e$a;,
        Lcom/baidu/location/c/e$f;,
        Lcom/baidu/location/c/e$e;,
        Lcom/baidu/location/c/e$d;
    }
.end annotation


# static fields
.field private static j:Lcom/baidu/location/c/e;


# instance fields
.field private A:Lcom/baidu/location/c/h;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private G:I

.field private H:Lcom/baidu/location/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/location/c/c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:Lcom/baidu/location/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/location/c/c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private K:D

.field private L:D

.field private M:D

.field private N:Z

.field private O:Z

.field private P:Ljava/util/List;

.field private Q:I

.field private R:I

.field private S:Lcom/baidu/location/c/a;

.field private T:Ljava/lang/String;

.field private U:Lcom/baidu/location/c/d;

.field private V:Z

.field private W:I

.field private X:Lcom/baidu/location/BDLocation;

.field private Y:Z

.field a:Z

.field b:Z

.field public c:Lcom/baidu/location/c/e$d;

.field public d:Ljava/text/SimpleDateFormat;

.field private final e:I

.field private f:Z

.field private g:Lcom/baidu/location/BDLocationListener;

.field private h:Lcom/baidu/location/BDLocationListener;

.field private i:I

.field private k:J

.field private volatile l:Z

.field private m:Lcom/baidu/location/c/i;

.field private n:Lcom/baidu/location/c/e$e;

.field private o:Lcom/baidu/location/c/e$f;

.field private p:J

.field private q:Z

.field private r:Z

.field private s:J

.field private t:I

.field private u:I

.field private v:Lcom/baidu/location/c/i$a;

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lcom/baidu/location/c/e;->e:I

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->a:Z

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->b:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/location/c/e;->i:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/baidu/location/c/e;->k:J

    iput-boolean v4, p0, Lcom/baidu/location/c/e;->l:Z

    iput-object v2, p0, Lcom/baidu/location/c/e;->c:Lcom/baidu/location/c/e$d;

    iput-object v2, p0, Lcom/baidu/location/c/e;->m:Lcom/baidu/location/c/i;

    iput-object v2, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$e;

    iput-object v2, p0, Lcom/baidu/location/c/e;->o:Lcom/baidu/location/c/e$f;

    iput-wide v8, p0, Lcom/baidu/location/c/e;->p:J

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->q:Z

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->r:Z

    iput-wide v8, p0, Lcom/baidu/location/c/e;->s:J

    iput v3, p0, Lcom/baidu/location/c/e;->t:I

    iput v3, p0, Lcom/baidu/location/c/e;->u:I

    iput v3, p0, Lcom/baidu/location/c/e;->w:I

    iput v3, p0, Lcom/baidu/location/c/e;->x:I

    iput-object v2, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/c/e;->z:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/c/e;->A:Lcom/baidu/location/c/h;

    iput-object v2, p0, Lcom/baidu/location/c/e;->B:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/c/e;->C:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/c/e;->D:Ljava/lang/String;

    iput v3, p0, Lcom/baidu/location/c/e;->E:I

    iput-boolean v4, p0, Lcom/baidu/location/c/e;->F:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/location/c/e;->G:I

    iput-object v2, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/location/c/e;->I:I

    iput-object v2, p0, Lcom/baidu/location/c/e;->J:Lcom/baidu/location/c/c;

    iput-wide v6, p0, Lcom/baidu/location/c/e;->K:D

    iput-wide v6, p0, Lcom/baidu/location/c/e;->L:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/baidu/location/c/e;->M:D

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->N:Z

    iput-boolean v4, p0, Lcom/baidu/location/c/e;->O:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/e;->P:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/c/e;->Q:I

    iput v3, p0, Lcom/baidu/location/c/e;->R:I

    iput-object v2, p0, Lcom/baidu/location/c/e;->T:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/c/e;->U:Lcom/baidu/location/c/d;

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->V:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->d:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/c/e;->W:I

    iput-object v2, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->Y:Z

    iput-boolean v3, p0, Lcom/baidu/location/c/e;->f:Z

    new-instance v0, Lcom/baidu/location/c/f;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/f;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->g:Lcom/baidu/location/BDLocationListener;

    new-instance v0, Lcom/baidu/location/c/e$d;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/e$d;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->c:Lcom/baidu/location/c/e$d;

    new-instance v0, Lcom/baidu/location/c/g;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/g;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->v:Lcom/baidu/location/c/i$a;

    new-instance v0, Lcom/baidu/location/c/i;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/c/e;->v:Lcom/baidu/location/c/i$a;

    invoke-direct {v0, v1, v2}, Lcom/baidu/location/c/i;-><init>(Landroid/content/Context;Lcom/baidu/location/c/i$a;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->m:Lcom/baidu/location/c/i;

    new-instance v0, Lcom/baidu/location/c/e$f;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/e$f;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->o:Lcom/baidu/location/c/e$f;

    new-instance v0, Lcom/baidu/location/c/c;

    iget v1, p0, Lcom/baidu/location/c/e;->G:I

    invoke-direct {v0, v1}, Lcom/baidu/location/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    new-instance v0, Lcom/baidu/location/c/c;

    iget v1, p0, Lcom/baidu/location/c/e;->I:I

    invoke-direct {v0, v1}, Lcom/baidu/location/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->J:Lcom/baidu/location/c/c;

    new-instance v0, Lcom/baidu/location/c/a;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/e;->M:D

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/e;->W:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;J)J
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/e;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;)Lcom/baidu/location/BDLocation;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/baidu/location/c/e;
    .locals 2

    const-class v1, Lcom/baidu/location/c/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/c/e;

    invoke-direct {v0}, Lcom/baidu/location/c/e;-><init>()V

    sput-object v0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e;

    :cond_0
    sget-object v0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Lcom/baidu/location/f/g;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/f/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->C:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/baidu/location/f/g;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 14

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getIndoorSurpportPolygon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getIndoorLocationSurpportBuidlingID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/c/e;->A:Lcom/baidu/location/c/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/c/e;->A:Lcom/baidu/location/c/h;

    invoke-virtual {v1}, Lcom/baidu/location/c/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getBuildingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getIndoorSurpportPolygon()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [Landroid/location/Location;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-object v4, v2, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/location/Location;

    const-string v6, "gps"

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/baidu/location/c/h;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getIndoorLocationSurpportBuidlingID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/baidu/location/c/h;-><init>(Ljava/lang/String;[Landroid/location/Location;)V

    iput-object v1, p0, Lcom/baidu/location/c/e;->A:Lcom/baidu/location/c/h;

    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/e;->t:I

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getBuildingID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->r:Z

    iget v1, p0, Lcom/baidu/location/c/e;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/location/c/e;->u:I

    iget v1, p0, Lcom/baidu/location/c/e;->u:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->d()V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/baidu/location/a/j;->c()Lcom/baidu/location/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/j;->b(Lcom/baidu/location/BDLocation;)V

    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/baidu/location/c/e;->r:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/c/e;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lcom/baidu/location/c/a/d;->a()Lcom/baidu/location/c/a/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x15

    invoke-direct {p0, v1, v0}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/BDLocation;I)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/baidu/location/c/e;->o:Lcom/baidu/location/c/e$f;

    invoke-virtual {v0}, Lcom/baidu/location/c/e$f;->c()V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/e;->w:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/e;->u:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->r:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setIndoorLocMode(Z)V

    iget-wide v2, p0, Lcom/baidu/location/c/e;->K:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_a

    iget-wide v2, p0, Lcom/baidu/location/c/e;->L:D

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->L:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->K:D

    :cond_b
    iget-object v1, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    :cond_c
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getBuildingID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/e;->z:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getBuildingName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/e;->B:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/e;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/c/e;->D:Ljava/lang/String;

    const-string v2, "ble"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/baidu/location/c/e;->O:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->L:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->K:D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->O:Z

    :cond_d
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->isParkAvailable()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/c/e;->E:I

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/baidu/location/c/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/baidu/location/c/e;->N:Z

    if-nez v1, :cond_e

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/baidu/location/c/e;->K:D

    long-to-double v6, v2

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/e;->M:D

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, p0, Lcom/baidu/location/c/e;->M:D

    sub-double/2addr v6, v8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/e;->L:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/baidu/location/c/e;->M:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-wide v10, p0, Lcom/baidu/location/c/e;->M:D

    sub-double/2addr v8, v10

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    long-to-double v8, v2

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    long-to-double v2, v2

    div-double v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    :cond_e
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->L:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->K:D

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_10

    iget v1, p0, Lcom/baidu/location/c/e;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/location/c/e;->t:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->r:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->V:Z

    iget v1, p0, Lcom/baidu/location/c/e;->t:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->d()V

    goto/16 :goto_3

    :cond_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/c/e;->t:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->r:Z

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    const/16 v0, 0x15

    invoke-direct {p0, v1, v0}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/BDLocation;I)V

    goto/16 :goto_4
.end method

.method private a(Lcom/baidu/location/BDLocation;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/baidu/location/BDLocation;I)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Lcom/baidu/location/BDLocationListener;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Lcom/baidu/location/BDLocationListener;

    invoke-interface {v0, p1}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    :goto_0
    return-void

    :cond_3
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    iget-object v1, p0, Lcom/baidu/location/c/e;->c:Lcom/baidu/location/c/e$d;

    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/e$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/baidu/location/c/e;->W:I

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setIndoorNetworkState(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Lcom/baidu/location/BDLocation;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/BDLocation;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e;->l:Z

    return p1
.end method

.method private a(DDDD)[D
    .locals 17

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const-wide v8, 0x415854a640000000L    # 6378137.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    div-double v12, p5, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    div-double v14, p5, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double v12, p5, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    div-double v8, p5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v2, v12

    sub-double v2, v8, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    add-double/2addr v2, v4

    const/4 v1, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;DDDD)[D
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/baidu/location/c/e;->a(DDDD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/c/e;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/e;->L:D

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Lcom/baidu/location/BDLocation;)Lcom/baidu/location/BDLocation;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->X:Lcom/baidu/location/BDLocation;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/c/e;)Lcom/baidu/location/c/i;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->m:Lcom/baidu/location/c/i;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->T:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/os/Message;)V
    .locals 14

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    iget-wide v2, p0, Lcom/baidu/location/c/e;->K:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/baidu/location/c/e;->L:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->L:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->K:D

    :cond_1
    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/baidu/location/c/e;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setFloor(Ljava/lang/String;)V

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/baidu/location/c/e;->K:D

    long-to-double v6, v2

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/e;->M:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/e;->M:D

    sub-double v6, v12, v6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/location/c/e;->L:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/baidu/location/c/e;->M:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/baidu/location/c/e;->M:D

    sub-double v8, v12, v8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    long-to-double v8, v2

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    long-to-double v2, v2

    div-double v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/c/e;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->L:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->K:D

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/BDLocation;I)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e;->V:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/location/c/e;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/e;->K:D

    return-wide p1
.end method

.method static synthetic c(Lcom/baidu/location/c/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/e;->W:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/location/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e;->N:Z

    return p1
.end method

.method static synthetic d(Lcom/baidu/location/c/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->Y:Z

    return v0
.end method

.method static synthetic e(Lcom/baidu/location/c/e;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->K:D

    return-wide v0
.end method

.method static synthetic f(Lcom/baidu/location/c/e;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->L:D

    return-wide v0
.end method

.method static synthetic g(Lcom/baidu/location/c/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/location/c/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/location/c/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/location/c/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/e;->E:I

    return v0
.end method

.method private j()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    invoke-virtual {v0}, Lcom/baidu/location/c/c;->clear()V

    iget-object v0, p0, Lcom/baidu/location/c/e;->J:Lcom/baidu/location/c/c;

    invoke-virtual {v0}, Lcom/baidu/location/c/c;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/e;->s:J

    iput v2, p0, Lcom/baidu/location/c/e;->t:I

    iput v2, p0, Lcom/baidu/location/c/e;->E:I

    iput v2, p0, Lcom/baidu/location/c/e;->x:I

    iput-object v3, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/c/e;->V:Z

    iput-object v3, p0, Lcom/baidu/location/c/e;->z:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/e;->B:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/e;->C:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/c/e;->D:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->F:Z

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/baidu/location/c/e;->M:D

    iput-wide v4, p0, Lcom/baidu/location/c/e;->K:D

    iput-wide v4, p0, Lcom/baidu/location/c/e;->L:D

    iput v2, p0, Lcom/baidu/location/c/e;->w:I

    iput v2, p0, Lcom/baidu/location/c/e;->u:I

    iput-boolean v2, p0, Lcom/baidu/location/c/e;->N:Z

    iput v2, p0, Lcom/baidu/location/c/e;->R:I

    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/location/a/k;->c(Z)V

    iget-object v0, p0, Lcom/baidu/location/c/e;->U:Lcom/baidu/location/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->U:Lcom/baidu/location/c/d;

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->a()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/baidu/location/c/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->D:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->l:Z

    iget-object v0, p0, Lcom/baidu/location/c/e;->o:Lcom/baidu/location/c/e$f;

    invoke-virtual {v0}, Lcom/baidu/location/c/e$f;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/e;->p:J

    :cond_0
    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 10

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    invoke-virtual {v1}, Lcom/baidu/location/c/c;->size()I

    move-result v8

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    move v5, v1

    move-object v6, v2

    :goto_0
    if-ge v5, v8, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    invoke-virtual {v1, v5}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    :cond_1
    :goto_2
    return-object v4

    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_7

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    move-object v2, v1

    move v1, v9

    :goto_4
    move v3, v1

    move-object v4, v2

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/baidu/location/c/e;->G:I

    if-ne v8, v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v2, v8, -0x3

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v2, v8, -0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    iget-object v4, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v1, 0x3

    if-lt v8, v1, :cond_1

    iget v1, p0, Lcom/baidu/location/c/e;->G:I

    if-gt v8, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v2, v8, -0x3

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v2, v3}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v2, v8, -0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v2, v3}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v1

    goto/16 :goto_2

    :cond_7
    move v1, v3

    move-object v2, v4

    goto/16 :goto_4
.end method

.method static synthetic l(Lcom/baidu/location/c/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->r:Z

    return v0
.end method

.method static synthetic m(Lcom/baidu/location/c/e;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/e;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/location/c/e;->w:I

    return v0
.end method

.method static synthetic n(Lcom/baidu/location/c/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/e;->w:I

    return v0
.end method

.method static synthetic o(Lcom/baidu/location/c/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/e;->k()V

    return-void
.end method

.method static synthetic p(Lcom/baidu/location/c/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->l:Z

    return v0
.end method

.method static synthetic q(Lcom/baidu/location/c/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->k:J

    return-wide v0
.end method

.method static synthetic r(Lcom/baidu/location/c/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->p:J

    return-wide v0
.end method

.method static synthetic s(Lcom/baidu/location/c/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->s:J

    return-wide v0
.end method

.method static synthetic t(Lcom/baidu/location/c/e;)Lcom/baidu/location/c/h;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->A:Lcom/baidu/location/c/h;

    return-object v0
.end method

.method static synthetic u(Lcom/baidu/location/c/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z

    return v0
.end method

.method static synthetic v(Lcom/baidu/location/c/e;)Lcom/baidu/location/c/c;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    return-object v0
.end method

.method static synthetic w(Lcom/baidu/location/c/e;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/e;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/location/c/e;->t:I

    return v0
.end method

.method static synthetic x(Lcom/baidu/location/c/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/e;->t:I

    return v0
.end method

.method static synthetic y(Lcom/baidu/location/c/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/e;->i:I

    return v0
.end method

.method static synthetic z(Lcom/baidu/location/c/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->T:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)Z
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->A:Lcom/baidu/location/c/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->A:Lcom/baidu/location/c/h;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/baidu/location/c/h;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->Y:Z

    :goto_0
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->Y:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->Y:Z

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->H:Lcom/baidu/location/c/c;

    invoke-virtual {v0}, Lcom/baidu/location/c/c;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/e;->s:J

    iget-object v0, p0, Lcom/baidu/location/c/e;->m:Lcom/baidu/location/c/i;

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->a()V

    new-instance v0, Lcom/baidu/location/c/e$e;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/e$e;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$e;

    iget-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$e;

    invoke-virtual {v0}, Lcom/baidu/location/c/e$e;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/c/e;->m:Lcom/baidu/location/c/i;

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->b()V

    iget-object v0, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/a;

    invoke-virtual {v0}, Lcom/baidu/location/c/a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/e$e;->a(Lcom/baidu/location/c/e$e;Z)Z

    iget-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$e;

    invoke-virtual {v0}, Lcom/baidu/location/c/e$e;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$e;

    :cond_2
    invoke-direct {p0}, Lcom/baidu/location/c/e;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->y:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/e;->z:Ljava/lang/String;

    return-object v0
.end method
