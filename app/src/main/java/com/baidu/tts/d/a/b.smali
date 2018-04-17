.class public Lcom/baidu/tts/d/a/b;
.super Lcom/baidu/tts/i/a;
.source "DownloadEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/d/a/b$a;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/baidu/tts/d/a/a;

.field private b:Lcom/baidu/tts/d/a/h;

.field private c:Lcom/baidu/tts/d/a/e;

.field private f:Lcom/baidu/tts/d/a/d;

.field private g:Lcom/baidu/tts/d/a/g;

.field private h:Ljava/util/concurrent/ThreadPoolExecutor;

.field private i:Lcom/baidu/tts/j/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/baidu/tts/i/a;-><init>()V

    .line 47
    new-instance v0, Lcom/baidu/tts/d/a/h;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/h;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/h;

    .line 48
    new-instance v0, Lcom/baidu/tts/d/a/e;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/e;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/e;

    .line 49
    new-instance v0, Lcom/baidu/tts/d/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/d;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->f:Lcom/baidu/tts/d/a/d;

    .line 50
    new-instance v0, Lcom/baidu/tts/d/a/g;

    invoke-direct {v0, p0}, Lcom/baidu/tts/d/a/g;-><init>(Lcom/baidu/tts/d/a/b;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/g;

    .line 51
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/h;

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    .line 52
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/b;->a()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/d/a/b;)Lcom/baidu/tts/j/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->i:Lcom/baidu/tts/j/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/a/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    .line 74
    return-void
.end method

.method public a(Lcom/baidu/tts/d/a/c;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a/a;->a(Lcom/baidu/tts/d/a/c;)V

    .line 177
    return-void
.end method

.method public a(Lcom/baidu/tts/j/a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/tts/d/a/b;->i:Lcom/baidu/tts/j/a;

    .line 60
    return-void
.end method

.method b(Lcom/baidu/tts/d/a/c;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/tts/d/a/b$a;

    invoke-direct {v1, p0, p1}, Lcom/baidu/tts/d/a/b$a;-><init>(Lcom/baidu/tts/d/a/b;Lcom/baidu/tts/d/a/c;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 204
    return-void
.end method

.method public f()Lcom/baidu/tts/d/a/a;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    return-object v0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->a()V

    .line 117
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->f()V

    .line 125
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->b()V

    .line 133
    return-void
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->c()V

    .line 141
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->d()V

    .line 149
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/a;->e()V

    .line 157
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->a:Lcom/baidu/tts/d/a/a;

    iget-object v1, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/e;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lcom/baidu/tts/d/a/h;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->b:Lcom/baidu/tts/d/a/h;

    return-object v0
.end method

.method public p()Lcom/baidu/tts/d/a/e;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->c:Lcom/baidu/tts/d/a/e;

    return-object v0
.end method

.method public q()Lcom/baidu/tts/d/a/d;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->f:Lcom/baidu/tts/d/a/d;

    return-object v0
.end method

.method public r()Lcom/baidu/tts/d/a/g;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->g:Lcom/baidu/tts/d/a/g;

    return-object v0
.end method

.method s()V
    .locals 5

    .prologue
    .line 180
    new-instance v0, Lcom/baidu/tts/c/a;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/16 v3, 0x3e8

    const-string v4, "downloadPoolThread"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/tts/c/a;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 181
    return-void
.end method

.method t()V
    .locals 4

    .prologue
    .line 184
    const-string v0, "DownloadEngine"

    const-string v1, "enter stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 190
    :cond_0
    :try_start_0
    const-string v0, "DownloadEngine"

    const-string v1, "before awaitTermination"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    invoke-virtual {v1}, Lcom/baidu/tts/e/m;->a()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 193
    const-string v1, "DownloadEngine"

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

    .line 197
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/d/a/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 199
    :cond_1
    const-string v0, "DownloadEngine"

    const-string v1, "end stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method
