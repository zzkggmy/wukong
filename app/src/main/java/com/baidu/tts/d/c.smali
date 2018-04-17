.class public Lcom/baidu/tts/d/c;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Lcom/baidu/tts/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/d/c$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/baidu/tts/d/c;


# instance fields
.field private b:Lcom/baidu/tts/j/a;

.field private c:Lcom/baidu/tts/d/b/a;

.field private d:Lcom/baidu/tts/d/a/b;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/baidu/tts/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    .line 48
    new-instance v0, Lcom/baidu/tts/d/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/j/a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/j/a;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/tts/d/c;->f:Lcom/baidu/tts/d/a;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    return-object v0
.end method

.method public static f()Lcom/baidu/tts/d/c;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/baidu/tts/d/c;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/baidu/tts/d/c;

    invoke-direct {v0}, Lcom/baidu/tts/d/c;-><init>()V

    sput-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/baidu/tts/d/c;->a:Lcom/baidu/tts/d/c;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized h()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-direct {v0}, Lcom/baidu/tts/client/model/DownloadHandler;-><init>()V

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/tts/d/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/baidu/tts/d/c;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/baidu/tts/d/c$a;

    invoke-direct {v2, p0, p1}, Lcom/baidu/tts/d/c$a;-><init>(Lcom/baidu/tts/d/c;Lcom/baidu/tts/d/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/DownloadHandler;->setTraceFuture(Ljava/util/concurrent/Future;)V

    .line 154
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->S:Lcom/baidu/tts/e/o;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/DownloadHandler;->setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public a(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/baidu/tts/d/a;

    invoke-direct {v0}, Lcom/baidu/tts/d/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/c;->f:Lcom/baidu/tts/d/a;

    .line 141
    iget-object v0, p0, Lcom/baidu/tts/d/c;->f:Lcom/baidu/tts/d/a;

    iget-object v1, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/a;->a(Lcom/baidu/tts/d/b/a;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/tts/d/c;->f:Lcom/baidu/tts/d/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a;->a(Lcom/baidu/tts/client/model/OnDownloadListener;)V

    .line 143
    return-void
.end method

.method public a(Lcom/baidu/tts/j/a;)V
    .locals 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/j/a;

    .line 135
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    iget-object v1, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/j/a;

    invoke-virtual {v1}, Lcom/baidu/tts/j/a;->g()Lcom/baidu/tts/database/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->a(Lcom/baidu/tts/database/a;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    iget-object v1, p0, Lcom/baidu/tts/d/c;->b:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/j/a;)V

    .line 137
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->b()V

    .line 89
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->c()V

    .line 97
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 100
    const-string v0, "Downloader"

    const-string v1, "enter stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->d()V

    .line 105
    const-string v0, "Downloader"

    const-string v1, "after engine stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :try_start_0
    const-string v0, "Downloader"

    const-string v1, "before awaitTermination"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    invoke-virtual {v1}, Lcom/baidu/tts/e/m;->a()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 111
    const-string v1, "Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after awaitTermination isTermination="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/d/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/d/c;->c:Lcom/baidu/tts/d/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->c()V

    .line 118
    const-string v0, "Downloader"

    const-string v1, "end stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/baidu/tts/d/c;->h()Ljava/util/concurrent/ExecutorService;

    .line 80
    iget-object v0, p0, Lcom/baidu/tts/d/c;->d:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->y()V

    .line 81
    return-void
.end method
