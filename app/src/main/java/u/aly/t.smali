.class public Lu/aly/t;
.super Ljava/lang/Object;
.source "MemoCache.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/r;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lu/aly/ap;

.field private c:Lu/aly/ar;

.field private d:Lu/aly/au;

.field private e:Lu/aly/bh;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/t;->a:Ljava/util/List;

    .line 34
    iput-object v1, p0, Lu/aly/t;->b:Lu/aly/ap;

    .line 35
    iput-object v1, p0, Lu/aly/t;->c:Lu/aly/ar;

    .line 36
    iput-object v1, p0, Lu/aly/t;->d:Lu/aly/au;

    .line 37
    iput-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    .line 39
    iput-object v1, p0, Lu/aly/t;->f:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lu/aly/t;->f:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ar;->a(Ljava/lang/String;)Lu/aly/ar;

    .line 179
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ar;->e(Ljava/lang/String;)Lu/aly/ar;

    .line 181
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/ar;->f(Ljava/lang/String;)Lu/aly/ar;

    .line 183
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/ar;->g(Ljava/lang/String;)Lu/aly/ar;

    .line 186
    :cond_0
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    invoke-static {p1}, Lu/aly/bt;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ar;->c(Ljava/lang/String;)Lu/aly/ar;

    .line 187
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    sget-object v1, Lu/aly/bm;->a:Lu/aly/bm;

    invoke-virtual {v0, v1}, Lu/aly/ar;->a(Lu/aly/bm;)Lu/aly/ar;

    .line 188
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    const-string v1, "5.6.4"

    invoke-virtual {v0, v1}, Lu/aly/ar;->d(Ljava/lang/String;)Lu/aly/ar;

    .line 189
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    invoke-static {p1}, Lu/aly/bt;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ar;->b(Ljava/lang/String;)Lu/aly/ar;

    .line 190
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    invoke-static {p1}, Lu/aly/bt;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/ar;->a(I)Lu/aly/ar;

    .line 191
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    invoke-static {p1}, Lu/aly/bt;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ar;->h(Ljava/lang/String;)Lu/aly/ar;

    .line 193
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    sget v1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    invoke-virtual {v0, v1}, Lu/aly/ar;->c(I)Lu/aly/ar;

    .line 194
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ar;->d(Ljava/lang/String;)Lu/aly/ar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    invoke-static {}, Lu/aly/bt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/au;->f(Ljava/lang/String;)Lu/aly/au;

    .line 203
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    invoke-static {p1}, Lu/aly/bt;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/au;->a(Ljava/lang/String;)Lu/aly/au;

    .line 204
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    invoke-static {p1}, Lu/aly/bt;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/au;->b(Ljava/lang/String;)Lu/aly/au;

    .line 205
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    invoke-static {p1}, Lu/aly/bt;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/au;->c(Ljava/lang/String;)Lu/aly/au;

    .line 206
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/au;->e(Ljava/lang/String;)Lu/aly/au;

    .line 207
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lu/aly/au;->g(Ljava/lang/String;)Lu/aly/au;

    .line 208
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/au;->h(Ljava/lang/String;)Lu/aly/au;

    .line 210
    invoke-static {p1}, Lu/aly/bt;->s(Landroid/content/Context;)[I

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lu/aly/t;->d:Lu/aly/au;

    new-instance v2, Lu/aly/bk;

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-direct {v2, v3, v0}, Lu/aly/bk;-><init>(II)V

    invoke-virtual {v1, v2}, Lu/aly/au;->a(Lu/aly/bk;)Lu/aly/au;

    .line 216
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 220
    :cond_1
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/au;->i(Ljava/lang/String;)Lu/aly/au;

    .line 221
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/au;->j(Ljava/lang/String;)Lu/aly/au;

    .line 222
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v2, v3}, Lu/aly/au;->a(J)Lu/aly/au;

    .line 223
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/au;->k(Ljava/lang/String;)Lu/aly/au;

    .line 224
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/au;->l(Ljava/lang/String;)Lu/aly/au;

    .line 225
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/au;->m(Ljava/lang/String;)Lu/aly/au;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 233
    :try_start_0
    invoke-static {p1}, Lu/aly/bt;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v1, "Wi-Fi"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    sget-object v2, Lu/aly/ao;->c:Lu/aly/ao;

    invoke-virtual {v1, v2}, Lu/aly/bh;->a(Lu/aly/ao;)Lu/aly/bh;

    .line 243
    :goto_0
    const-string v1, ""

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lu/aly/bh;->e(Ljava/lang/String;)Lu/aly/bh;

    .line 247
    :cond_0
    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/bh;

    invoke-static {p1}, Lu/aly/bt;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bh;->c(Ljava/lang/String;)Lu/aly/bh;

    .line 249
    invoke-static {p1}, Lu/aly/bt;->o(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    invoke-static {p1}, Lu/aly/bt;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/aly/bh;->d(Ljava/lang/String;)Lu/aly/bh;

    .line 252
    iget-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lu/aly/bh;->b(Ljava/lang/String;)Lu/aly/bh;

    .line 253
    iget-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lu/aly/bh;->a(Ljava/lang/String;)Lu/aly/bh;

    .line 254
    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/bh;

    invoke-static {p1}, Lu/aly/bt;->n(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/bh;->a(I)Lu/aly/bh;

    .line 258
    :goto_1
    return-void

    .line 237
    :cond_1
    const-string v1, "2G/3G"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    sget-object v2, Lu/aly/ao;->b:Lu/aly/ao;

    invoke-virtual {v1, v2}, Lu/aly/bh;->a(Lu/aly/ao;)Lu/aly/bh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 240
    :cond_2
    :try_start_1
    iget-object v1, p0, Lu/aly/t;->e:Lu/aly/bh;

    sget-object v2, Lu/aly/ao;->a:Lu/aly/ao;

    invoke-virtual {v1, v2}, Lu/aly/bh;->a(Lu/aly/ao;)Lu/aly/bh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized a(Lu/aly/ap;)V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lu/aly/t;->b:Lu/aly/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lu/aly/bp;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aa;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 77
    :cond_0
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->b:Lu/aly/ap;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lu/aly/ab;

    iget-object v2, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lu/aly/ab;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0}, Lu/aly/ab;->f()Z

    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lu/aly/t;->b:Lu/aly/ap;

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/ap;)Lu/aly/bp;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/t;->b:Lu/aly/ap;

    .line 88
    :cond_1
    iget-object v0, p0, Lu/aly/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/r;

    .line 89
    invoke-interface {v0, p1, v1}, Lu/aly/r;->a(Lu/aly/bp;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_2
    :try_start_1
    iget-object v0, p0, Lu/aly/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-virtual {p0}, Lu/aly/t;->c()Lu/aly/ar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/ar;)Lu/aly/bp;

    .line 97
    invoke-virtual {p0}, Lu/aly/t;->d()Lu/aly/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/au;)Lu/aly/bp;

    .line 98
    invoke-virtual {p0}, Lu/aly/t;->e()Lu/aly/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/bh;)Lu/aly/bp;

    .line 99
    invoke-virtual {p0}, Lu/aly/t;->h()Lu/aly/as;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/as;)Lu/aly/bp;

    .line 100
    invoke-virtual {p0}, Lu/aly/t;->f()Lu/aly/bc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/bc;)Lu/aly/bp;

    .line 101
    invoke-virtual {p0}, Lu/aly/t;->g()Lu/aly/bb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/bb;)Lu/aly/bp;

    .line 102
    invoke-virtual {p0}, Lu/aly/t;->j()Lu/aly/aq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/aq;)Lu/aly/bp;

    .line 103
    invoke-virtual {p0}, Lu/aly/t;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Ljava/util/Map;)Lu/aly/bp;

    goto :goto_0
.end method

.method public declared-synchronized a(Lu/aly/r;)V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/t;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()I
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    iget-object v1, p0, Lu/aly/t;->b:Lu/aly/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 60
    :cond_0
    monitor-exit p0

    return v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lu/aly/ar;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0}, Lu/aly/ar;-><init>()V

    iput-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;

    .line 113
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/t;->a(Landroid/content/Context;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lu/aly/t;->c:Lu/aly/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lu/aly/au;
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lu/aly/au;

    invoke-direct {v0}, Lu/aly/au;-><init>()V

    iput-object v0, p0, Lu/aly/t;->d:Lu/aly/au;

    .line 122
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/t;->b(Landroid/content/Context;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lu/aly/t;->d:Lu/aly/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lu/aly/bh;
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/bh;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    iput-object v0, p0, Lu/aly/t;->e:Lu/aly/bh;

    .line 131
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/t;->c(Landroid/content/Context;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/bh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lu/aly/bc;
    .locals 1

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/g;->a(Landroid/content/Context;)Lu/aly/g;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/g;->a()Lu/aly/bc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lu/aly/bb;
    .locals 1

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/e;->a(Landroid/content/Context;)Lu/aly/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/e;->b()Lu/aly/bb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lu/aly/as;
    .locals 1

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ab;->a(Landroid/content/Context;)Lu/aly/as;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    goto :goto_0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/al;->a(Landroid/content/Context;)Lu/aly/al;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/al;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public j()Lu/aly/aq;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lu/aly/t;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    aget-object v0, v1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lu/aly/aq;

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lu/aly/aq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
