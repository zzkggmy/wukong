.class public final Lcom/baidu/location/c/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/a/d$1;,
        Lcom/baidu/location/c/a/d$b;,
        Lcom/baidu/location/c/a/d$c;,
        Lcom/baidu/location/c/a/d$a;
    }
.end annotation


# static fields
.field private static volatile q:Lcom/baidu/location/c/a/d;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/baidu/location/c/a/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/BDLocation;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/BDLocation;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/baidu/location/c/a/d$c;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/baidu/location/c/a/d$b;

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/c/a/d;->q:Lcom/baidu/location/c/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->d:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/c/a/d;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/a/d;->k:Z

    iput-boolean v2, p0, Lcom/baidu/location/c/a/d;->l:Z

    iput-boolean v2, p0, Lcom/baidu/location/c/a/d;->m:Z

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iput-boolean v2, p0, Lcom/baidu/location/c/a/d;->o:Z

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/baidu/location/c/a/d$c;

    invoke-direct {v0, v1}, Lcom/baidu/location/c/a/d$c;-><init>(Lcom/baidu/location/c/a/d$1;)V

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    return-void
.end method

.method private a(Lcom/baidu/location/BDLocation;Ljava/util/ArrayList;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/BDLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/c/a/e;",
            ">;)D"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    new-instance v1, Lcom/baidu/location/c/a/e;

    invoke-direct {v1}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$c;->c(Lcom/baidu/location/c/a/d$c;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/d$b;

    invoke-direct {p0, v0, p2}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/c/a/d$b;Ljava/util/ArrayList;)D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private a(Lcom/baidu/location/c/a/d$b;Ljava/util/ArrayList;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/c/a/d$b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/c/a/e;",
            ">;)D"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const v9, 0x7fffffff

    new-instance v5, Lcom/baidu/location/c/a/e;

    invoke-direct {v5}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/baidu/location/c/a/e;->a:D

    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :goto_0
    return-wide v6

    :cond_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget v2, v0, Lcom/baidu/location/c/a/e;->d:I

    if-eq v2, v9, :cond_1

    iget v2, v0, Lcom/baidu/location/c/a/e;->e:I

    if-eq v2, v9, :cond_1

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget v3, v0, Lcom/baidu/location/c/a/e;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget v0, v0, Lcom/baidu/location/c/a/e;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v5, v2, v0}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    invoke-direct {p0, v3, v2, v0}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v3}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v6

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/baidu/location/c/a/e;->d:I

    if-eq v0, v9, :cond_2

    iget v0, v1, Lcom/baidu/location/c/a/e;->e:I

    if-eq v0, v9, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v2, v1, Lcom/baidu/location/c/a/e;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget v1, v1, Lcom/baidu/location/c/a/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v5, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v2}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v6

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->h(Lcom/baidu/location/c/a/d$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/baidu/location/c/a/e;

    invoke-direct {v0}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->f(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->e(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {v5, v0}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v6

    goto/16 :goto_0

    :cond_3
    move-wide v2, v6

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v5, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v6

    invoke-direct {p0, v6, v0, v1}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5, v6}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_5

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_1

    :cond_4
    move-wide v6, v2

    goto/16 :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private a(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Ljava/util/ArrayList;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/c/a/e;",
            "Lcom/baidu/location/c/a/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/c/a/e;",
            ">;)D"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    move v2, v3

    move-wide v4, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v0

    add-double/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    invoke-virtual {p1, v0}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v0

    add-double v2, v4, v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    invoke-virtual {p1, v0}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private a(Ljava/util/List;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/c/a/e;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    return-wide v4

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v0

    add-double/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public static a()Lcom/baidu/location/c/a/d;
    .locals 2

    sget-object v0, Lcom/baidu/location/c/a/d;->q:Lcom/baidu/location/c/a/d;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/location/c/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/c/a/d;->q:Lcom/baidu/location/c/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/c/a/d;

    invoke-direct {v0}, Lcom/baidu/location/c/a/d;-><init>()V

    sput-object v0, Lcom/baidu/location/c/a/d;->q:Lcom/baidu/location/c/a/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/location/c/a/d;->q:Lcom/baidu/location/c/a/d;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;
    .locals 30

    new-instance v12, Lcom/baidu/location/c/a/e;

    invoke-direct {v12}, Lcom/baidu/location/c/a/e;-><init>()V

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->b:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->b:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/baidu/location/c/a/e;->b:D

    sub-double v8, v2, v6

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    sub-double v8, v4, v18

    sub-double v4, v4, v18

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double v2, v16, v18

    sub-double v8, v14, v6

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_1

    add-double v2, v18, v4

    sub-double v4, v18, v4

    sub-double v8, v6, v6

    sub-double v10, v6, v14

    mul-double/2addr v8, v10

    sub-double v10, v2, v18

    sub-double v14, v18, v16

    mul-double/2addr v10, v14

    add-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    :goto_0
    move-wide v4, v6

    :goto_1
    iput-wide v4, v12, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v2, v12, Lcom/baidu/location/c/a/e;->b:D

    move-object v2, v12

    :goto_2
    return-object v2

    :cond_0
    move-wide v2, v4

    goto :goto_0

    :cond_1
    sub-double v2, v18, v16

    sub-double v8, v6, v14

    div-double v20, v2, v8

    mul-double v2, v14, v18

    mul-double v8, v6, v16

    sub-double/2addr v2, v8

    sub-double v8, v14, v6

    div-double v22, v2, v8

    mul-double v2, v20, v20

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v10, v2, v8

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v20

    sub-double v8, v22, v18

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    sub-double v24, v2, v8

    mul-double v2, v6, v6

    sub-double v8, v22, v18

    sub-double v26, v22, v18

    mul-double v8, v8, v26

    add-double/2addr v2, v8

    mul-double/2addr v4, v4

    sub-double v4, v2, v4

    mul-double v2, v24, v24

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v10

    mul-double/2addr v8, v4

    sub-double/2addr v2, v8

    const-wide/16 v8, 0x0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v12, Lcom/baidu/location/c/a/e;->a:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v12, Lcom/baidu/location/c/a/e;->b:D

    move-object v2, v12

    goto :goto_2

    :cond_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v2, v2, v24

    mul-double v8, v24, v24

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v26, v26, v10

    mul-double v26, v26, v4

    sub-double v8, v8, v26

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    div-double v8, v2, v8

    mul-double v2, v20, v8

    add-double v2, v2, v22

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    mul-double v26, v26, v24

    mul-double v24, v24, v24

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    mul-double v28, v28, v10

    mul-double v4, v4, v28

    sub-double v4, v24, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double v4, v26, v4

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v24

    div-double v10, v4, v10

    mul-double v4, v20, v10

    add-double v4, v4, v22

    sub-double v20, v8, v6

    sub-double/2addr v6, v14

    mul-double v6, v6, v20

    sub-double v14, v2, v18

    sub-double v16, v18, v16

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    const-wide/16 v14, 0x0

    cmpl-double v6, v6, v14

    if-lez v6, :cond_3

    move-wide v4, v8

    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    move-wide v4, v10

    goto/16 :goto_1
.end method

.method private a(Lcom/baidu/location/c/a/g;Lcom/baidu/location/c/a/g;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/c/a/g;",
            "Lcom/baidu/location/c/a/g;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/c/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->a()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c/a/e;->d:I

    iget-object v0, p1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->b()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c/a/e;->e:I

    iget-object v0, p2, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->a()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c/a/e;->d:I

    iget-object v0, p2, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->b()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c/a/e;->e:I

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->a()I

    move-result v3

    iget-object v4, p1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-object v5, p2, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/c/a/d;->a(Ljava/lang/String;IILcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c/a/d;->a(Ljava/util/List;)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_2

    move-object v7, v0

    move-wide v8, v2

    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->b()I

    move-result v2

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->a()I

    move-result v3

    iget-object v4, p1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-object v5, p2, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/c/a/d;->a(Ljava/lang/String;IILcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c/a/d;->a(Ljava/util/List;)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_3

    move-object v7, v0

    move-wide v8, v2

    :cond_3
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->b()I

    move-result v3

    iget-object v4, p1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-object v5, p2, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/c/a/d;->a(Ljava/lang/String;IILcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c/a/d;->a(Ljava/util/List;)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_4

    move-object v7, v0

    move-wide v8, v2

    :cond_4
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/c/a/g;->b()I

    move-result v2

    invoke-virtual {p2}, Lcom/baidu/location/c/a/g;->b()I

    move-result v3

    iget-object v4, p1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-object v5, p2, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/c/a/d;->a(Ljava/lang/String;IILcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c/a/d;->a(Ljava/util/List;)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    move-object v7, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;IILcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/location/c/a/e;",
            "Lcom/baidu/location/c/a/e;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/c/a/e;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lcom/baidu/location/c/a/d$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, p2, v5, v6}, Lcom/baidu/location/c/a/d$a;-><init>(Lcom/baidu/location/c/a/d$a;IILcom/baidu/location/c/a/d$1;)V

    invoke-interface {v8, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/d$a;

    invoke-static {v3}, Lcom/baidu/location/c/a/d$a;->a(Lcom/baidu/location/c/a/d$a;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/baidu/location/c/a/d$a;->b(Lcom/baidu/location/c/a/d$a;)I

    move-result v4

    const/4 v5, 0x4

    if-gt v4, v5, :cond_0

    invoke-static {v3}, Lcom/baidu/location/c/a/d$a;->a(Lcom/baidu/location/c/a/d$a;)I

    move-result v4

    if-eq v4, p3, :cond_1

    invoke-static {v3}, Lcom/baidu/location/c/a/d$a;->a(Lcom/baidu/location/c/a/d$a;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/baidu/location/c/a/d$a;->b(Lcom/baidu/location/c/a/d$a;)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    invoke-static {v3}, Lcom/baidu/location/c/a/d$a;->a(Lcom/baidu/location/c/a/d$a;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v6, v5, :cond_0

    new-instance v9, Lcom/baidu/location/c/a/d$a;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3}, Lcom/baidu/location/c/a/d$a;->b(Lcom/baidu/location/c/a/d$a;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, v3, v5, v10, v11}, Lcom/baidu/location/c/a/d$a;-><init>(Lcom/baidu/location/c/a/d$a;IILcom/baidu/location/c/a/d$1;)V

    invoke-interface {v8, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/d$a;

    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v4}, Lcom/baidu/location/c/a/d$a;->a(Lcom/baidu/location/c/a/d$a;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/baidu/location/c/a/d$a;->c(Lcom/baidu/location/c/a/d$a;)Lcom/baidu/location/c/a/d$a;

    move-result-object v2

    move-object v4, v2

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-ltz v2, :cond_4

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1, v8}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Ljava/util/ArrayList;)D

    move-result-wide v8

    float-to-double v10, v5

    cmpg-double v2, v8, v10

    if-gez v2, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_6
    return-object v6
.end method

.method private a(Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    const-string v0, "Floor"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ":"

    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/baidu/location/c/a/d;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/baidu/location/c/a/d;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    move-object v7, v5

    move-object v4, v0

    move-object v5, v3

    goto :goto_0

    :cond_1
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Lcom/baidu/location/c/a/e;

    invoke-direct {v3}, Lcom/baidu/location/c/a/e;-><init>()V

    const/4 v10, 0x4

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iput-wide v10, v3, Lcom/baidu/location/c/a/e;->a:D

    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iput-wide v10, v3, Lcom/baidu/location/c/a/e;->b:D

    iput v0, v3, Lcom/baidu/location/c/a/e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v3, v1

    :goto_1
    array-length v0, v9

    if-ge v3, v0, :cond_7

    aget-object v0, v9, v3

    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_4
    move v0, v2

    :goto_5
    return v0

    :cond_6
    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, v9, v0

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    aget-object v0, v9, v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_6
    array-length v11, v3

    if-ge v0, v11, :cond_8

    aget-object v11, v3, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, v9, v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_7
    array-length v10, v3

    if-ge v0, v10, :cond_a

    aget-object v10, v3, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto/16 :goto_5
.end method

.method private b(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;
    .locals 30

    new-instance v12, Lcom/baidu/location/c/a/e;

    invoke-direct {v12}, Lcom/baidu/location/c/a/e;-><init>()V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/baidu/location/c/a/e;->b:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->b:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/baidu/location/c/a/e;->b:D

    sub-double v8, v2, v6

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    sub-double v8, v4, v14

    sub-double/2addr v4, v14

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double v2, v14, v18

    sub-double v8, v6, v16

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_1

    add-double v2, v14, v4

    sub-double v4, v14, v4

    sub-double v8, v6, v6

    sub-double v10, v16, v6

    mul-double/2addr v8, v10

    sub-double v10, v2, v14

    sub-double v14, v18, v14

    mul-double/2addr v10, v14

    add-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    :goto_0
    move-wide v4, v6

    :goto_1
    iput-wide v4, v12, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v2, v12, Lcom/baidu/location/c/a/e;->b:D

    move-object v2, v12

    :goto_2
    return-object v2

    :cond_0
    move-wide v2, v4

    goto :goto_0

    :cond_1
    sub-double v2, v18, v14

    sub-double v8, v16, v6

    div-double v20, v2, v8

    mul-double v2, v6, v18

    mul-double v8, v16, v14

    sub-double/2addr v2, v8

    sub-double v8, v6, v16

    div-double v22, v2, v8

    mul-double v2, v20, v20

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v10, v2, v8

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v20

    sub-double v8, v22, v14

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    sub-double v24, v2, v8

    mul-double v2, v6, v6

    sub-double v8, v22, v14

    sub-double v26, v22, v14

    mul-double v8, v8, v26

    add-double/2addr v2, v8

    mul-double/2addr v4, v4

    sub-double v4, v2, v4

    mul-double v2, v24, v24

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v10

    mul-double/2addr v8, v4

    sub-double/2addr v2, v8

    const-wide/16 v8, 0x0

    cmpg-double v2, v2, v8

    if-gez v2, :cond_2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v12, Lcom/baidu/location/c/a/e;->a:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v12, Lcom/baidu/location/c/a/e;->b:D

    move-object v2, v12

    goto :goto_2

    :cond_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v2, v2, v24

    mul-double v8, v24, v24

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v26, v26, v10

    mul-double v26, v26, v4

    sub-double v8, v8, v26

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    div-double v8, v2, v8

    mul-double v2, v20, v8

    add-double v2, v2, v22

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    mul-double v26, v26, v24

    mul-double v24, v24, v24

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    mul-double v28, v28, v10

    mul-double v4, v4, v28

    sub-double v4, v24, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double v4, v26, v4

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v24

    div-double v10, v4, v10

    mul-double v4, v20, v10

    add-double v4, v4, v22

    sub-double v20, v8, v6

    sub-double v6, v16, v6

    mul-double v6, v6, v20

    sub-double v16, v2, v14

    sub-double v14, v18, v14

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    const-wide/16 v14, 0x0

    cmpl-double v6, v6, v14

    if-lez v6, :cond_3

    move-wide v4, v8

    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    move-wide v4, v10

    goto/16 :goto_1
.end method

.method private b(Lcom/baidu/location/c/a/d$b;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/c/a/d$b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/c/a/e;",
            ">;)Z"
        }
    .end annotation

    const v8, 0x7fffffff

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v6, Lcom/baidu/location/c/a/e;

    invoke-direct {v6}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/baidu/location/c/a/e;->a:D

    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    move v5, v4

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget v2, v0, Lcom/baidu/location/c/a/e;->d:I

    if-eq v2, v8, :cond_2

    iget v2, v0, Lcom/baidu/location/c/a/e;->e:I

    if-eq v2, v8, :cond_2

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget v3, v0, Lcom/baidu/location/c/a/e;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget v0, v0, Lcom/baidu/location/c/a/e;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v6, v2, v0}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    invoke-direct {p0, v3, v2, v0}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget v0, v1, Lcom/baidu/location/c/a/e;->d:I

    if-eq v0, v8, :cond_3

    iget v0, v1, Lcom/baidu/location/c/a/e;->e:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v2, v1, Lcom/baidu/location/c/a/e;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget v1, v1, Lcom/baidu/location/c/a/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v6, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move v2, v4

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v6, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v5

    :cond_4
    invoke-static {p1}, Lcom/baidu/location/c/a/d$b;->h(Lcom/baidu/location/c/a/d$b;)Z

    move-result v0

    if-nez v0, :cond_0

    move v5, v4

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;
    .locals 20

    new-instance v2, Lcom/baidu/location/c/a/e;

    invoke-direct {v2}, Lcom/baidu/location/c/a/e;-><init>()V

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/baidu/location/c/a/e;->b:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/baidu/location/c/a/e;->b:D

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/baidu/location/c/a/e;->b:D

    sub-double v16, v10, v14

    sub-double v18, v8, v12

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x40d3880000000000L    # 20000.0

    cmpl-double v3, v16, v18

    if-lez v3, :cond_0

    iput-wide v8, v2, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v6, v2, Lcom/baidu/location/c/a/e;->b:D

    :goto_0
    return-object v2

    :cond_0
    sub-double v14, v10, v14

    sub-double v12, v8, v12

    div-double v12, v14, v12

    mul-double v14, v12, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    div-double v14, v12, v14

    sub-double/2addr v6, v10

    mul-double v16, v12, v8

    add-double v6, v6, v16

    div-double/2addr v4, v12

    add-double/2addr v4, v6

    mul-double/2addr v4, v14

    iput-wide v4, v2, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v4, v2, Lcom/baidu/location/c/a/e;->a:D

    sub-double/2addr v4, v8

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    iput-wide v4, v2, Lcom/baidu/location/c/a/e;->b:D

    goto :goto_0
.end method

.method private c(Lcom/baidu/location/BDLocation;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->o:Z

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getBuildingName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/c/a/d;->k:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->l:Z

    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->m:Z

    invoke-static {}, Lcom/baidu/location/c/a/a;->b()Lcom/baidu/location/c/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/baidu/location/c/a/d;->p:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/baidu/location/c/a/d;->k:Z

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/c/a/a;->b()Lcom/baidu/location/c/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/c/a/a;->a(Ljava/lang/String;)V

    :cond_2
    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->k:Z

    :cond_3
    iget-boolean v1, p0, Lcom/baidu/location/c/a/d;->m:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/baidu/location/c/a/d;->l:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/h/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "indoorinfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v8, p0, Lcom/baidu/location/c/a/d;->m:Z

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v7

    :goto_0
    return v0

    :cond_5
    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->m:Z

    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->l:Z

    invoke-static {}, Lcom/baidu/location/c/a/a;->b()Lcom/baidu/location/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/a/a;->c()V

    move v0, v7

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->i:Ljava/lang/String;

    new-instance v1, Lcom/baidu/location/c/a/d$b;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/baidu/location/c/a/d$b;-><init>(DDLcom/baidu/location/c/a/d$1;)V

    iput-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;D)D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;D)D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/baidu/location/c/a/d;->b(Lcom/baidu/location/BDLocation;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$c;)V

    iput-object v6, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->j:Z

    move v0, v8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$c;)V

    iget-boolean v0, p0, Lcom/baidu/location/c/a/d;->j:Z

    if-eqz v0, :cond_9

    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->j:Z

    :cond_9
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/a/d;->i:Ljava/lang/String;

    move v0, v8

    goto :goto_0

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/location/c/a/d;->e(Lcom/baidu/location/BDLocation;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$c;->b(Lcom/baidu/location/c/a/d$c;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0, v4}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Ljava/util/HashMap;)V

    iget-boolean v0, p0, Lcom/baidu/location/c/a/d;->o:Z

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/BDLocation;)V

    iput-boolean v8, p0, Lcom/baidu/location/c/a/d;->j:Z

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0, v1}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$c;Lcom/baidu/location/c/a/d$b;)V

    :cond_b
    move v0, v8

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, p0, Lcom/baidu/location/c/a/d;->o:Z

    if-nez v0, :cond_10

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/g;

    iget-wide v10, v0, Lcom/baidu/location/c/a/g;->e:D

    cmpl-double v6, v10, v2

    if-lez v6, :cond_15

    iget-wide v2, v0, Lcom/baidu/location/c/a/g;->e:D

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_d
    if-eqz v1, :cond_f

    iget-wide v2, v1, Lcom/baidu/location/c/a/g;->e:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v10

    if-lez v0, :cond_f

    iget-object v0, v1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    iget-object v0, v1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-object v2, v1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-wide v2, v2, Lcom/baidu/location/c/a/e;->a:D

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;D)D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-object v2, v1, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    iget-wide v2, v2, Lcom/baidu/location/c/a/e;->b:D

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;D)D

    const-string v0, "wf2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/baidu/location/c/a/d;->j:Z

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0, v7}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Z)Z

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v2, Lcom/baidu/location/c/a/e;

    invoke-direct {v2}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v0, v2}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/location/c/a/g;->a:Lcom/baidu/location/c/a/e;

    iget-wide v2, v2, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/location/c/a/g;->a:Lcom/baidu/location/c/a/e;

    iget-wide v2, v2, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v2, Lcom/baidu/location/c/a/e;

    invoke-direct {v2}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v0, v2}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/location/c/a/g;->b:Lcom/baidu/location/c/a/e;

    iget-wide v2, v2, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/location/c/a/g;->b:Lcom/baidu/location/c/a/e;

    iget-wide v2, v1, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$c;->b(Lcom/baidu/location/c/a/d$c;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0, v4}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0, v1}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$c;Lcom/baidu/location/c/a/d$b;)V

    :cond_e
    move v0, v8

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$c;)V

    iput-boolean v7, p0, Lcom/baidu/location/c/a/d;->j:Z

    move v0, v8

    goto/16 :goto_0

    :cond_10
    move v0, v8

    goto/16 :goto_0

    :cond_11
    move v0, v8

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/baidu/location/c/a/d;->j:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/BDLocation;)V

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move v0, v8

    goto/16 :goto_0

    :cond_14
    move v0, v8

    goto/16 :goto_0

    :cond_15
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private d(Lcom/baidu/location/BDLocation;)V
    .locals 12

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->e(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->f(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v4}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v6}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;)D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    add-double/2addr v0, v8

    sub-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    add-double/2addr v0, v2

    sub-double/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    new-instance v4, Lcom/baidu/location/c/a/e;

    invoke-direct {v4}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v4, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v4, Lcom/baidu/location/c/a/e;->b:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->g(Lcom/baidu/location/c/a/d$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    :cond_0
    :goto_0
    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    :cond_1
    const-string v0, "dr2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->h(Lcom/baidu/location/c/a/d$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/baidu/location/c/a/d;->b(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v2, v6

    if-nez v1, :cond_4

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v2, v6

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v0, "dr2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v0, "dr2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    iget-wide v0, v3, Lcom/baidu/location/c/a/e;->a:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v6

    if-nez v0, :cond_6

    iget-wide v0, v3, Lcom/baidu/location/c/a/e;->b:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v6

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v0, "dr2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget v0, v0, Lcom/baidu/location/c/a/e;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget v1, v0, Lcom/baidu/location/c/a/e;->d:I

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget v2, v0, Lcom/baidu/location/c/a/e;->e:I

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v3, v0, v1}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v5, Lcom/baidu/location/c/a/e;

    invoke-direct {v5}, Lcom/baidu/location/c/a/e;-><init>()V

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v6}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v6

    iget v6, v6, Lcom/baidu/location/c/a/e;->c:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_9

    new-instance v6, Lcom/baidu/location/c/a/e;

    invoke-direct {v6}, Lcom/baidu/location/c/a/e;-><init>()V

    iget-object v7, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v7}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v7

    iget-wide v8, v7, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v8, v6, Lcom/baidu/location/c/a/e;->a:D

    iget-object v7, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v7}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v7

    iget-wide v8, v7, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v8, v6, Lcom/baidu/location/c/a/e;->b:D

    new-instance v7, Lcom/baidu/location/c/a/e;

    invoke-direct {v7}, Lcom/baidu/location/c/a/e;-><init>()V

    iget-object v8, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v8}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v8

    iget-wide v8, v8, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v8, v7, Lcom/baidu/location/c/a/e;->a:D

    iget-object v8, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v8}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v8

    iget-wide v8, v8, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v8, v7, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {v0, v6}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v8

    invoke-virtual {v0, v7}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_7

    iget v2, v0, Lcom/baidu/location/c/a/e;->c:I

    iput v2, v5, Lcom/baidu/location/c/a/e;->c:I

    iget-wide v8, v0, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v8, v5, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v8, v0, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v8, v5, Lcom/baidu/location/c/a/e;->b:D

    iget v2, v1, Lcom/baidu/location/c/a/e;->c:I

    :cond_7
    invoke-virtual {v0, v6}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v8

    invoke-virtual {v0, v7}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8

    iget v2, v1, Lcom/baidu/location/c/a/e;->c:I

    iput v2, v5, Lcom/baidu/location/c/a/e;->c:I

    iget-wide v8, v1, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v8, v5, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v8, v1, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v8, v5, Lcom/baidu/location/c/a/e;->b:D

    iget v2, v0, Lcom/baidu/location/c/a/e;->c:I

    :cond_8
    invoke-virtual {v0, v6}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v8

    invoke-virtual {v0, v7}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v0

    cmpl-double v0, v8, v0

    if-nez v0, :cond_a

    iget-wide v0, v3, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-wide v0, v3, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v0, "dr2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget v2, v0, Lcom/baidu/location/c/a/e;->c:I

    iget-object v6, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v6}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v6

    iget v6, v6, Lcom/baidu/location/c/a/e;->c:I

    if-ne v2, v6, :cond_b

    iget-wide v6, v1, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v6, v5, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v6, v1, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v6, v5, Lcom/baidu/location/c/a/e;->b:D

    iget v1, v1, Lcom/baidu/location/c/a/e;->c:I

    iput v1, v5, Lcom/baidu/location/c/a/e;->c:I

    iget v2, v0, Lcom/baidu/location/c/a/e;->c:I

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v1, v5, Lcom/baidu/location/c/a/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    new-instance v6, Lcom/baidu/location/c/a/e;

    invoke-direct {v6}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget-wide v2, v1, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v2, v6, Lcom/baidu/location/c/a/e;->a:D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v0, v6, Lcom/baidu/location/c/a/e;->b:D

    :goto_3
    invoke-direct {p0, v4, v5, v6}, Lcom/baidu/location/c/a/d;->b(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v0

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v0, "dr2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-wide v6, v0, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v6, v5, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v6, v0, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v6, v5, Lcom/baidu/location/c/a/e;->b:D

    iget v0, v0, Lcom/baidu/location/c/a/e;->c:I

    iput v0, v5, Lcom/baidu/location/c/a/e;->c:I

    iget v2, v1, Lcom/baidu/location/c/a/e;->c:I

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget-wide v2, v1, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v2, v6, Lcom/baidu/location/c/a/e;->a:D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v0, v6, Lcom/baidu/location/c/a/e;->b:D

    goto :goto_3

    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$c;->c(Lcom/baidu/location/c/a/d$c;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/d$b;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->i(Lcom/baidu/location/c/a/d$b;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->i(Lcom/baidu/location/c/a/d$b;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/g;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/g;

    invoke-direct {p0, v1, v0}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/c/a/g;Lcom/baidu/location/c/a/g;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;D)D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;D)D

    const-string v0, "wf2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_15

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v4}, Lcom/baidu/location/c/a/d$c;->c(Lcom/baidu/location/c/a/d$c;)Ljava/util/ArrayDeque;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    move v3, v1

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/d$b;

    if-nez v3, :cond_12

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :cond_12
    invoke-direct {p0, v1, v0}, Lcom/baidu/location/c/a/d;->b(Lcom/baidu/location/c/a/d$b;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$c;->d(Lcom/baidu/location/c/a/d$c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_14

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;D)D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;D)D

    const-string v0, "wf2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    new-instance v0, Lcom/baidu/location/c/a/e;

    invoke-direct {v0}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    invoke-static {v1, v2, v3}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;D)D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    invoke-static {v1, v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;D)D

    const-string v0, "wf2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Z)Z

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v1, Lcom/baidu/location/c/a/e;

    invoke-direct {v1}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v0, v2, Lcom/baidu/location/c/a/e;->a:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v0, v2, Lcom/baidu/location/c/a/e;->b:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget v0, v0, Lcom/baidu/location/c/a/e;->c:I

    iput v0, v2, Lcom/baidu/location/c/a/e;->c:I

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v1, Lcom/baidu/location/c/a/e;

    invoke-direct {v1}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v0, v2, Lcom/baidu/location/c/a/e;->a:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget-wide v0, v0, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v0, v2, Lcom/baidu/location/c/a/e;->b:D

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget v0, v0, Lcom/baidu/location/c/a/e;->d:I

    iput v0, v2, Lcom/baidu/location/c/a/e;->d:I

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget v0, v0, Lcom/baidu/location/c/a/e;->e:I

    iput v0, v2, Lcom/baidu/location/c/a/e;->e:I

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v0}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget v0, v0, Lcom/baidu/location/c/a/e;->c:I

    iput v0, v2, Lcom/baidu/location/c/a/e;->c:I

    goto/16 :goto_1

    :cond_17
    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_18

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/baidu/location/c/a/d;->a(Lcom/baidu/location/BDLocation;Ljava/util/ArrayList;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_18
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v0, v8, v2

    if-gez v0, :cond_19

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move v4, v1

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1a
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget-wide v2, v1, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    iget-wide v2, v1, Lcom/baidu/location/c/a/e;->b:D

    invoke-virtual {p1, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-wide v4, v1, Lcom/baidu/location/c/a/e;->a:D

    invoke-static {v2, v4, v5}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;D)D

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-wide v4, v1, Lcom/baidu/location/c/a/e;->b:D

    invoke-static {v2, v4, v5}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;D)D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Z)Z

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v2, Lcom/baidu/location/c/a/e;

    invoke-direct {v2}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v1, v2}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget-wide v4, v1, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v4, v2, Lcom/baidu/location/c/a/e;->a:D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget-wide v4, v1, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v4, v2, Lcom/baidu/location/c/a/e;->b:D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget v1, v1, Lcom/baidu/location/c/a/e;->c:I

    iput v1, v2, Lcom/baidu/location/c/a/e;->c:I

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v2, Lcom/baidu/location/c/a/e;

    invoke-direct {v2}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v1, v2}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget-wide v4, v1, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v4, v2, Lcom/baidu/location/c/a/e;->a:D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget-wide v4, v1, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v4, v2, Lcom/baidu/location/c/a/e;->b:D

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget v1, v1, Lcom/baidu/location/c/a/e;->d:I

    iput v1, v2, Lcom/baidu/location/c/a/e;->d:I

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/c/a/e;

    iget v1, v1, Lcom/baidu/location/c/a/e;->e:I

    iput v1, v2, Lcom/baidu/location/c/a/e;->e:I

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v1}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    iget v0, v0, Lcom/baidu/location/c/a/e;->c:I

    iput v0, v1, Lcom/baidu/location/c/a/e;->c:I

    const-string v0, "wf2"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1b
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z
    .locals 12

    iget-wide v0, p1, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v2, p1, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v4, p2, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v6, p2, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v8, p3, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v10, p3, Lcom/baidu/location/c/a/e;->b:D

    sub-double/2addr v4, v0

    sub-double v0, v8, v0

    mul-double/2addr v0, v4

    sub-double v4, v6, v2

    sub-double v2, v10, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)D
    .locals 8

    new-instance v0, Lcom/baidu/location/c/a/e;

    invoke-direct {v0}, Lcom/baidu/location/c/a/e;-><init>()V

    new-instance v1, Lcom/baidu/location/c/a/e;

    invoke-direct {v1}, Lcom/baidu/location/c/a/e;-><init>()V

    iget-wide v2, p2, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v4, p1, Lcom/baidu/location/c/a/e;->a:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v2, p2, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v4, p1, Lcom/baidu/location/c/a/e;->b:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v2, p3, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v4, p1, Lcom/baidu/location/c/a/e;->a:D

    sub-double/2addr v2, v4

    iput-wide v2, v1, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v2, p3, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v4, p1, Lcom/baidu/location/c/a/e;->b:D

    sub-double/2addr v2, v4

    iput-wide v2, v1, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v2, v0, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v4, v1, Lcom/baidu/location/c/a/e;->a:D

    mul-double/2addr v2, v4

    iget-wide v4, v0, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v6, v1, Lcom/baidu/location/c/a/e;->b:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/baidu/location/c/a/e;->a()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/baidu/location/c/a/e;->a()D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private e(Lcom/baidu/location/BDLocation;)Ljava/util/HashMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/BDLocation;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/location/c/a/g;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    new-instance v11, Lcom/baidu/location/c/a/e;

    invoke-direct {v11}, Lcom/baidu/location/c/a/e;-><init>()V

    iput-wide v2, v11, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v4, v11, Lcom/baidu/location/c/a/e;->b:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_5

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v5, v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v7, v6, :cond_2

    move v8, v6

    :goto_1
    if-ge v7, v6, :cond_3

    move v4, v6

    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "_"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3, v4}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v4}, Lcom/baidu/location/c/a/d;->d(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lcom/baidu/location/c/a/g;

    invoke-direct {v13}, Lcom/baidu/location/c/a/g;-><init>()V

    iput-object v6, v13, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    invoke-virtual {v11, v6}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v14

    iput-wide v14, v13, Lcom/baidu/location/c/a/g;->d:D

    iput-object v3, v13, Lcom/baidu/location/c/a/g;->a:Lcom/baidu/location/c/a/e;

    iput-object v4, v13, Lcom/baidu/location/c/a/g;->b:Lcom/baidu/location/c/a/e;

    iget-wide v14, v13, Lcom/baidu/location/c/a/g;->d:D

    const-wide v16, 0x3f2a36e2eb1c432dL    # 2.0E-4

    cmpg-double v4, v14, v16

    if-gez v4, :cond_1

    invoke-virtual {v10, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_a

    const-wide/16 v2, 0x0

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/g;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-wide v2, v2, Lcom/baidu/location/c/a/g;->d:D

    add-double/2addr v2, v12

    div-double v2, v8, v2

    add-double/2addr v2, v4

    move-wide v4, v2

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/g;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, v3, Lcom/baidu/location/c/a/g;->e:D

    :goto_6
    iget-wide v8, v3, Lcom/baidu/location/c/a/g;->e:D

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v8, v12

    if-gez v3, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-wide v14, v3, Lcom/baidu/location/c/a/g;->d:D

    add-double/2addr v12, v14

    div-double/2addr v8, v12

    div-double/2addr v8, v4

    iput-wide v8, v3, Lcom/baidu/location/c/a/g;->e:D

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    move v3, v2

    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_a
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ltz v2, :cond_13

    const/4 v5, 0x0

    const-wide v8, 0x412e847e00000000L    # 999999.0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iget-wide v6, v2, Lcom/baidu/location/c/a/e;->a:D

    iget-wide v14, v11, Lcom/baidu/location/c/a/e;->a:D

    sub-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v14, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpl-double v6, v6, v14

    if-gtz v6, :cond_b

    iget-wide v6, v2, Lcom/baidu/location/c/a/e;->b:D

    iget-wide v14, v11, Lcom/baidu/location/c/a/e;->b:D

    sub-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v14, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpl-double v6, v6, v14

    if-gtz v6, :cond_b

    invoke-virtual {v2, v11}, Lcom/baidu/location/c/a/e;->a(Lcom/baidu/location/c/a/e;)D

    move-result-wide v6

    cmpl-double v13, v8, v6

    if-lez v13, :cond_19

    move-wide v4, v6

    move/from16 v18, v3

    move-object v3, v2

    move/from16 v2, v18

    :goto_9
    move-wide v8, v4

    move v4, v2

    move-object v5, v3

    goto :goto_8

    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/g;

    iget-wide v12, v2, Lcom/baidu/location/c/a/g;->d:D

    cmpg-double v2, v12, v8

    if-gtz v2, :cond_18

    const/4 v2, 0x0

    :goto_b
    move v3, v2

    goto :goto_a

    :cond_d
    if-nez v3, :cond_e

    move-object v2, v10

    :goto_c
    return-object v2

    :cond_e
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    if-nez v2, :cond_f

    move-object v2, v10

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v7, Lcom/baidu/location/c/a/g;

    invoke-direct {v7}, Lcom/baidu/location/c/a/g;-><init>()V

    iput-object v5, v7, Lcom/baidu/location/c/a/g;->c:Lcom/baidu/location/c/a/e;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/baidu/location/c/a/g;->d:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iput-object v2, v7, Lcom/baidu/location/c/a/g;->a:Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iput-object v2, v7, Lcom/baidu/location/c/a/g;->b:Lcom/baidu/location/c/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;D)D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;D)D

    iget-wide v2, v5, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    iget-wide v2, v5, Lcom/baidu/location/c/a/e;->b:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v2, "wf2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/location/c/a/d;->o:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v3, Lcom/baidu/location/c/a/e;

    invoke-direct {v3}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v2, v3}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    iget-object v3, v7, Lcom/baidu/location/c/a/g;->b:Lcom/baidu/location/c/a/e;

    iget-wide v8, v3, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v8, v2, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    iget-object v3, v7, Lcom/baidu/location/c/a/g;->b:Lcom/baidu/location/c/a/e;

    iget-wide v8, v3, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v8, v2, Lcom/baidu/location/c/a/e;->b:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    new-instance v3, Lcom/baidu/location/c/a/e;

    invoke-direct {v3}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-static {v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    iget-wide v8, v5, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v8, v2, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    iget-wide v8, v5, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v8, v2, Lcom/baidu/location/c/a/e;->b:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-wide v8, v5, Lcom/baidu/location/c/a/e;->a:D

    invoke-static {v2, v8, v9}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;D)D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    iget-wide v8, v5, Lcom/baidu/location/c/a/e;->b:D

    invoke-static {v2, v8, v9}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;D)D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2, v10}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$c;->b(Lcom/baidu/location/c/a/d$c;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$c;->c(Lcom/baidu/location/c/a/d$c;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/d$b;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    iget v3, v3, Lcom/baidu/location/c/a/e;->d:I

    if-eq v3, v4, :cond_10

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    iget v3, v3, Lcom/baidu/location/c/a/e;->e:I

    if-ne v3, v4, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/e;

    iput-object v3, v7, Lcom/baidu/location/c/a/g;->a:Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Z)Z

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    iget v3, v3, Lcom/baidu/location/c/a/e;->d:I

    if-ne v3, v4, :cond_17

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v3

    iget v3, v3, Lcom/baidu/location/c/a/e;->e:I

    :goto_d
    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v6

    iget v6, v6, Lcom/baidu/location/c/a/e;->e:I

    if-ne v6, v4, :cond_16

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    iget v3, v2, Lcom/baidu/location/c/a/e;->d:I

    move v6, v3

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iput-object v2, v7, Lcom/baidu/location/c/a/g;->b:Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    new-instance v4, Lcom/baidu/location/c/a/e;

    invoke-direct {v4}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_11

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/e;

    iget-wide v6, v3, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v6, v4, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iget-wide v2, v2, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v2, v4, Lcom/baidu/location/c/a/e;->b:D

    :cond_11
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2, v4}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2, v5}, Lcom/baidu/location/c/a/d$b;->a(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$b;->d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;

    move-result-object v2

    const v3, 0x7fffffff

    iput v3, v2, Lcom/baidu/location/c/a/e;->d:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/baidu/location/c/a/d$b;->b(Lcom/baidu/location/c/a/d$b;Z)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    invoke-static {v2}, Lcom/baidu/location/c/a/d$c;->e(Lcom/baidu/location/c/a/d$c;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2, v3}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$c;Lcom/baidu/location/c/a/d$b;)V

    :cond_13
    :goto_10
    move-object v2, v10

    goto/16 :goto_c

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/e;

    iget-wide v6, v3, Lcom/baidu/location/c/a/e;->a:D

    iput-wide v6, v4, Lcom/baidu/location/c/a/e;->a:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iget-wide v2, v2, Lcom/baidu/location/c/a/e;->b:D

    iput-wide v2, v4, Lcom/baidu/location/c/a/e;->b:D

    goto :goto_f

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/c/a/d;->g:Lcom/baidu/location/c/a/d$c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/c/a/d;->n:Lcom/baidu/location/c/a/d$b;

    invoke-static {v2, v3}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$c;Lcom/baidu/location/c/a/d$b;)V

    goto :goto_10

    :cond_16
    move v6, v3

    goto/16 :goto_e

    :cond_17
    move v3, v6

    goto/16 :goto_d

    :cond_18
    move v2, v3

    goto/16 :goto_b

    :cond_19
    move v2, v4

    move-object v3, v5

    move-wide v4, v8

    goto/16 :goto_9
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/location/c/a/d;->c(Lcom/baidu/location/BDLocation;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "wf2"

    invoke-virtual {p1, v1}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dr2"

    invoke-virtual {p1, v1}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/a/d;->l:Z

    return-void
.end method

.method b(Lcom/baidu/location/BDLocation;)Z
    .locals 14

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/baidu/location/c/a/d;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/location/c/a/d;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v10, Lcom/baidu/location/c/a/e;

    invoke-direct {v10}, Lcom/baidu/location/c/a/e;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v10, Lcom/baidu/location/c/a/e;->a:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v10, Lcom/baidu/location/c/a/e;->b:D

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-wide v6, v4

    move v5, v3

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v5, v3, :cond_0

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/e;

    iget-object v4, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v10, v3, v4}, Lcom/baidu/location/c/a/d;->e(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)D

    move-result-wide v12

    add-double/2addr v6, v12

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/e;

    iget-object v4, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v10, v3, v2}, Lcom/baidu/location/c/a/d;->e(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)D

    move-result-wide v2

    add-double/2addr v2, v6

    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    const/4 v8, 0x1

    :cond_1
    if-nez v8, :cond_5

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-wide v6, v4

    move v4, v2

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v10, v2, v3}, Lcom/baidu/location/c/a/d;->e(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)D

    move-result-wide v2

    add-double/2addr v6, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/c/a/e;

    iget-object v3, p0, Lcom/baidu/location/c/a/d;->a:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/baidu/location/c/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/a/e;

    invoke-direct {p0, v10, v2, v0}, Lcom/baidu/location/c/a/d;->e(Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;Lcom/baidu/location/c/a/e;)D

    move-result-wide v2

    add-double/2addr v2, v6

    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v2, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_2

    :cond_5
    move v0, v8

    goto :goto_4
.end method
