.class public Lu/aly/p;
.super Ljava/lang/Object;
.source "EventTracker.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lu/aly/n;

.field private d:Landroid/content/Context;

.field private e:Lu/aly/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x80

    iput v0, p0, Lu/aly/p;->a:I

    .line 23
    const/16 v0, 0x100

    iput v0, p0, Lu/aly/p;->b:I

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null, can\'t track event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/p;->d:Landroid/content/Context;

    .line 35
    new-instance v0, Lu/aly/n;

    iget-object v1, p0, Lu/aly/p;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/p;->c:Lu/aly/n;

    .line 36
    iget-object v1, p0, Lu/aly/p;->c:Lu/aly/n;

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lu/aly/n;->a(Z)V

    .line 37
    iget-object v0, p0, Lu/aly/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    iput-object v0, p0, Lu/aly/p;->e:Lu/aly/m;

    .line 38
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 131
    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 136
    :cond_0
    const-string v0, "Event id is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 152
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    const-string v0, "map is null or empty in onEvent"

    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    move v0, v2

    .line 171
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 159
    goto :goto_0

    .line 162
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v2

    .line 163
    goto :goto_0

    .line 166
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 167
    goto :goto_0

    .line 171
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 142
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 147
    const-string v0, "Event label or value is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lu/aly/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lu/aly/p;->c:Lu/aly/n;

    invoke-static {p1, p2, v2}, Lu/aly/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v2}, Lu/aly/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/af;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/n;->a(Ljava/lang/String;Lu/aly/af;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lu/aly/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 65
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lu/aly/p;->e:Lu/aly/m;

    new-instance v1, Lu/aly/ag;

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lu/aly/ag;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lu/aly/m;->a(Lu/aly/r;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lu/aly/p;->e:Lu/aly/m;

    new-instance v1, Lu/aly/ai;

    invoke-direct {v1, p1, p2}, Lu/aly/ai;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lu/aly/m;->a(Lu/aly/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0, p2}, Lu/aly/p;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lu/aly/p;->e:Lu/aly/m;

    new-instance v1, Lu/aly/ag;

    const/4 v6, -0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lu/aly/ag;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lu/aly/m;->a(Lu/aly/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-direct {p0, p2}, Lu/aly/p;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lu/aly/p;->c:Lu/aly/n;

    invoke-static {p1, p3, p2}, Lu/aly/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, p2}, Lu/aly/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/af;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/n;->a(Ljava/lang/String;Lu/aly/af;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lu/aly/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lu/aly/p;->c:Lu/aly/n;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lu/aly/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/n;->b(Ljava/lang/String;)Lu/aly/af;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v0, Lu/aly/af;->a:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    .line 98
    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lu/aly/p;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lu/aly/p;->c:Lu/aly/n;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lu/aly/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/n;->b(Ljava/lang/String;)Lu/aly/af;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lu/aly/af;->a:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 123
    iget-object v0, v0, Lu/aly/af;->d:Ljava/util/Map;

    int-to-long v2, v1

    invoke-virtual {p0, p1, v0, v2, v3}, Lu/aly/p;->a(Ljava/lang/String;Ljava/util/Map;J)V

    goto :goto_0
.end method