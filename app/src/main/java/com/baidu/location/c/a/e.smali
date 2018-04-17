.class final Lcom/baidu/location/c/a/e;
.super Ljava/lang/Object;


# instance fields
.field a:D

.field b:D

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/location/c/a/e;->c:I

    iput v0, p0, Lcom/baidu/location/c/a/e;->d:I

    iput v0, p0, Lcom/baidu/location/c/a/e;->e:I

    return-void
.end method

.method private a(DD)D
    .locals 5

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a()D
    .locals 4

    iget-wide v0, p0, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v2, p0, Lcom/baidu/location/c/a/e;->b:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/baidu/location/c/a/e;->a(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method a(Lcom/baidu/location/c/a/e;)D
    .locals 8

    iget-wide v0, p0, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v2, p1, Lcom/baidu/location/c/a/e;->a:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v4, p1, Lcom/baidu/location/c/a/e;->a:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v4, p1, Lcom/baidu/location/c/a/e;->b:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v6, p1, Lcom/baidu/location/c/a/e;->b:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method
