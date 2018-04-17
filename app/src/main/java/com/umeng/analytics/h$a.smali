.class public Lcom/umeng/analytics/h$a;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 210
    const-string v0, ".um"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/h$a;->a:I

    .line 291
    new-instance v0, Lcom/umeng/analytics/h$a$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/h$a$1;-><init>(Lcom/umeng/analytics/h$a;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    .line 214
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    .line 215
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 218
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/h$b;)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/h$b;->a(Ljava/io/File;)V

    .line 235
    array-length v2, v1

    .line 237
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 240
    :try_start_0
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Lcom/umeng/analytics/h$b;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 244
    if-eqz v3, :cond_0

    .line 245
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 237
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v3

    .line 245
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    throw v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/h$b;->c(Ljava/io/File;)V

    .line 250
    :cond_2
    return-void
.end method

.method public a([B)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 253
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 272
    :cond_0
    return-void

    .line 256
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "um_cache_%d.env"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    :try_start_0
    invoke-static {v2, p1}, Lu/aly/bu;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 266
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 267
    array-length v2, v1

    add-int/lit8 v2, v2, -0xa

    .line 268
    :goto_1
    if-ge v0, v2, :cond_0

    .line 269
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 277
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 286
    array-length v0, v0

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
