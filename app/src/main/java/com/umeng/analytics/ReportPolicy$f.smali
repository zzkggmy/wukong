.class public Lcom/umeng/analytics/ReportPolicy$f;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private b:Lu/aly/t;


# direct methods
.method public constructor <init>(Lu/aly/t;I)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 223
    iput p2, p0, Lcom/umeng/analytics/ReportPolicy$f;->a:I

    .line 224
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$f;->b:Lu/aly/t;

    .line 225
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$f;->b:Lu/aly/t;

    invoke-virtual {v0}, Lu/aly/t;->b()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/ReportPolicy$f;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
