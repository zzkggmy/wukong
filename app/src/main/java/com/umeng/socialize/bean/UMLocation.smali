.class public Lcom/umeng/socialize/bean/UMLocation;
.super Ljava/lang/Object;
.source "UMLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/umeng/socialize/bean/UMLocation;->b:D

    .line 22
    iput-wide p3, p0, Lcom/umeng/socialize/bean/UMLocation;->c:D

    .line 23
    return-void
.end method

.method public static build(Landroid/location/Location;)Lcom/umeng/socialize/bean/UMLocation;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/umeng/socialize/bean/UMLocation;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/umeng/socialize/bean/UMLocation;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static build(Ljava/lang/String;)Lcom/umeng/socialize/bean/UMLocation;
    .locals 6

    .prologue
    .line 53
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v0, Lcom/umeng/socialize/bean/UMLocation;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/umeng/socialize/bean/UMLocation;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/umeng/socialize/bean/UMLocation;->b:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/umeng/socialize/bean/UMLocation;->c:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/umeng/socialize/bean/UMLocation;->b:D

    .line 31
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/umeng/socialize/bean/UMLocation;->c:D

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/umeng/socialize/bean/UMLocation;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/umeng/socialize/bean/UMLocation;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
