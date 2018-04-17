.class public Lcom/baidu/location/a/j;
.super Lcom/baidu/location/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/j$1;,
        Lcom/baidu/location/a/j$a;,
        Lcom/baidu/location/a/j$b;
    }
.end annotation


# static fields
.field public static h:Z

.field private static i:Lcom/baidu/location/a/j;


# instance fields
.field private A:D

.field private B:Z

.field private C:J

.field private D:J

.field private E:Lcom/baidu/location/a/j$a;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcom/baidu/location/a/j$b;

.field private K:Z

.field final e:I

.field public f:Lcom/baidu/location/a/h$b;

.field public final g:Landroid/os/Handler;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/baidu/location/BDLocation;

.field private m:Lcom/baidu/location/BDLocation;

.field private n:Lcom/baidu/location/f/g;

.field private o:Lcom/baidu/location/f/a;

.field private p:Lcom/baidu/location/f/g;

.field private q:Lcom/baidu/location/f/a;

.field private r:Z

.field private volatile s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lcom/baidu/location/Address;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/j;->i:Lcom/baidu/location/a/j;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/a/j;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/location/a/h;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/location/a/j;->e:I

    iput-boolean v3, p0, Lcom/baidu/location/a/j;->j:Z

    iput-object v1, p0, Lcom/baidu/location/a/j;->f:Lcom/baidu/location/a/h$b;

    iput-object v1, p0, Lcom/baidu/location/a/j;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    iput-object v1, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    iput-object v1, p0, Lcom/baidu/location/a/j;->p:Lcom/baidu/location/f/g;

    iput-object v1, p0, Lcom/baidu/location/a/j;->q:Lcom/baidu/location/f/a;

    iput-boolean v3, p0, Lcom/baidu/location/a/j;->r:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/j;->s:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/j;->t:Z

    iput-wide v4, p0, Lcom/baidu/location/a/j;->u:J

    iput-wide v4, p0, Lcom/baidu/location/a/j;->v:J

    iput-object v1, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/a/j;->B:Z

    iput-wide v4, p0, Lcom/baidu/location/a/j;->C:J

    iput-wide v4, p0, Lcom/baidu/location/a/j;->D:J

    iput-object v1, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    iput-boolean v2, p0, Lcom/baidu/location/a/j;->F:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/j;->G:Z

    iput-boolean v3, p0, Lcom/baidu/location/a/j;->H:Z

    new-instance v0, Lcom/baidu/location/a/h$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/h$a;-><init>(Lcom/baidu/location/a/h;)V

    iput-object v0, p0, Lcom/baidu/location/a/j;->g:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/baidu/location/a/j;->I:Z

    iput-object v1, p0, Lcom/baidu/location/a/j;->J:Lcom/baidu/location/a/j$b;

    iput-boolean v2, p0, Lcom/baidu/location/a/j;->K:Z

    new-instance v0, Lcom/baidu/location/a/h$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/h$b;-><init>(Lcom/baidu/location/a/h;)V

    iput-object v0, p0, Lcom/baidu/location/a/j;->f:Lcom/baidu/location/a/h$b;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/j;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->g(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->K:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/a/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/j;->K:Z

    return p1
.end method

.method private a(Lcom/baidu/location/f/a;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/b;->f()Lcom/baidu/location/f/a;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/f/a;

    iget-object v2, p0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/f/a;

    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/f/a;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/f/a;

    invoke-virtual {p1, v2}, Lcom/baidu/location/f/a;->a(Lcom/baidu/location/f/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/baidu/location/f/g;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->m()Lcom/baidu/location/f/g;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/j;->a:Lcom/baidu/location/f/g;

    iget-object v2, p0, Lcom/baidu/location/a/j;->a:Lcom/baidu/location/f/g;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/a/j;->a:Lcom/baidu/location/f/g;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/a/j;->a:Lcom/baidu/location/f/g;

    invoke-virtual {p1, v2}, Lcom/baidu/location/f/g;->c(Lcom/baidu/location/f/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/location/a/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/location/a/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/j;->t:Z

    return p1
.end method

.method private b(Lcom/baidu/location/f/a;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/a/j;->q:Lcom/baidu/location/f/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/a/j;->q:Lcom/baidu/location/f/a;

    invoke-virtual {p1, v2}, Lcom/baidu/location/f/a;->a(Lcom/baidu/location/f/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized c()Lcom/baidu/location/a/j;
    .locals 2

    const-class v1, Lcom/baidu/location/a/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/j;->i:Lcom/baidu/location/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/j;

    invoke-direct {v0}, Lcom/baidu/location/a/j;-><init>()V

    sput-object v0, Lcom/baidu/location/a/j;->i:Lcom/baidu/location/a/j;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/j;->i:Lcom/baidu/location/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isWaitingLocTag"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/baidu/location/a/j;->h:Z

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->d(Landroid/os/Message;)I

    move-result v0

    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/k;->d()V

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "this type %d is illegal"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->e(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->f(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/baidu/location/a/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->F:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/location/a/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/j;->F:Z

    return p1
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->e(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/k;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->f(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/k;->b()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/location/a/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->G:Z

    return v0
.end method

.method private e(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/h/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/h/j;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/h/j;->i:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/j;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/j;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_3
    :goto_0
    iput-object v9, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    iput-object v10, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->B:Z

    invoke-direct {p0, v10}, Lcom/baidu/location/a/j;->f(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private f(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->r:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/j;->D:J

    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->g(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/a/j;->s:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/j;->D:J

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/baidu/location/a/j;->t:Z

    iget-object v0, p0, Lcom/baidu/location/a/j;->J:Lcom/baidu/location/a/j$b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/location/a/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a/j$b;-><init>(Lcom/baidu/location/a/j;Lcom/baidu/location/a/j$1;)V

    iput-object v0, p0, Lcom/baidu/location/a/j;->J:Lcom/baidu/location/a/j$b;

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/a/j;->K:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/j;->J:Lcom/baidu/location/a/j$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/j;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/j;->J:Lcom/baidu/location/a/j$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/j;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/j;->J:Lcom/baidu/location/a/j$b;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/a/j;->K:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->g(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private g(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/a/j;->u:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/a/j;->u:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lcom/baidu/location/a/j;->s:Z

    iget-object v0, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/j;->a(Lcom/baidu/location/f/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->j:Z

    iget-object v0, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/j;->a(Lcom/baidu/location/f/g;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->B:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/a/j;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    iput-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    iput-object v9, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    :cond_3
    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/k;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/a/k;->a()Lcom/baidu/location/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/k;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/j;->u:J

    invoke-virtual {p0, v9}, Lcom/baidu/location/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/baidu/location/a/j;->l()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/j;->C:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    iput-wide v2, p0, Lcom/baidu/location/a/j;->C:J

    :cond_6
    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/h;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/location/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/baidu/location/h/b;->a(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcom/baidu/location/a/j;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v9, p0, Lcom/baidu/location/a/j;->k:Ljava/lang/String;

    :cond_8
    iget-object v1, p0, Lcom/baidu/location/a/j;->f:Lcom/baidu/location/a/h$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/h$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/f/a;

    iput-object v0, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    iget-object v0, p0, Lcom/baidu/location/a/j;->a:Lcom/baidu/location/f/g;

    iput-object v0, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    invoke-direct {p0}, Lcom/baidu/location/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/f/a;

    iput-object v0, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    iget-object v0, p0, Lcom/baidu/location/a/j;->a:Lcom/baidu/location/f/g;

    iput-object v0, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    :cond_9
    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    if-nez v0, :cond_a

    new-instance v0, Lcom/baidu/location/a/j$a;

    invoke-direct {v0, p0, v9}, Lcom/baidu/location/a/j$a;-><init>(Lcom/baidu/location/a/j;Lcom/baidu/location/a/j$1;)V

    iput-object v0, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    :cond_a
    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/b;->e()I

    move-result v1

    invoke-static {v1}, Lcom/baidu/location/f/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/e/h;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/a/j;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v8, p0, Lcom/baidu/location/a/j;->F:Z

    :cond_b
    iget-boolean v0, p0, Lcom/baidu/location/a/j;->r:Z

    if-ne v0, v8, :cond_0

    iput-boolean v10, p0, Lcom/baidu/location/a/j;->r:Z

    invoke-static {}, Lcom/baidu/location/f/h;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->e(Landroid/os/Message;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_c

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->i()V

    :cond_c
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->b()V

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/location/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private k()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/b;->f()Lcom/baidu/location/f/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/h;->l()Lcom/baidu/location/f/g;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/f/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/location/f/g;->a()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v6

    :goto_0
    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/h;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/h;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->o()D

    move-result-wide v0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/b;->f()Lcom/baidu/location/f/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->l()Lcom/baidu/location/f/g;

    move-result-object v2

    sget-object v4, Lcom/baidu/location/e/h$b;->a:Lcom/baidu/location/e/h$b;

    sget-object v5, Lcom/baidu/location/e/h$a;->a:Lcom/baidu/location/e/h$a;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/e/h;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Lcom/baidu/location/BDLocation;Lcom/baidu/location/e/h$b;Lcom/baidu/location/e/h$a;)Lcom/baidu/location/BDLocation;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->s:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, v3}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    iget-boolean v1, p0, Lcom/baidu/location/a/j;->s:Z

    if-eqz v1, :cond_3

    iput-boolean v6, p0, Lcom/baidu/location/a/j;->G:Z

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    move v7, v6

    :cond_3
    return v7

    :cond_4
    move v0, v7

    goto :goto_0
.end method

.method private l()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "Location failed beacuse we can not get any loc information!"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "&apl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/h/j;->b(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v3, "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!"

    aput-object v3, v0, v4

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/h/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|0|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Location failed beacuse we can not get any loc information without any location permission!"

    aput-object v3, v0, v4

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    const-string v2, "&loc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/h/j;->c(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!"

    aput-object v2, v0, v4

    :cond_2
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/h/j;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/h/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    return-object v0
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->s:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->G:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->H:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->B:Z

    invoke-direct {p0}, Lcom/baidu/location/a/j;->n()V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/a/t;->a()Lcom/baidu/location/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/t;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/Address;
    .locals 10

    const/4 v9, 0x0

    sget-object v0, Lcom/baidu/location/h/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/h/j;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/h/j;->i:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/j;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/j;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    :goto_0
    return-object v0

    :cond_1
    iput-object v9, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->B:Z

    invoke-direct {p0, v9}, Lcom/baidu/location/a/j;->f(Landroid/os/Message;)V

    :cond_2
    move-object v0, v9

    goto :goto_0
.end method

.method public a()V
    .locals 11

    const/4 v3, 0x0

    const/16 v6, 0x43

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->F:Z

    if-eqz v0, :cond_0

    iput-boolean v9, p0, Lcom/baidu/location/a/j;->F:Z

    iget-object v0, p0, Lcom/baidu/location/a/j;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/baidu/location/BDLocation;

    invoke-direct {v10, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/h/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/h/j;->h:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/h/j;->i:Z

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/j;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/j;->z:D

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    :goto_0
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/location/a/j;->G:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/b;->f()Lcom/baidu/location/f/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->l()Lcom/baidu/location/f/g;

    move-result-object v2

    sget-object v4, Lcom/baidu/location/e/h$b;->b:Lcom/baidu/location/e/h$b;

    sget-object v5, Lcom/baidu/location/e/h$a;->a:Lcom/baidu/location/e/h$a;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/e/h;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Lcom/baidu/location/BDLocation;Lcom/baidu/location/e/h$b;Lcom/baidu/location/e/h$a;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_7

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v6, :cond_d

    :cond_8
    iget-boolean v1, p0, Lcom/baidu/location/a/j;->j:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    if-nez v1, :cond_f

    :cond_9
    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/location/e/a;->a:Z

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/e/a;->a(Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_d

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    const/4 v0, 0x1

    sget-object v2, Lcom/baidu/location/h/j;->g:Ljava/lang/String;

    const-string v4, "all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v0, v9

    :cond_a
    sget-boolean v2, Lcom/baidu/location/h/j;->h:Z

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v0, v9

    :cond_b
    sget-boolean v2, Lcom/baidu/location/h/j;->i:Z

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c

    move v0, v9

    :cond_c
    if-nez v0, :cond_d

    invoke-virtual {v1, v6}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_d
    :goto_3
    iput-object v3, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    goto/16 :goto_0

    :cond_e
    if-nez v0, :cond_10

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    invoke-virtual {v0, v6}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    move-object v1, v0

    goto :goto_2

    :cond_f
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_3

    :cond_10
    move-object v1, v0

    goto :goto_2

    :cond_11
    move-object v0, v3

    goto :goto_1
.end method

.method public a(Landroid/os/Message;)V
    .locals 11

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/16 v8, 0xa1

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->F:Z

    if-eqz v0, :cond_0

    iput-boolean v10, p0, Lcom/baidu/location/a/j;->F:Z

    iget-object v0, p0, Lcom/baidu/location/a/j;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/location/a/j;->E:Lcom/baidu/location/a/j$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/baidu/location/BDLocation;

    new-instance v3, Lcom/baidu/location/BDLocation;

    invoke-direct {v3, v9}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->hasAddr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/j;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/j;->A:D

    :cond_1
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/j;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/j;->A:D

    :cond_2
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/j;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/j;->A:D

    :cond_3
    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_0
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/h/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/baidu/location/h/j;->h:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/baidu/location/h/j;->i:Z

    if-eqz v0, :cond_7

    :cond_4
    new-array v8, v6, [F

    iget-wide v0, p0, Lcom/baidu/location/a/j;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/j;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a/j;->w:Lcom/baidu/location/Address;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_7
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    :goto_1
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/baidu/location/a/j;->G:Z

    if-eqz v0, :cond_c

    new-array v8, v6, [F

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    :cond_9
    aget v0, v8, v10

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iput-object v9, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->H:Z

    if-nez v0, :cond_a

    iput-boolean v10, p0, Lcom/baidu/location/a/j;->H:Z

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    goto :goto_1

    :cond_b
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getUserIndoorState()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    iput-object v9, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_2

    :cond_c
    iput-object v2, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-ne v0, v8, :cond_15

    const-string v0, "cl"

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-ne v0, v8, :cond_15

    const-string v0, "wf"

    iget-object v4, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v4}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/location/a/j;->v:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-gez v0, :cond_15

    iput-object v9, p0, Lcom/baidu/location/a/j;->m:Lcom/baidu/location/BDLocation;

    move v0, v1

    :goto_3
    if-eqz v0, :cond_12

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v4}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :goto_4
    invoke-static {v9}, Lcom/baidu/location/h/j;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez v0, :cond_d

    iput-object v9, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    :cond_d
    :goto_5
    sget-object v0, Lcom/baidu/location/a/j;->c:Ljava/lang/String;

    const-string v1, "ssid\":\""

    const-string v4, "\""

    invoke-static {v0, v1, v4}, Lcom/baidu/location/h/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_14

    iget-object v1, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    invoke-virtual {v1, v0}, Lcom/baidu/location/f/g;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/j;->k:Ljava/lang/String;

    :goto_6
    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-ne v0, v8, :cond_e

    const-string v0, "cl"

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/j;->b(Lcom/baidu/location/f/a;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    sget-object v4, Lcom/baidu/location/e/h$b;->b:Lcom/baidu/location/e/h$b;

    sget-object v5, Lcom/baidu/location/e/h$a;->b:Lcom/baidu/location/e/h$a;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/e/h;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Lcom/baidu/location/BDLocation;Lcom/baidu/location/e/h$b;Lcom/baidu/location/e/h$a;)Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    iput-object v0, p0, Lcom/baidu/location/a/j;->q:Lcom/baidu/location/f/a;

    :cond_e
    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-ne v0, v8, :cond_f

    const-string v0, "wf"

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v4

    iget-object v6, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    sget-object v8, Lcom/baidu/location/e/h$b;->b:Lcom/baidu/location/e/h$b;

    sget-object v9, Lcom/baidu/location/e/h$a;->b:Lcom/baidu/location/e/h$a;

    move-object v5, v2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/location/e/h;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Lcom/baidu/location/BDLocation;Lcom/baidu/location/e/h$b;Lcom/baidu/location/e/h$a;)Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    iput-object v0, p0, Lcom/baidu/location/a/j;->p:Lcom/baidu/location/f/g;

    :cond_f
    iget-object v0, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/a/j;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a/j;->o:Lcom/baidu/location/f/a;

    iget-object v4, p0, Lcom/baidu/location/a/j;->n:Lcom/baidu/location/f/g;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/baidu/location/e/a;->a(Ljava/lang/String;Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Lcom/baidu/location/BDLocation;)V

    :cond_10
    invoke-static {}, Lcom/baidu/location/f/h;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->i()V

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->m()V

    :cond_11
    invoke-direct {p0}, Lcom/baidu/location/a/j;->m()V

    goto/16 :goto_1

    :cond_12
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/j;->v:J

    goto/16 :goto_4

    :cond_13
    iput-object v2, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    goto/16 :goto_5

    :cond_14
    iput-object v2, p0, Lcom/baidu/location/a/j;->k:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    move v0, v10

    goto/16 :goto_3

    :cond_16
    move v0, v10

    goto/16 :goto_0
.end method

.method public a(ZZ)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/b;->f()Lcom/baidu/location/f/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->l()Lcom/baidu/location/f/g;

    move-result-object v2

    sget-object v4, Lcom/baidu/location/e/h$b;->b:Lcom/baidu/location/e/h$b;

    sget-object v5, Lcom/baidu/location/e/h$a;->a:Lcom/baidu/location/e/h$a;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/e/h;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Lcom/baidu/location/BDLocation;Lcom/baidu/location/e/h$b;Lcom/baidu/location/e/h$a;)Lcom/baidu/location/BDLocation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/e/a;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/location/e/a;->a(Z)Lcom/baidu/location/BDLocation;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/location/h/j;->g:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v6

    :cond_2
    sget-boolean v1, Lcom/baidu/location/h/j;->h:Z

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v6

    :cond_3
    sget-boolean v1, Lcom/baidu/location/h/j;->i:Z

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v6

    :cond_4
    if-nez v0, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_6
    return-void

    :cond_7
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/e/a;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/location/e/a;->a(Z)Lcom/baidu/location/BDLocation;

    move-result-object v3

    goto :goto_0
.end method

.method public b(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->I:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/a/j;->c(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public b(Lcom/baidu/location/BDLocation;)V
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/location/a/j;->j()V

    iput-object p1, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setIndoorLocMode(Z)V

    return-void
.end method

.method public c(Lcom/baidu/location/BDLocation;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/a/j;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/j;->I:Z

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/a/j;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/j;->t:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/j;->G:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->H:Z

    invoke-virtual {p0}, Lcom/baidu/location/a/j;->j()V

    iput-boolean v1, p0, Lcom/baidu/location/a/j;->I:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/j;->x:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/a/j;->y:Ljava/util/List;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->j:Z

    return v0
.end method

.method public i()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/j;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/j;->g(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/j;->t:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->d()V

    goto :goto_0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/j;->l:Lcom/baidu/location/BDLocation;

    return-void
.end method
