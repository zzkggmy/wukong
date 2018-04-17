.class public Lcom/umeng/socialize/shareboard/c;
.super Landroid/widget/RelativeLayout;
.source "UMActionBoard.java"


# static fields
.field private static final a:I = 0x96


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/socialize/shareboard/b/b;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/c;->b:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/umeng/socialize/shareboard/c;->b()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 71
    new-instance v0, Lcom/umeng/socialize/shareboard/b/b;

    iget-object v1, p0, Lcom/umeng/socialize/shareboard/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/socialize/shareboard/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/shareboard/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/c;->d:Landroid/view/animation/Animation;

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->d:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/shareboard/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/c;->e:Landroid/view/View;

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/c;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->e:Landroid/view/View;

    const/16 v1, 0x32

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 92
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 93
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/c;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/c;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/c;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    iget-object v1, p0, Lcom/umeng/socialize/shareboard/c;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/b/b;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method public a(Lcom/umeng/socialize/shareboard/b/a;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/shareboard/b/b;->a(Lcom/umeng/socialize/shareboard/b/a;)V

    .line 128
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/b/b;->setBackgroundColor(I)V

    .line 129
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 110
    const-string v2, "onMeasure"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActionBoard, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    invoke-virtual {v2}, Lcom/umeng/socialize/shareboard/b/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/umeng/socialize/shareboard/c;->c:Lcom/umeng/socialize/shareboard/b/b;

    invoke-virtual {v3, v0}, Lcom/umeng/socialize/shareboard/b/b;->e(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget-object v3, p0, Lcom/umeng/socialize/shareboard/c;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 118
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    return-void
.end method
