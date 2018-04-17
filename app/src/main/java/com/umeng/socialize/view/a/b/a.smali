.class public Lcom/umeng/socialize/view/a/b/a;
.super Landroid/view/View;
.source "CustomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/a/b/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/a/b/a;->d:I

    .line 28
    new-instance v0, Lcom/umeng/socialize/view/a/b/a$a;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/a/b/a$a;-><init>(Lcom/umeng/socialize/view/a/b/a;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/b/a;->e:Landroid/os/Handler;

    .line 30
    iput p2, p0, Lcom/umeng/socialize/view/a/b/a;->a:I

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/b/a;->c:Landroid/graphics/RectF;

    .line 32
    iput-object p3, p0, Lcom/umeng/socialize/view/a/b/a;->b:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 36
    iput p1, p0, Lcom/umeng/socialize/view/a/b/a;->d:I

    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/a;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string v0, "23232"

    const-string v1, "draw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/a/b/a;->b:Ljava/util/List;

    iget v1, p0, Lcom/umeng/socialize/view/a/b/a;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/umeng/socialize/view/a/b/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/umeng/socialize/view/a/b/a;->a:I

    iget v1, p0, Lcom/umeng/socialize/view/a/b/a;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/view/a/b/a;->setMeasuredDimension(II)V

    .line 43
    return-void
.end method
