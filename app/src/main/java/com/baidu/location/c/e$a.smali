.class Lcom/baidu/location/c/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:D


# direct methods
.method public constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/f/g;)V
    .locals 6

    iput-object p1, p0, Lcom/baidu/location/c/e$a;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/e$a;->b:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/e$a;->c:D

    iget-object v0, p2, Lcom/baidu/location/f/g;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/baidu/location/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/location/c/e$a;->b:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p0, Lcom/baidu/location/c/e$a;->c:D

    rsub-int/lit8 v0, v2, 0x64

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v0, v2

    int-to-double v2, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/c/e$a;->c:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/baidu/location/c/e$a;->c:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/e$a;->c:D

    :cond_1
    return-void
.end method


# virtual methods
.method a(Lcom/baidu/location/c/e$a;)D
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/baidu/location/c/e$a;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/c/e$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/location/c/e$a;->a()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v1, v1, 0x64

    rsub-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, v1

    int-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/baidu/location/c/e$a;->c:D

    invoke-virtual {p1}, Lcom/baidu/location/c/e$a;->b()D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    return-wide v0
.end method

.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/c/e$a;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e$a;->c:D

    return-wide v0
.end method
