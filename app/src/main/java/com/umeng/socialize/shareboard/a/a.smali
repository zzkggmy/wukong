.class public Lcom/umeng/socialize/shareboard/a/a;
.super Lcom/umeng/socialize/shareboard/b/a;
.source "SNSPlatformAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/socialize/shareboard/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/umeng/socialize/shareboard/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;",
            "Lcom/umeng/socialize/shareboard/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/umeng/socialize/shareboard/b/a;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->a:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lcom/umeng/socialize/shareboard/a/a;->a:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/umeng/socialize/shareboard/a/a;->c:Lcom/umeng/socialize/shareboard/a;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/shareboard/a/a;)Lcom/umeng/socialize/shareboard/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->c:Lcom/umeng/socialize/shareboard/a;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/umeng/socialize/shareboard/SnsPlatform;)V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "umeng_socialize_shareboard_image"

    .line 56
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    const-string v2, "drawable"

    iget-object v3, p2, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "umeng_socialize_shareboard_pltform_name"

    .line 61
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    iget-object v2, p2, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method private a(Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->c:Lcom/umeng/socialize/shareboard/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/shareboard/a;->a()Lcom/umeng/socialize/utils/ShareBoardlistener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->c:Lcom/umeng/socialize/shareboard/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/shareboard/a;->a()Lcom/umeng/socialize/utils/ShareBoardlistener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/utils/ShareBoardlistener;->onclick(Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 87
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/shareboard/a/a;Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/shareboard/a/a;->a(Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/shareboard/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/shareboard/SnsPlatform;

    .line 120
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/shareboard/a/a;->b:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "umeng_socialize_shareboard_item"

    .line 121
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 120
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1, v0}, Lcom/umeng/socialize/shareboard/a/a;->a(Landroid/view/View;Lcom/umeng/socialize/shareboard/SnsPlatform;)V

    .line 128
    new-instance v2, Lcom/umeng/socialize/shareboard/a/b;

    invoke-direct {v2, p0, v0}, Lcom/umeng/socialize/shareboard/a/b;-><init>(Lcom/umeng/socialize/shareboard/a/a;Lcom/umeng/socialize/shareboard/SnsPlatform;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v0, Lcom/umeng/socialize/shareboard/a/c;

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/shareboard/a/c;-><init>(Lcom/umeng/socialize/shareboard/a/a;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 164
    return-object v1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/shareboard/SnsPlatform;

    goto :goto_0
.end method
