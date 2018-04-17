.class Lu/aly/m$1;
.super Lcom/umeng/analytics/g;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/m;->a(Lu/aly/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/r;

.field final synthetic b:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;Lu/aly/r;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lu/aly/m$1;->b:Lu/aly/m;

    iput-object p2, p0, Lu/aly/m$1;->a:Lu/aly/r;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lu/aly/m$1;->b:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->a(Lu/aly/m;)Lu/aly/q;

    move-result-object v0

    iget-object v1, p0, Lu/aly/m$1;->a:Lu/aly/r;

    invoke-interface {v0, v1}, Lu/aly/q;->a(Lu/aly/r;)V

    .line 35
    return-void
.end method
