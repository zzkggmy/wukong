.class public Lcom/baidu/location/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/a$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/Object;

.field private static c:Lcom/baidu/location/b/a;

.field private static final d:Ljava/lang/String;


# instance fields
.field a:Lcom/baidu/location/b/a$a;

.field private e:Landroid/database/sqlite/SQLiteDatabase;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/b/a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b/a;->c:Lcom/baidu/location/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/h/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gal.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/a;->f:Z

    iput-object v1, p0, Lcom/baidu/location/b/a;->a:Lcom/baidu/location/b/a$a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/b/a;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static a()Lcom/baidu/location/b/a;
    .locals 2

    sget-object v1, Lcom/baidu/location/b/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/b/a;->c:Lcom/baidu/location/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/a;

    invoke-direct {v0}, Lcom/baidu/location/b/a;-><init>()V

    sput-object v0, Lcom/baidu/location/b/a;->c:Lcom/baidu/location/b/a;

    :cond_0
    sget-object v0, Lcom/baidu/location/b/a;->c:Lcom/baidu/location/b/a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/a;->f:Z

    return p1
.end method

.method private b(DD)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/a;->a:Lcom/baidu/location/b/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/a$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/a$a;-><init>(Lcom/baidu/location/b/a;)V

    iput-object v0, p0, Lcom/baidu/location/b/a;->a:Lcom/baidu/location/b/a$a;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/a;->a:Lcom/baidu/location/b/a$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/location/b/a$a;->a(DD)V

    return-void
.end method


# virtual methods
.method public a(DD)D
    .locals 11

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iget-object v2, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v4, "%d,%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, p3

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select * from galdata where id = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-wide v4, -0x3f70c00000000000L    # -1000.0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iget-boolean v3, p0, Lcom/baidu/location/b/a;->f:Z

    if-nez v3, :cond_1

    const-wide/32 v6, 0x93a80

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/location/b/a;->b(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    :try_start_2
    iget-boolean v3, p0, Lcom/baidu/location/b/a;->f:Z

    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/location/b/a;->b(DD)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public a(Lcom/baidu/location/BDLocation;)I
    .locals 10

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v0

    :goto_0
    iget-object v7, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/baidu/location/b/a;->a(DD)D

    move-result-wide v2

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v5, v2, v8

    if-eqz v5, :cond_2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/baidu/location/Jni;->getGpsSwiftRadius(FDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x3

    :goto_1
    return v0

    :cond_0
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move-wide v0, v2

    move v4, v5

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/b/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS galdata(id CHAR(40) PRIMARY KEY,aldata DOUBLE,tt INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/baidu/location/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
.end method
