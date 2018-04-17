.class public Lcom/baidu/tts/m/a/d;
.super Ljava/lang/Object;
.source "SpeechSynthesizerMachine.java"

# interfaces
.implements Lcom/baidu/tts/m/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/m/a/d$a;,
        Lcom/baidu/tts/m/a/d$b;,
        Lcom/baidu/tts/m/a/d$c;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/baidu/tts/m/a/a;

.field private b:Lcom/baidu/tts/m/a/e;

.field private c:Lcom/baidu/tts/m/a/c;

.field private d:Lcom/baidu/tts/aop/tts/TtsProxy;

.field private e:Lcom/baidu/tts/client/SpeechSynthesizerListener;

.field private f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private g:Lcom/baidu/tts/aop/ttslistener/TtsListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    new-instance v0, Lcom/baidu/tts/m/a/d$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/m/a/d$1;-><init>(Lcom/baidu/tts/m/a/d;)V

    iput-object v0, p0, Lcom/baidu/tts/m/a/d;->g:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 54
    new-instance v0, Lcom/baidu/tts/m/a/e;

    invoke-direct {v0, p0}, Lcom/baidu/tts/m/a/e;-><init>(Lcom/baidu/tts/m/a/d;)V

    iput-object v0, p0, Lcom/baidu/tts/m/a/d;->b:Lcom/baidu/tts/m/a/e;

    .line 55
    new-instance v0, Lcom/baidu/tts/m/a/c;

    invoke-direct {v0, p0}, Lcom/baidu/tts/m/a/c;-><init>(Lcom/baidu/tts/m/a/d;)V

    iput-object v0, p0, Lcom/baidu/tts/m/a/d;->c:Lcom/baidu/tts/m/a/c;

    .line 56
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->b:Lcom/baidu/tts/m/a/e;

    iput-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    .line 58
    invoke-static {}, Lcom/baidu/tts/aop/tts/TtsProxy;->getInstance()Lcom/baidu/tts/aop/tts/TtsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    .line 59
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    iget-object v1, p0, Lcom/baidu/tts/m/a/d;->g:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/aop/tts/TtsProxy;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 60
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {p1}, Lcom/baidu/tts/o/g;->a(Ljava/lang/String;)Lcom/baidu/tts/e/o;

    move-result-object v0

    .line 366
    if-nez v0, :cond_0

    .line 367
    invoke-direct {p0, p2}, Lcom/baidu/tts/m/a/d;->a(Ljava/util/concurrent/Callable;)I

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/e/o;->a()I

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/util/concurrent/Callable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/m/a/d;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 376
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    sget v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/client/SpeechSynthesizerListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->e:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    return-object v0
.end method

.method private a(Lcom/baidu/tts/k/h;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->e()Lcom/baidu/tts/k/i;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/baidu/tts/k/i;->f()Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .line 407
    :cond_0
    const-string v0, "SpeechSynthesizerMachine"

    const-string v1, "getUtteranceId null"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/baidu/tts/m/a/d;->a(Lcom/baidu/tts/k/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/tts/m/a/d;)Lcom/baidu/tts/aop/tts/TtsProxy;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    return-object v0
.end method

.method private b(Lcom/baidu/tts/k/h;)Lcom/baidu/tts/client/SpeechError;
    .locals 3

    .prologue
    .line 412
    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->f()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I

    move-result v1

    .line 416
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    .line 417
    new-instance v0, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {v0}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    .line 418
    iput v1, v0, Lcom/baidu/tts/client/SpeechError;->code:I

    .line 419
    iput-object v2, v0, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    .line 429
    :goto_0
    return-object v0

    .line 422
    :cond_0
    const-string v0, "SpeechSynthesizerMachine"

    const-string v1, "ttsError is null"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_1
    new-instance v0, Lcom/baidu/tts/client/SpeechError;

    invoke-direct {v0}, Lcom/baidu/tts/client/SpeechError;-><init>()V

    .line 427
    sget-object v1, Lcom/baidu/tts/e/o;->V:Lcom/baidu/tts/e/o;

    invoke-virtual {v1}, Lcom/baidu/tts/e/o;->a()I

    move-result v1

    iput v1, v0, Lcom/baidu/tts/client/SpeechError;->code:I

    .line 428
    sget-object v1, Lcom/baidu/tts/e/o;->V:Lcom/baidu/tts/e/o;

    invoke-virtual {v1}, Lcom/baidu/tts/e/o;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/tts/client/SpeechError;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/tts/m/a/d;Lcom/baidu/tts/k/h;)Lcom/baidu/tts/client/SpeechError;
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/baidu/tts/m/a/d;->b(Lcom/baidu/tts/k/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized p()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/baidu/tts/c/a;

    const/16 v1, 0x3e8

    const-string v2, "SpeechSynthesizerPoolThread"

    .line 278
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v3}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    .line 277
    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/tts/c/a;-><init>(ILjava/lang/String;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 276
    iput-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 390
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    invoke-virtual {v1}, Lcom/baidu/tts/e/m;->a()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 391
    const-string v1, "SpeechSynthesizerMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isTerminated="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/m/a/d;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 397
    :cond_1
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    const-string v0, "SpeechSynthesizerMachine"

    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/a;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/m/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/a;->a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/tts/m/a/e;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->b:Lcom/baidu/tts/m/a/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/a;->a(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/a;->a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    .line 96
    return-void
.end method

.method public a(Lcom/baidu/tts/m/a/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    .line 74
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/a;->b()I

    move-result v0

    return v0
.end method

.method public b(Lcom/baidu/tts/client/TtsMode;)I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/a/a;->b(Lcom/baidu/tts/client/TtsMode;)I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/baidu/tts/k/e;

    invoke-direct {v0}, Lcom/baidu/tts/k/e;-><init>()V

    .line 317
    invoke-virtual {v0, p1}, Lcom/baidu/tts/k/e;->a(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->loadCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/m/a/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method b(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 348
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 349
    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 350
    new-instance v0, Lcom/baidu/tts/m/a/d$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/m/a/d$a;-><init>(Lcom/baidu/tts/m/a/d;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/baidu/tts/m/a/d;->a(Ljava/util/concurrent/Callable;)I

    move-result v0

    .line 352
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/aop/tts/TtsProxy;->setContext(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method b(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->e:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    if-eq v0, p1, :cond_0

    .line 260
    iput-object p1, p0, Lcom/baidu/tts/m/a/d;->e:Lcom/baidu/tts/client/SpeechSynthesizerListener;

    .line 262
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/a;->c()I

    move-result v0

    return v0
.end method

.method c(Lcom/baidu/tts/client/TtsMode;)I
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lcom/baidu/tts/e/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/aop/tts/TtsProxy;->setMode(Lcom/baidu/tts/e/n;)V

    .line 270
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->create()V

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/a/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/baidu/tts/m/a/d$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/tts/m/a/d$b;-><init>(Lcom/baidu/tts/m/a/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/baidu/tts/m/a/d;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/a;->d()I

    move-result v0

    return v0
.end method

.method d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 288
    invoke-static {p1}, Lcom/baidu/tts/e/g;->valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/g;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v1, v0, p2}, Lcom/baidu/tts/aop/tts/TtsProxy;->setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/baidu/tts/m/a/d$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/tts/m/a/d$c;-><init>(Lcom/baidu/tts/m/a/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/baidu/tts/m/a/d;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)I

    move-result v0

    return v0
.end method

.method d(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getTtsEnum()Lcom/baidu/tts/e/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/aop/tts/TtsProxy;->auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/a;->e()I

    move-result v0

    return v0
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 326
    new-instance v0, Lcom/baidu/tts/k/g;

    invoke-direct {v0}, Lcom/baidu/tts/k/g;-><init>()V

    .line 327
    invoke-virtual {v0, p1}, Lcom/baidu/tts/k/g;->b(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p2}, Lcom/baidu/tts/k/g;->a(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->loadModel(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/a;->f()I

    move-result v0

    return v0
.end method

.method f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/baidu/tts/k/f;

    invoke-direct {v0}, Lcom/baidu/tts/k/f;-><init>()V

    .line 334
    invoke-virtual {v0, p1}, Lcom/baidu/tts/k/f;->a(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p2}, Lcom/baidu/tts/k/f;->b(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->loadEnglishModel(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public g()Lcom/baidu/tts/m/a/c;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->c:Lcom/baidu/tts/m/a/c;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->a:Lcom/baidu/tts/m/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/g/b/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->pause()V

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method k()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->resume()V

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method l()I
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/baidu/tts/m/a/d;->q()V

    .line 305
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->stop()V

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method m()I
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/baidu/tts/m/a/d;->q()V

    .line 311
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsProxy;->destroy()V

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method n()I
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/tts/m/a/d;->d:Lcom/baidu/tts/aop/tts/TtsProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/aop/tts/TtsProxy;->freeCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method o()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, -0x1

    return v0
.end method
