.class public final Lu/aly/m;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lu/aly/q;


# static fields
.field private static c:Lu/aly/m;


# instance fields
.field private a:Lu/aly/q;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/m;->b:Landroid/content/Context;

    .line 16
    new-instance v0, Lu/aly/l;

    iget-object v1, p0, Lu/aly/m;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/m;->a:Lu/aly/q;

    .line 17
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/m;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lu/aly/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/m;->c:Lu/aly/m;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Lu/aly/m;

    invoke-direct {v0, p0}, Lu/aly/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/m;->c:Lu/aly/m;

    .line 24
    :cond_0
    sget-object v0, Lu/aly/m;->c:Lu/aly/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lu/aly/m;)Lu/aly/q;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/q;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lu/aly/m$2;

    invoke-direct {v0, p0}, Lu/aly/m$2;-><init>(Lu/aly/m;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public a(Lu/aly/q;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lu/aly/m;->a:Lu/aly/q;

    .line 29
    return-void
.end method

.method public a(Lu/aly/r;)V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lu/aly/m$1;

    invoke-direct {v0, p0, p1}, Lu/aly/m$1;-><init>(Lu/aly/m;Lu/aly/r;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lu/aly/m$3;

    invoke-direct {v0, p0}, Lu/aly/m$3;-><init>(Lu/aly/m;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public b(Lu/aly/r;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/q;

    invoke-interface {v0, p1}, Lu/aly/q;->b(Lu/aly/r;)V

    .line 41
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lu/aly/m$4;

    invoke-direct {v0, p0}, Lu/aly/m$4;-><init>(Lu/aly/m;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->c(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
