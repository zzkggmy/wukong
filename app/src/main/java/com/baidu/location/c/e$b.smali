.class Lcom/baidu/location/c/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:D

.field b:D

.field c:J

.field d:I

.field e:Z

.field final synthetic f:Lcom/baidu/location/c/e;


# direct methods
.method public constructor <init>(Lcom/baidu/location/c/e;DDJI)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/c/e$b;->f:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/baidu/location/c/e$b;->a:D

    iput-wide p4, p0, Lcom/baidu/location/c/e$b;->b:D

    iput-wide p6, p0, Lcom/baidu/location/c/e$b;->c:J

    iput p8, p0, Lcom/baidu/location/c/e$b;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/e$b;->e:Z

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e$b;->a:D

    return-wide v0
.end method

.method public a(Lcom/baidu/location/c/e$b;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/e$b;->d:I

    invoke-virtual {p1}, Lcom/baidu/location/c/e$b;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public a(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/e$b;->a:D

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e$b;->e:Z

    return-void
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e$b;->b:D

    return-wide v0
.end method

.method public b(Lcom/baidu/location/c/e$b;)F
    .locals 9

    const/4 v0, 0x1

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/c/e$b;->b:D

    iget-wide v2, p0, Lcom/baidu/location/c/e$b;->a:D

    iget-wide v4, p1, Lcom/baidu/location/c/e$b;->b:D

    iget-wide v6, p1, Lcom/baidu/location/c/e$b;->a:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public b(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/e$b;->b:D

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/e$b;->d:I

    return v0
.end method

.method public c(Lcom/baidu/location/c/e$b;)Z
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/c/e$b;->a(Lcom/baidu/location/c/e$b;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/location/c/e$b;->b(Lcom/baidu/location/c/e$b;)F

    move-result v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide v8, 0x3ff3333333333333L    # 1.2

    rsub-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/e$b;->e:Z

    return v0
.end method
