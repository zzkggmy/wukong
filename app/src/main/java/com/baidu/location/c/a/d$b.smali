.class Lcom/baidu/location/c/a/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/location/c/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:D

.field private e:D

.field private f:Z

.field private g:Lcom/baidu/location/c/a/e;

.field private h:Lcom/baidu/location/c/a/e;

.field private i:Z


# direct methods
.method private constructor <init>(DD)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/a/d$b;->c:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/baidu/location/c/a/d$b;->f:Z

    iput-boolean v1, p0, Lcom/baidu/location/c/a/d$b;->i:Z

    iput-wide p1, p0, Lcom/baidu/location/c/a/d$b;->a:D

    iput-wide p3, p0, Lcom/baidu/location/c/a/d$b;->b:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/baidu/location/c/a/d$1;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/location/c/a/d$b;-><init>(DD)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$b;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/a/d$b;->b:D

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$b;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/a/d$b;->e:D

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/a/d$b;->g:Lcom/baidu/location/c/a/e;

    return-object p1
.end method

.method private a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/location/c/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/c/a/d$b;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$b;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/a/d$b;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/location/c/a/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/c/a/d$b;->c:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/a/d$b;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/c/a/d$b;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/a/d$b;->a:D

    return-wide v0
.end method

.method static synthetic b(Lcom/baidu/location/c/a/d$b;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/a/d$b;->d:D

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/location/c/a/d$b;Lcom/baidu/location/c/a/e;)Lcom/baidu/location/c/a/e;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/a/d$b;->h:Lcom/baidu/location/c/a/e;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/c/a/d$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/a/d$b;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/location/c/a/d$b;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/a/d$b;->b:D

    return-wide p1
.end method

.method static synthetic c(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/d$b;->g:Lcom/baidu/location/c/a/e;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/location/c/a/d$b;D)D
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/c/a/d$b;->a:D

    return-wide p1
.end method

.method static synthetic d(Lcom/baidu/location/c/a/d$b;)Lcom/baidu/location/c/a/e;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/d$b;->h:Lcom/baidu/location/c/a/e;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/location/c/a/d$b;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/a/d$b;->d:D

    return-wide v0
.end method

.method static synthetic f(Lcom/baidu/location/c/a/d$b;)D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/a/d$b;->e:D

    return-wide v0
.end method

.method static synthetic g(Lcom/baidu/location/c/a/d$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/a/d$b;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/baidu/location/c/a/d$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/a/d$b;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/baidu/location/c/a/d$b;)Ljava/util/HashMap;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/c/a/d$b;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
