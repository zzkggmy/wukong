.class Lcom/baidu/location/f/h$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/f/h;

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/baidu/location/f/h;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/f/h$a;->a:Lcom/baidu/location/f/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/f/h$a;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f/h$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/f/h;Lcom/baidu/location/f/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f/h$a;-><init>(Lcom/baidu/location/f/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, 0x1388

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/baidu/location/f/h;->a:J

    iget-object v0, p0, Lcom/baidu/location/f/h$a;->a:Lcom/baidu/location/f/h;

    invoke-static {v0}, Lcom/baidu/location/f/h;->a(Lcom/baidu/location/f/h;)V

    invoke-static {}, Lcom/baidu/location/a/j;->c()Lcom/baidu/location/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/j;->i()V

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/location/c/e;->c:Lcom/baidu/location/c/e$d;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/e$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/f/h$a;->a:Lcom/baidu/location/f/h;

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->o()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/location/a/r;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/a/r;->c()Lcom/baidu/location/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f/h$a;->a:Lcom/baidu/location/f/h;

    invoke-virtual {v1}, Lcom/baidu/location/f/h;->l()Lcom/baidu/location/f/g;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/a/r;->d()Landroid/location/Location;

    move-result-object v2

    invoke-static {}, Lcom/baidu/location/a/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/location/a/t;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f/h$a;->b:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f/h$a;->b:J

    iget-boolean v0, p0, Lcom/baidu/location/f/h$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/f/h$a;->c:Z

    goto/16 :goto_0
.end method
