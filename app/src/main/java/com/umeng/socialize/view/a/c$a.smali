.class public Lcom/umeng/socialize/view/a/c$a;
.super Ljava/lang/Object;
.source "ACProgressCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:F

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/umeng/socialize/view/a/c$a;->b:F

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->c:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->d:Ljava/util/List;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/view/a/c$a;->e:I

    .line 104
    const v0, 0x40d570a4    # 6.67f

    iput v0, p0, Lcom/umeng/socialize/view/a/c$a;->f:F

    .line 107
    iput-object p1, p0, Lcom/umeng/socialize/view/a/c$a;->a:Landroid/content/Context;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/c$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/a/c$a;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/umeng/socialize/view/a/c$a;->e:I

    return v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/a/c$a;)F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/umeng/socialize/view/a/c$a;->b:F

    return v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/a/c$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/a/c$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/a/c$a;)F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/umeng/socialize/view/a/c$a;->f:F

    return v0
.end method


# virtual methods
.method public a(F)Lcom/umeng/socialize/view/a/c$a;
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/umeng/socialize/view/a/c$a;->b:F

    .line 112
    return-object p0
.end method

.method public varargs a([Ljava/lang/Integer;)Lcom/umeng/socialize/view/a/c$a;
    .locals 1

    .prologue
    .line 121
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->c:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/a/c$a;->e:I

    .line 126
    :cond_0
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/umeng/socialize/view/a/c$a;
    .locals 1

    .prologue
    .line 130
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/view/a/c$a;->d:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/view/a/c$a;->e:I

    .line 135
    :cond_0
    return-object p0
.end method

.method public a()Lcom/umeng/socialize/view/a/c;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/umeng/socialize/view/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/a/c;-><init>(Lcom/umeng/socialize/view/a/c$a;Lcom/umeng/socialize/view/a/d;)V

    return-object v0
.end method

.method public b(F)Lcom/umeng/socialize/view/a/c$a;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/umeng/socialize/view/a/c$a;->f:F

    .line 117
    return-object p0
.end method
