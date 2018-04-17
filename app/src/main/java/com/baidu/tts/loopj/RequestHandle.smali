.class public Lcom/baidu/tts/loopj/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# instance fields
.field private final request:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/tts/loopj/AsyncHttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/tts/loopj/RequestHandle$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/tts/loopj/RequestHandle$1;-><init>(Lcom/baidu/tts/loopj/RequestHandle;Lcom/baidu/tts/loopj/AsyncHttpRequest;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 63
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancel(Z)Z

    move-result v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 119
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/baidu/tts/loopj/RequestHandle;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->setRequestTag(Ljava/lang/Object;)Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 109
    :cond_0
    return-object p0
.end method

.method public shouldBeGarbageCollected()Z
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/tts/loopj/RequestHandle;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 94
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 96
    :cond_0
    return v0

    .line 93
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
