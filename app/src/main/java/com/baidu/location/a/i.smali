.class public Lcom/baidu/location/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/baidu/location/a/i;


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/a/i;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/a/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/i;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/i;->d:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/i;->e:J

    return-void
.end method

.method public static a()Lcom/baidu/location/a/i;
    .locals 2

    sget-object v1, Lcom/baidu/location/a/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/i;

    invoke-direct {v0}, Lcom/baidu/location/a/i;-><init>()V

    sput-object v0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/a/i;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/a/i;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getMCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/baidu/location/a/i;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/location/a/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lbs_locsdk"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/i;->e:J

    return-void
.end method

.method public b()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/baidu/location/a/i;->c:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/baidu/location/a/i;->c:I

    const/16 v3, 0x25a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/baidu/location/a/i;->c:I

    const/16 v3, 0x259

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/baidu/location/a/i;->c:I

    const/16 v3, -0xa

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/baidu/location/a/i;->c:I

    const/16 v3, -0xb

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/baidu/location/a/i;->d:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/i;->e:J

    sub-long/2addr v2, v4

    if-eqz v0, :cond_2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/a/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v2

    const-string v3, "lbs_locsdk"

    invoke-virtual {v2, v1, v3, v6, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/i;->e:J

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/baidu/location/a/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v2

    const-string v3, "lbs_locsdk"

    invoke-virtual {v2, v1, v3, v6, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/i;->e:J

    goto :goto_0
.end method

.method public onAuthResult(ILjava/lang/String;)V
    .locals 3

    iput p1, p0, Lcom/baidu/location/a/i;->c:I

    sget-object v0, Lcom/baidu/location/h/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationAuthManager Authentication Error errorcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
