.class public Lcom/umeng/socialize/view/a/f$a;
.super Ljava/lang/Object;
.source "ACProgressFlower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:Ljava/lang/String;

.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->b:F

    .line 72
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->c:F

    .line 73
    const v0, 0x3e8a3d71    # 0.27f

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->d:F

    .line 75
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->e:I

    .line 76
    iput v2, p0, Lcom/umeng/socialize/view/a/f$a;->f:I

    .line 77
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->g:I

    .line 79
    const/16 v0, 0xc

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->h:I

    .line 80
    const/16 v0, 0x9

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->i:I

    .line 81
    iput v1, p0, Lcom/umeng/socialize/view/a/f$a;->j:F

    .line 83
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->k:F

    .line 84
    iput v1, p0, Lcom/umeng/socialize/view/a/f$a;->l:F

    .line 86
    const/16 v0, 0x64

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->m:I

    .line 87
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->n:F

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/a/f$a;->o:Ljava/lang/String;

    .line 90
    iput v2, p0, Lcom/umeng/socialize/view/a/f$a;->p:I

    .line 91
    iput v1, p0, Lcom/umeng/socialize/view/a/f$a;->q:F

    .line 92
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->r:F

    .line 93
    const/16 v0, 0x28

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->s:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/view/a/f$a;->t:Z

    .line 97
    iput-object p1, p0, Lcom/umeng/socialize/view/a/f$a;->a:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a/f$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/a/f$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->b:F

    return v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->e:I

    return v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->l:F

    return v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->k:F

    return v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->i:I

    return v0
.end method

.method static synthetic g(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->h:I

    return v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->j:F

    return v0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->c:F

    return v0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->d:F

    return v0
.end method

.method static synthetic k(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->f:I

    return v0
.end method

.method static synthetic l(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->g:I

    return v0
.end method

.method static synthetic m(Lcom/umeng/socialize/view/a/f$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/a/f$a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->r:F

    return v0
.end method

.method static synthetic o(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->p:I

    return v0
.end method

.method static synthetic p(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->q:F

    return v0
.end method

.method static synthetic q(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->s:I

    return v0
.end method

.method static synthetic r(Lcom/umeng/socialize/view/a/f$a;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/umeng/socialize/view/a/f$a;->t:Z

    return v0
.end method

.method static synthetic s(Lcom/umeng/socialize/view/a/f$a;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->n:F

    return v0
.end method

.method static synthetic t(Lcom/umeng/socialize/view/a/f$a;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/umeng/socialize/view/a/f$a;->m:I

    return v0
.end method


# virtual methods
.method public a(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->b:F

    .line 102
    return-object p0
.end method

.method public a(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->e:I

    .line 117
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/umeng/socialize/view/a/f$a;->o:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public a(Z)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/umeng/socialize/view/a/f$a;->t:Z

    .line 192
    return-object p0
.end method

.method public a()Lcom/umeng/socialize/view/a/f;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/umeng/socialize/view/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/a/f;-><init>(Lcom/umeng/socialize/view/a/f$a;Lcom/umeng/socialize/view/a/g;)V

    return-object v0
.end method

.method public b(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->c:F

    .line 107
    return-object p0
.end method

.method public b(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->f:I

    .line 122
    return-object p0
.end method

.method public c(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->d:F

    .line 112
    return-object p0
.end method

.method public c(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->g:I

    .line 127
    return-object p0
.end method

.method public d(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->j:F

    .line 142
    return-object p0
.end method

.method public d(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->h:I

    .line 132
    return-object p0
.end method

.method public e(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->k:F

    .line 147
    return-object p0
.end method

.method public e(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->i:I

    .line 137
    return-object p0
.end method

.method public f(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->l:F

    .line 152
    return-object p0
.end method

.method public f(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->m:I

    .line 157
    return-object p0
.end method

.method public g(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->n:F

    .line 162
    return-object p0
.end method

.method public g(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 1

    .prologue
    .line 171
    int-to-float v0, p1

    iput v0, p0, Lcom/umeng/socialize/view/a/f$a;->r:F

    .line 172
    return-object p0
.end method

.method public h(F)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->q:F

    .line 182
    return-object p0
.end method

.method public h(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->p:I

    .line 177
    return-object p0
.end method

.method public i(I)Lcom/umeng/socialize/view/a/f$a;
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/umeng/socialize/view/a/f$a;->s:I

    .line 187
    return-object p0
.end method
