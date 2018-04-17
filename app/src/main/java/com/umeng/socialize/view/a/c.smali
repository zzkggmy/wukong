.class public final Lcom/umeng/socialize/view/a/c;
.super Lcom/umeng/socialize/view/a/a;
.source "ACProgressCustom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/a/c$a;
    }
.end annotation


# static fields
.field private static final a:I = -0x1

.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field private d:Lcom/umeng/socialize/view/a/c$a;

.field private e:Lcom/umeng/socialize/view/a/b/a;

.field private f:Ljava/util/Timer;

.field private g:I

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/a/c$a;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lcom/umeng/socialize/view/a/c$a;->a(Lcom/umeng/socialize/view/a/c$a;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/a/a;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/a/c;->g:I

    .line 34
    iput-object p1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    .line 35
    new-instance v0, Lcom/umeng/socialize/view/a/d;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/a/d;-><init>(Lcom/umeng/socialize/view/a/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/a/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/a/c$a;Lcom/umeng/socialize/view/a/d;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/a/c;-><init>(Lcom/umeng/socialize/view/a/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/c;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/umeng/socialize/view/a/c;->g:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/c;Lcom/umeng/socialize/view/a/b/a;)Lcom/umeng/socialize/view/a/b/a;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/umeng/socialize/view/a/c;->e:Lcom/umeng/socialize/view/a/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/umeng/socialize/view/a/c;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/c;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->f:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/c;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/umeng/socialize/view/a/c;->f:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/umeng/socialize/view/a/c;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/umeng/socialize/view/a/c;->h:I

    return p1
.end method

.method static synthetic b(Lcom/umeng/socialize/view/a/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/a/c;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/umeng/socialize/view/a/c;->g:I

    return v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/a/c;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/umeng/socialize/view/a/c;->h:I

    return v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/a/c;)Lcom/umeng/socialize/view/a/b/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->e:Lcom/umeng/socialize/view/a/b/a;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/a/c;)I
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/umeng/socialize/view/a/c;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/socialize/view/a/c;->g:I

    return v0
.end method


# virtual methods
.method public show()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c$a;->b(Lcom/umeng/socialize/view/a/c$a;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 55
    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->e:Lcom/umeng/socialize/view/a/b/a;

    if-nez v1, :cond_2

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/umeng/socialize/view/a/c;->i:Ljava/util/List;

    .line 57
    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c$a;->a(Lcom/umeng/socialize/view/a/c$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/view/a/c;->a(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v2}, Lcom/umeng/socialize/view/a/c$a;->c(Lcom/umeng/socialize/view/a/c$a;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 58
    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c$a;->b(Lcom/umeng/socialize/view/a/c$a;)I

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c$a;->d(Lcom/umeng/socialize/view/a/c$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/view/a/c;->h:I

    move v1, v0

    .line 60
    :goto_0
    iget v0, p0, Lcom/umeng/socialize/view/a/c;->h:I

    if-ge v1, v0, :cond_1

    .line 61
    iget-object v3, p0, Lcom/umeng/socialize/view/a/c;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c$a;->a(Lcom/umeng/socialize/view/a/c$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c$a;->d(Lcom/umeng/socialize/view/a/c$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c$a;->e(Lcom/umeng/socialize/view/a/c$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/view/a/c;->h:I

    move v1, v0

    .line 65
    :goto_1
    iget v0, p0, Lcom/umeng/socialize/view/a/c;->h:I

    if-ge v1, v0, :cond_1

    .line 66
    iget-object v3, p0, Lcom/umeng/socialize/view/a/c;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a/c$a;->e(Lcom/umeng/socialize/view/a/c$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 69
    :cond_1
    new-instance v0, Lcom/umeng/socialize/view/a/b/a;

    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c$a;->a(Lcom/umeng/socialize/view/a/c$a;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/umeng/socialize/view/a/c;->i:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/socialize/view/a/b/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/c;->e:Lcom/umeng/socialize/view/a/b/a;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->e:Lcom/umeng/socialize/view/a/b/a;

    invoke-super {p0, v0}, Lcom/umeng/socialize/view/a/a;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-super {p0}, Lcom/umeng/socialize/view/a/a;->show()V

    .line 74
    const/high16 v0, 0x447a0000    # 1000.0f

    iget-object v1, p0, Lcom/umeng/socialize/view/a/c;->d:Lcom/umeng/socialize/view/a/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a/c$a;->f(Lcom/umeng/socialize/view/a/c$a;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v2, v0

    .line 75
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/c;->f:Ljava/util/Timer;

    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c;->f:Ljava/util/Timer;

    new-instance v1, Lcom/umeng/socialize/view/a/e;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/a/e;-><init>(Lcom/umeng/socialize/view/a/c;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 91
    :goto_2
    return-void

    .line 89
    :cond_3
    const-class v0, Lcom/umeng/socialize/view/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "you must assign the image source in Builder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
