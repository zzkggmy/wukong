.class public Lcom/umeng/socialize/shareboard/a;
.super Landroid/widget/PopupWindow;
.source "ShareBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/shareboard/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/umeng/socialize/common/ResContainer;

.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/socialize/shareboard/c;

.field private d:Lcom/umeng/socialize/shareboard/a$a;

.field private e:Lcom/umeng/socialize/utils/ShareBoardlistener;

.field private f:Lcom/umeng/socialize/shareboard/b/a;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/umeng/socialize/shareboard/a;->b:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/umeng/socialize/shareboard/a;->c:Lcom/umeng/socialize/shareboard/c;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/a;->g:Ljava/util/List;

    .line 48
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/shareboard/a;->setWindowLayoutMode(II)V

    .line 49
    invoke-static {p1}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/a;->a:Lcom/umeng/socialize/common/ResContainer;

    .line 50
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/a;->b:Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Lcom/umeng/socialize/shareboard/a;->a(Landroid/content/Context;)Lcom/umeng/socialize/shareboard/c;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/a;->c:Lcom/umeng/socialize/shareboard/c;

    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a;->c:Lcom/umeng/socialize/shareboard/c;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/a;->setContentView(Landroid/view/View;)V

    .line 53
    iput-object p2, p0, Lcom/umeng/socialize/shareboard/a;->g:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/umeng/socialize/shareboard/a/a;

    iget-object v1, p0, Lcom/umeng/socialize/shareboard/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p0}, Lcom/umeng/socialize/shareboard/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/umeng/socialize/shareboard/a;)V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/a;->f:Lcom/umeng/socialize/shareboard/b/a;

    .line 56
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a;->c:Lcom/umeng/socialize/shareboard/c;

    iget-object v1, p0, Lcom/umeng/socialize/shareboard/a;->f:Lcom/umeng/socialize/shareboard/b/a;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/c;->a(Lcom/umeng/socialize/shareboard/b/a;)V

    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a;->a:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_shareboard_animation"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->style(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/a;->setAnimationStyle(I)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/a;->setFocusable(Z)V

    .line 60
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/umeng/socialize/shareboard/c;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 211
    new-instance v0, Lcom/umeng/socialize/shareboard/c;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/shareboard/c;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v1, Lcom/umeng/socialize/shareboard/b;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/shareboard/b;-><init>(Lcom/umeng/socialize/shareboard/a;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/c;->a(Landroid/view/View$OnClickListener;)V

    .line 220
    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/socialize/utils/ShareBoardlistener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/a;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    return-object v0
.end method

.method public a(Lcom/umeng/socialize/utils/ShareBoardlistener;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/a;->e:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 68
    return-void
.end method
