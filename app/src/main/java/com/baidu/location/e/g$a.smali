.class final Lcom/baidu/location/e/g$a;
.super Lcom/baidu/location/h/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/e/g;

.field private b:I

.field private c:J

.field private d:J

.field private e:Z

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/baidu/location/e/g;)V
    .locals 5

    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-direct {p0}, Lcom/baidu/location/h/e;-><init>()V

    iput v4, p0, Lcom/baidu/location/e/g$a;->b:I

    iput-boolean v4, p0, Lcom/baidu/location/e/g$a;->e:Z

    iput-wide v0, p0, Lcom/baidu/location/e/g$a;->c:J

    iput-wide v0, p0, Lcom/baidu/location/e/g$a;->d:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e/g$a;->k:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "&ver=%s&cuid=%s&prod=%s:%s&sdk=%.2f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "1"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/location/h/b;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/baidu/location/h/b;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/baidu/location/h/b;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x40e3851f    # 7.11f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeOfflineLocationUpdateRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/g$a;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/e/g;Lcom/baidu/location/e/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/g$a;-><init>(Lcom/baidu/location/e/g;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e/g$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/e/g$a;->b()V

    return-void
.end method

.method private b()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, -0x1

    iget-boolean v0, p0, Lcom/baidu/location/e/g$a;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->v(Lcom/baidu/location/e/g;)Lcom/baidu/location/e/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/e/h;->c()Ljava/io/File;

    move-result-object v3

    const-string v4, "ofl.config"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "ol"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;Z)Z

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "fl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;Z)Z

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "on"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;Z)Z

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "wn"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;Z)Z

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "oc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->e(Lcom/baidu/location/e/g;Z)Z

    const-string v4, "t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    const-string v4, "ol"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "olv2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->g(Lcom/baidu/location/e/g;Z)Z

    :cond_2
    const-string v4, "cplist"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "cplist"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;[Ljava/lang/String;)[Ljava/lang/String;

    :cond_3
    const-string v4, "rgcgp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "rgcgp"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;I)I

    :cond_4
    const-string v4, "rgcon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "rgcon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->f(Lcom/baidu/location/e/g;Z)Z

    :cond_5
    const-string v4, "addrup"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "addrup"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;I)I

    :cond_6
    const-string v4, "poiup"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "poiup"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;I)I

    :cond_7
    const-string v4, "oflp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "oflp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "0"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;D)D

    :cond_8
    const-string v5, "1"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "1"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;D)D

    :cond_9
    const-string v5, "2"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "2"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;D)D

    :cond_a
    const-string v5, "3"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "3"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;D)D

    :cond_b
    const-string v5, "4"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "4"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->e(Lcom/baidu/location/e/g;D)D

    :cond_c
    const-string v4, "onlt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "onlt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "0"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;J)J

    :cond_d
    const-string v5, "1"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "1"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;J)J

    :cond_e
    const-string v5, "2"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "2"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;J)J

    :cond_f
    const-string v5, "3"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "3"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;J)J

    :cond_10
    const-string v5, "4"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v6, "4"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/baidu/location/e/g;->e(Lcom/baidu/location/e/g;J)J

    :cond_11
    const-string v4, "minapn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "minapn"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;I)I

    :cond_12
    iget-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_13
    iget-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_15

    iget-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_15

    move v0, v1

    :goto_1
    iget-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_14

    if-eqz v0, :cond_0

    :cond_14
    invoke-direct {p0}, Lcom/baidu/location/e/g$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v0}, Lcom/baidu/location/e/g;->v(Lcom/baidu/location/e/g;)Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/h/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/baidu/location/e/g$a;->e:Z

    const-string v0, "ofloc.map.baidu.com"

    invoke-virtual {p0, v2, v0}, Lcom/baidu/location/e/g$a;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_15
    move v0, v2

    goto :goto_1
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/location/e/g$a;->b:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    :goto_0
    if-nez v0, :cond_0

    :cond_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/baidu/location/e/g$a;->c:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iput v1, p0, Lcom/baidu/location/e/g$a;->b:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/baidu/location/e/g$a;->c:J

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/e/g$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/baidu/location/e/g$a;->k:Ljava/util/Map;

    const-string v1, "qt"

    const-string v2, "conf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/e/g$a;->k:Ljava/util/Map;

    const-string v1, "req"

    iget-object v2, p0, Lcom/baidu/location/e/g$a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/location/e/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/e/g$a;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 14

    const-wide/16 v12, 0x8

    const-wide/16 v10, 0x4

    const-wide/16 v8, 0x2

    const-wide/16 v6, 0x1

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/baidu/location/e/g$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_1a

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/e/g$a;->j:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "1"

    const-wide/16 v2, 0x0

    const-string v4, "ofl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "ofl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    const-string v4, "ver"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "ver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-long v4, v2, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;Z)Z

    :cond_2
    and-long v4, v2, v8

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;Z)Z

    :cond_3
    and-long v4, v2, v10

    cmp-long v4, v4, v10

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;Z)Z

    :cond_4
    and-long v4, v2, v12

    cmp-long v4, v4, v12

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;Z)Z

    :cond_5
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    const-wide/16 v6, 0x10

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->e(Lcom/baidu/location/e/g;Z)Z

    :cond_6
    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    const-wide/16 v6, 0x20

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/baidu/location/e/g;->f(Lcom/baidu/location/e/g;Z)Z

    :cond_7
    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    const-wide/16 v4, 0x40

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/baidu/location/e/g;->g(Lcom/baidu/location/e/g;Z)Z

    :cond_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "cplist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v4, "cplist"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;[Ljava/lang/String;)[Ljava/lang/String;

    const-string v3, "cplist"

    const-string v4, "cplist"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v3, "bklist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "bklist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-virtual {v4, v3}, Lcom/baidu/location/e/g;->a([Ljava/lang/String;)V

    :cond_a
    const-string v3, "para"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "para"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "rgcgp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v4, "rgcgp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;I)I

    :cond_b
    const-string v3, "addrup"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v4, "addrup"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;I)I

    :cond_c
    const-string v3, "poiup"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v4, "poiup"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;I)I

    :cond_d
    const-string v3, "oflp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "oflp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;D)D

    :cond_e
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;D)D

    :cond_f
    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;D)D

    :cond_10
    const-string v4, "3"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "3"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;D)D

    :cond_11
    const-string v4, "4"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "4"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->e(Lcom/baidu/location/e/g;D)D

    :cond_12
    const-string v3, "onlt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "onlt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;J)J

    :cond_13
    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;J)J

    :cond_14
    const-string v4, "2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;J)J

    :cond_15
    const-string v4, "3"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "3"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;J)J

    :cond_16
    const-string v4, "4"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v5, "4"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/baidu/location/e/g;->e(Lcom/baidu/location/e/g;J)J

    :cond_17
    const-string v3, "minapn"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    const-string v4, "minapn"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;I)I

    :cond_18
    const-string v1, "ol"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->a(Lcom/baidu/location/e/g;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "olv2"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->b(Lcom/baidu/location/e/g;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "fl"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->c(Lcom/baidu/location/e/g;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "on"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->d(Lcom/baidu/location/e/g;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "wn"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->e(Lcom/baidu/location/e/g;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "oc"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->f(Lcom/baidu/location/e/g;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    const-string v1, "t"

    iget-wide v4, p0, Lcom/baidu/location/e/g$a;->d:J

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rgcon"

    iget-object v1, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v1}, Lcom/baidu/location/e/g;->g(Lcom/baidu/location/e/g;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "rgcgp"

    iget-object v1, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v1}, Lcom/baidu/location/e/g;->h(Lcom/baidu/location/e/g;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "0"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->i(Lcom/baidu/location/e/g;)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "1"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->j(Lcom/baidu/location/e/g;)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "2"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->k(Lcom/baidu/location/e/g;)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "3"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->l(Lcom/baidu/location/e/g;)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "4"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->m(Lcom/baidu/location/e/g;)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "oflp"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "0"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->n(Lcom/baidu/location/e/g;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "1"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->o(Lcom/baidu/location/e/g;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "2"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->p(Lcom/baidu/location/e/g;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "3"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->q(Lcom/baidu/location/e/g;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "4"

    iget-object v3, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v3}, Lcom/baidu/location/e/g;->r(Lcom/baidu/location/e/g;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "onlt"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "addrup"

    iget-object v1, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v1}, Lcom/baidu/location/e/g;->s(Lcom/baidu/location/e/g;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "poiup"

    iget-object v1, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v1}, Lcom/baidu/location/e/g;->t(Lcom/baidu/location/e/g;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "minapn"

    iget-object v1, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v1}, Lcom/baidu/location/e/g;->u(Lcom/baidu/location/e/g;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/location/e/g$a;->a:Lcom/baidu/location/e/g;

    invoke-static {v1}, Lcom/baidu/location/e/g;->v(Lcom/baidu/location/e/g;)Lcom/baidu/location/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/h;->c()Ljava/io/File;

    move-result-object v1

    const-string v3, "ofl.config"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_19
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/g$a;->e:Z

    return-void

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/baidu/location/e/g$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/e/g$a;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/g$a;->c:J

    goto :goto_0

    :cond_1a
    iget v0, p0, Lcom/baidu/location/e/g$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/e/g$a;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/g$a;->c:J

    goto :goto_0
.end method
