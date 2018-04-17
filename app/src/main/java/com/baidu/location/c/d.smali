.class public Lcom/baidu/location/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static b:Lcom/baidu/location/c/d;


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/location/c/d;->a:[C

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/c/d;->b:Lcom/baidu/location/c/d;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/d;->d:Z

    iput-boolean v0, p0, Lcom/baidu/location/c/d;->c:Z

    return-void
.end method
