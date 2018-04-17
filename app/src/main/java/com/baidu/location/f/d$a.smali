.class Lcom/baidu/location/f/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/baidu/location/f/d;

.field private c:J

.field private final d:I

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method private constructor <init>(Lcom/baidu/location/f/d;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/baidu/location/f/d$a;->a:J

    iput-wide v2, p0, Lcom/baidu/location/f/d$a;->c:J

    const/16 v0, 0x190

    iput v0, p0, Lcom/baidu/location/f/d$a;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f/d$a;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/f/d$a;->f:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/f/d$a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/f/d$a;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/f/d$a;->i:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/f/d$a;->j:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/f/d;Lcom/baidu/location/f/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f/d$a;-><init>(Lcom/baidu/location/f/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f/d$a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/f/d$a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/baidu/location/f/f;

    iget-object v1, p0, Lcom/baidu/location/f/d$a;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/f/d$a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/f/d$a;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/location/f/d$a;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/location/f/f;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/f/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    iget-object v2, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v2}, Lcom/baidu/location/f/d;->h(Lcom/baidu/location/f/d;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/baidu/location/f/d;->a(Lcom/baidu/location/f/d;Lcom/baidu/location/f/f;I)I

    move-result v1

    sput v1, Lcom/baidu/location/h/j;->d:I

    sget v1, Lcom/baidu/location/h/j;->d:I

    if-lez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&nmea=%.1f|%.1f&g_tp=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/baidu/location/f/f;->c()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/baidu/location/f/f;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget v4, Lcom/baidu/location/h/j;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/f/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/f/d$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f/d$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/f/d$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/f/d$a;->g:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/baidu/location/f/d$a;->e:Z

    :cond_1
    const-string v0, "$GPGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v9, p0, Lcom/baidu/location/f/d$a;->e:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f/d$a;->g:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f/d$a;->c:J

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/baidu/location/h/j;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput v8, Lcom/baidu/location/h/j;->d:I

    goto :goto_0

    :cond_4
    const-string v0, "$GPGSV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->f:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v0, "$GPGSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f/d$a;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method public onGpsStatusChanged(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0}, Lcom/baidu/location/f/d;->d(Lcom/baidu/location/f/d;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0, v2}, Lcom/baidu/location/f/d;->b(Lcom/baidu/location/f/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0, v1}, Lcom/baidu/location/f/d;->a(Lcom/baidu/location/f/d;Z)V

    invoke-static {v1}, Lcom/baidu/location/f/d;->a(I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0}, Lcom/baidu/location/f/d;->b(Lcom/baidu/location/f/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0}, Lcom/baidu/location/f/d;->e(Lcom/baidu/location/f/d;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    iget-object v2, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v2}, Lcom/baidu/location/f/d;->d(Lcom/baidu/location/f/d;)Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/location/f/d;->a(Lcom/baidu/location/f/d;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0}, Lcom/baidu/location/f/d;->e(Lcom/baidu/location/f/d;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/f/d;->a(Lcom/baidu/location/f/d;I)I

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/f/d;->b(Lcom/baidu/location/f/d;I)I

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/baidu/location/f/d;->a(Lcom/baidu/location/f/d;Ljava/util/HashMap;)Ljava/util/HashMap;

    move v2, v1

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v4

    sget v5, Lcom/baidu/location/h/j;->F:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v4}, Lcom/baidu/location/f/d;->f(Lcom/baidu/location/f/d;)I

    :cond_4
    iget-object v4, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    iget-object v5, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v5}, Lcom/baidu/location/f/d;->g(Lcom/baidu/location/f/d;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/baidu/location/f/d;->a(Lcom/baidu/location/f/d;Landroid/location/GpsSatellite;Ljava/util/HashMap;)Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0}, Lcom/baidu/location/f/d;->d(Lcom/baidu/location/f/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v2}, Lcom/baidu/location/f/d;->e(Lcom/baidu/location/f/d;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0, v1}, Lcom/baidu/location/f/d;->c(Lcom/baidu/location/f/d;I)I

    :cond_7
    if-lez v2, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f/d$a;->j:J

    invoke-static {v2}, Lcom/baidu/location/f/d;->a(I)I

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/baidu/location/f/d$a;->j:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x64

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f/d$a;->j:J

    invoke-static {v2}, Lcom/baidu/location/f/d;->a(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0}, Lcom/baidu/location/f/d;->b(Lcom/baidu/location/f/d;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/b/e;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/h/j;->d:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v0}, Lcom/baidu/location/f/d;->c(Lcom/baidu/location/f/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f/d$a;->b:Lcom/baidu/location/f/d;

    invoke-static {v1}, Lcom/baidu/location/f/d;->c(Lcom/baidu/location/f/d;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
