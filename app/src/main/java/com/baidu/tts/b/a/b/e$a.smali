.class public Lcom/baidu/tts/b/a/b/e$a;
.super Lcom/baidu/tts/k/d;
.source "OfflineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/k/d",
        "<",
        "Lcom/baidu/tts/b/a/b/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/baidu/tts/k/d;-><init>()V

    .line 282
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->a:Ljava/lang/String;

    .line 283
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->b:Ljava/lang/String;

    .line 284
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->c:Ljava/lang/String;

    .line 285
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->d:Ljava/lang/String;

    .line 256
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 349
    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->a:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 354
    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->b:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->c:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->d:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->e:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->f:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->g:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$a;->h:Ljava/lang/String;

    .line 421
    return-void
.end method
