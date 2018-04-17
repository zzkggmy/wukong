.class Lcom/baidu/location/b/a$a;
.super Lcom/baidu/location/h/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/baidu/location/b/a;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/a;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/b/a$a;->e:Lcom/baidu/location/b/a;

    invoke-direct {p0}, Lcom/baidu/location/h/e;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/a$a;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "http://loc.map.baidu.com/gpsz"

    iput-object v0, p0, Lcom/baidu/location/b/a$a;->h:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v1, "&x=%d&y=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/location/b/a$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/baidu/location/b/a$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b/a$a;->k:Ljava/util/Map;

    const-string v2, "gpsz"

    invoke-static {v0}, Lcom/baidu/location/Jni;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(DD)V
    .locals 7

    const/4 v6, 0x1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-string v0, "gcj2wgs"

    invoke-static {p1, p2, p3, p4, v0}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/baidu/location/b/a$a;->a:I

    aget-wide v0, v0, v6

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/location/b/a$a;->b:I

    mul-double v0, p1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/location/b/a$a;->c:I

    mul-double v0, p3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/location/b/a$a;->d:I

    iget-object v0, p0, Lcom/baidu/location/b/a$a;->e:Lcom/baidu/location/b/a;

    invoke-static {v0, v6}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;Z)Z

    invoke-virtual {p0}, Lcom/baidu/location/b/a$a;->e()V

    return-void
.end method

.method public a(Z)V
    .locals 14

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b/a$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/location/b/a$a;->j:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v2, v4, v4

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/baidu/location/b/a$a;->c:I

    add-int/lit8 v2, v4, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    iget v0, p0, Lcom/baidu/location/b/a$a;->d:I

    add-int/lit8 v2, v4, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v6, v0, v2

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    mul-int v8, v2, v4

    add-int/2addr v8, v0

    aget-object v8, v3, v8

    const-string v9, "E"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "aldata"

    const-wide v10, -0x3f70c00000000000L    # -1000.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :goto_2
    const-string v8, "tt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int v8, v5, v0

    add-int v9, v6, v2

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v11, "%d,%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v13

    const/4 v8, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v8

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :try_start_1
    iget-object v9, p0, Lcom/baidu/location/b/a$a;->e:Lcom/baidu/location/b/a;

    invoke-static {v9}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "galdata"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_0

    const-string v9, "id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/baidu/location/b/a$a;->e:Lcom/baidu/location/b/a;

    invoke-static {v8}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "galdata"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    :try_start_2
    const-string v8, "aldata"

    mul-int v9, v2, v4

    add-int/2addr v9, v0

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/b/a$a;->k:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b/a$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/b/a$a;->e:Lcom/baidu/location/b/a;

    invoke-static {v0, v1}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;Z)Z

    return-void

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto :goto_3
.end method
