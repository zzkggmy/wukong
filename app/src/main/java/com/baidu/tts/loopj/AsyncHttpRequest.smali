.class public Lcom/baidu/tts/loopj/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelIsNotified:Z

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isFinished:Z

.field private isRequestPreProcessed:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "responseHandler"    # Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 49
    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 50
    const-string v0, "request"

    invoke-static {p3, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 51
    const-string v0, "responseHandler"

    invoke-static {p4, v0}, Lcom/baidu/tts/loopj/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iput-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    .line 52
    return-void
.end method

.method private makeRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    instance-of v0, v0, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    check-cast v0, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;->updateRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->onPreProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V

    .line 156
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 163
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->onPostProcessResponse(Lcom/baidu/tts/loopj/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    iget-object v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v3

    move v2, v1

    .line 176
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 217
    :goto_1
    throw v0

    .line 178
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :cond_2
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 186
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UnknownHostException exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    iget v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 206
    :goto_3
    if-eqz v2, :cond_0

    .line 207
    iget-object v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    iget v5, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    invoke-interface {v4, v5}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 212
    sget-object v0, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "Unhandled exception origin cause"

    invoke-interface {v0, v2, v3, v1}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 192
    :catch_2
    move-exception v2

    .line 196
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NPE in HttpClient: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 197
    iget v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_3

    .line 198
    :catch_3
    move-exception v0

    .line 199
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    iget v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_3
.end method

.method private declared-synchronized sendCancelNotification()V
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancelIsNotified:Z

    .line 231
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 242
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->sendCancelNotification()V

    .line 225
    :cond_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPostProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .prologue
    .line 82
    return-void
.end method

.method public onPreProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .prologue
    .line 67
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isRequestPreProcessed:Z

    if-nez v0, :cond_2

    .line 92
    iput-boolean v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isRequestPreProcessed:Z

    .line 93
    invoke-virtual {p0, p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->onPreProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendStartMessage()V

    .line 102
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendFinishMessage()V

    .line 122
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0, p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->onPostProcessRequest(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V

    .line 129
    iput-boolean v4, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isFinished:Z

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_1

    .line 112
    :cond_3
    sget-object v1, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "makeRequestWithRetries returned error"

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setRequestTag(Ljava/lang/Object;)Lcom/baidu/tts/loopj/AsyncHttpRequest;
    .locals 1
    .param p1, "TAG"    # Ljava/lang/Object;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpRequest;->responseHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v0, p1}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->setTag(Ljava/lang/Object;)V

    .line 253
    return-object p0
.end method
