.class public Lcom/baidu/tts/b/a/b/f$b;
.super Lcom/baidu/tts/k/d;
.source "OnlineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/k/d",
        "<",
        "Lcom/baidu/tts/b/a/b/f$b;",
        ">;"
    }
.end annotation


# static fields
.field private static p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/tts/e/b;

.field private c:Lcom/baidu/tts/e/c;

.field private d:Lcom/baidu/tts/e/l;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 554
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/tts/b/a/b/f$b;->p:Ljava/util/Set;

    .line 556
    sget-object v0, Lcom/baidu/tts/b/a/b/f$b;->p:Ljava/util/Set;

    sget-object v1, Lcom/baidu/tts/e/g;->D:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/baidu/tts/k/d;-><init>()V

    .line 317
    sget-object v0, Lcom/baidu/tts/e/b;->b:Lcom/baidu/tts/e/b;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/e/b;

    .line 318
    sget-object v0, Lcom/baidu/tts/e/c;->f:Lcom/baidu/tts/e/c;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/e/c;

    .line 319
    sget-object v0, Lcom/baidu/tts/e/l;->a:Lcom/baidu/tts/e/l;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Lcom/baidu/tts/e/l;

    .line 328
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->m:I

    .line 329
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    .line 330
    sget-object v0, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    invoke-virtual {v0}, Lcom/baidu/tts/e/m;->b()I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    .line 314
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 523
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->m:I

    .line 524
    return-void
.end method

.method public a(Lcom/baidu/tts/e/b;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/e/b;

    .line 376
    return-void
.end method

.method public a(Lcom/baidu/tts/e/c;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/e/c;

    .line 408
    return-void
.end method

.method public a(Lcom/baidu/tts/e/l;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Lcom/baidu/tts/e/l;

    .line 426
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->k:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 537
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    .line 538
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->l:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public c()Lcom/baidu/tts/e/b;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/e/b;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 551
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    .line 552
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->a:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/e/b;

    invoke-virtual {v0}, Lcom/baidu/tts/e/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->g:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->h:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/e/c;

    invoke-virtual {v0}, Lcom/baidu/tts/e/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->i:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Lcom/baidu/tts/e/l;

    invoke-virtual {v0}, Lcom/baidu/tts/e/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->j:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->m:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    return v0
.end method
