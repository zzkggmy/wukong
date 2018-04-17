.class Lcom/baidu/location/c/a/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/baidu/location/c/a/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/a/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/a/d$c;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/baidu/location/c/a/d$b;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/a/d$c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$c;Lcom/baidu/location/c/a/d$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/a/d$c;->a(Lcom/baidu/location/c/a/d$b;)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/a/d$c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/c/a/d$c;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/baidu/location/c/a/d$c;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/d$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/baidu/location/c/a/d$c;)I
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/c/a/d$c;->d()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/baidu/location/c/a/d$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/a/d$c;->a()V

    return-void
.end method
