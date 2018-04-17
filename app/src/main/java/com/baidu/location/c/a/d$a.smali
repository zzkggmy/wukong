.class Lcom/baidu/location/c/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/baidu/location/c/a/d$a;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/a/d$a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/c/a/d$a;->a:Lcom/baidu/location/c/a/d$a;

    iput p2, p0, Lcom/baidu/location/c/a/d$a;->b:I

    iput p3, p0, Lcom/baidu/location/c/a/d$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/a/d$a;IILcom/baidu/location/c/a/d$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/c/a/d$a;-><init>(Lcom/baidu/location/c/a/d$a;II)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a/d$a;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/a/d$a;->b:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/location/c/a/d$a;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/c/a/d$a;->c:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/location/c/a/d$a;)Lcom/baidu/location/c/a/d$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/a/d$a;->a:Lcom/baidu/location/c/a/d$a;

    return-object v0
.end method
