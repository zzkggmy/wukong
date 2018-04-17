.class public Lcom/lidroid/xutils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final DEFAULT_CONN_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_POOL_SIZE:I = 0x3

.field private static final DEFAULT_RETRY_TIMES:I = 0x3

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final sHttpCache:Lcom/lidroid/xutils/http/HttpCache;


# instance fields
.field private currentRequestExpiry:J

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private responseTextCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/lidroid/xutils/http/HttpCache;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/HttpCache;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    .line 143
    new-instance v0, Lcom/lidroid/xutils/task/PriorityExecutor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/PriorityExecutor;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/HttpUtils;->EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0x3a98

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lidroid/xutils/HttpUtils;-><init>(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "connTimeout"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lidroid/xutils/HttpUtils;-><init>(ILjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "connTimeout"    # I
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 131
    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->responseTextCharset:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lidroid/xutils/HttpUtils;->currentRequestExpiry:J

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 76
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 77
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lidroid/xutils/util/OtherUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 83
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 85
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v2, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 86
    invoke-static {v0, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 89
    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 92
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 93
    .local v1, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 94
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory;->getSocketFactory()Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 96
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 98
    iget-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/lidroid/xutils/http/client/RetryHandler;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/lidroid/xutils/http/client/RetryHandler;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 100
    iget-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/lidroid/xutils/HttpUtils$1;

    invoke-direct {v3, p0}, Lcom/lidroid/xutils/HttpUtils$1;-><init>(Lcom/lidroid/xutils/HttpUtils;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 109
    iget-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/lidroid/xutils/HttpUtils$2;

    invoke-direct {v3, p0}, Lcom/lidroid/xutils/HttpUtils$2;-><init>(Lcom/lidroid/xutils/HttpUtils;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 70
    const/16 v0, 0x3a98

    invoke-direct {p0, v0, p1}, Lcom/lidroid/xutils/HttpUtils;-><init>(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method private sendRequest(Lcom/lidroid/xutils/http/client/HttpRequest;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 4
    .param p1, "request"    # Lcom/lidroid/xutils/http/client/HttpRequest;
    .param p2, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/http/client/HttpRequest;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, "callBack":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler;

    iget-object v1, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v3, p0, Lcom/lidroid/xutils/HttpUtils;->responseTextCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/lidroid/xutils/http/HttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V

    .line 317
    .local v0, "handler":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-wide v2, p0, Lcom/lidroid/xutils/HttpUtils;->currentRequestExpiry:J

    invoke-virtual {v0, v2, v3}, Lcom/lidroid/xutils/http/HttpHandler;->setExpiry(J)V

    .line 318
    iget-object v1, p0, Lcom/lidroid/xutils/HttpUtils;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/HttpHandler;->setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V

    .line 319
    invoke-virtual {p1, p2, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->setRequestParams(Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V

    .line 321
    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p2}, Lcom/lidroid/xutils/http/RequestParams;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/HttpHandler;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    .line 324
    :cond_0
    sget-object v1, Lcom/lidroid/xutils/HttpUtils;->EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/HttpHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 325
    return-object v0
.end method

.method private sendSyncRequest(Lcom/lidroid/xutils/http/client/HttpRequest;Lcom/lidroid/xutils/http/RequestParams;)Lcom/lidroid/xutils/http/ResponseStream;
    .locals 4
    .param p1, "request"    # Lcom/lidroid/xutils/http/client/HttpRequest;
    .param p2, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/lidroid/xutils/http/SyncHttpHandler;

    iget-object v1, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v3, p0, Lcom/lidroid/xutils/HttpUtils;->responseTextCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/lidroid/xutils/http/SyncHttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V

    .line 332
    .local v0, "handler":Lcom/lidroid/xutils/http/SyncHttpHandler;
    iget-wide v2, p0, Lcom/lidroid/xutils/HttpUtils;->currentRequestExpiry:J

    invoke-virtual {v0, v2, v3}, Lcom/lidroid/xutils/http/SyncHttpHandler;->setExpiry(J)V

    .line 333
    iget-object v1, p0, Lcom/lidroid/xutils/HttpUtils;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/SyncHttpHandler;->setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V

    .line 334
    invoke-virtual {p1, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setRequestParams(Lcom/lidroid/xutils/http/RequestParams;)V

    .line 336
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/http/SyncHttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public configCookieStore(Lorg/apache/http/client/CookieStore;)Lcom/lidroid/xutils/HttpUtils;
    .locals 2
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lidroid/xutils/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    return-object p0
.end method

.method public configCurrentHttpCacheExpiry(J)Lcom/lidroid/xutils/HttpUtils;
    .locals 1
    .param p1, "currRequestExpiry"    # J

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/lidroid/xutils/HttpUtils;->currentRequestExpiry:J

    .line 176
    return-object p0
.end method

.method public configDefaultHttpCacheExpiry(J)Lcom/lidroid/xutils/HttpUtils;
    .locals 3
    .param p1, "defaultExpiry"    # J

    .prologue
    .line 169
    invoke-static {p1, p2}, Lcom/lidroid/xutils/http/HttpCache;->setDefaultExpiryTime(J)V

    .line 170
    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/HttpUtils;->currentRequestExpiry:J

    .line 171
    return-object p0
.end method

.method public configHttpCacheSize(I)Lcom/lidroid/xutils/HttpUtils;
    .locals 1
    .param p1, "httpCacheSize"    # I

    .prologue
    .line 164
    sget-object v0, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/http/HttpCache;->setCacheSize(I)V

    .line 165
    return-object p0
.end method

.method public configHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)Lcom/lidroid/xutils/HttpUtils;
    .locals 0
    .param p1, "httpRedirectHandler"    # Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lidroid/xutils/HttpUtils;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 160
    return-object p0
.end method

.method public configRegisterScheme(Lorg/apache/http/conn/scheme/Scheme;)Lcom/lidroid/xutils/HttpUtils;
    .locals 1
    .param p1, "scheme"    # Lorg/apache/http/conn/scheme/Scheme;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 204
    return-object p0
.end method

.method public configRequestRetryCount(I)Lcom/lidroid/xutils/HttpUtils;
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/lidroid/xutils/http/client/RetryHandler;

    invoke-direct {v1, p1}, Lcom/lidroid/xutils/http/client/RetryHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 215
    return-object p0
.end method

.method public configRequestThreadPoolSize(I)Lcom/lidroid/xutils/HttpUtils;
    .locals 1
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 219
    sget-object v0, Lcom/lidroid/xutils/HttpUtils;->EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/task/PriorityExecutor;->setPoolSize(I)V

    .line 220
    return-object p0
.end method

.method public configResponseTextCharset(Ljava/lang/String;)Lcom/lidroid/xutils/HttpUtils;
    .locals 1
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/lidroid/xutils/HttpUtils;->responseTextCharset:Ljava/lang/String;

    .line 155
    :cond_0
    return-object p0
.end method

.method public configSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lcom/lidroid/xutils/HttpUtils;
    .locals 3
    .param p1, "sslSocketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 208
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 209
    .local v0, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    iget-object v1, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 210
    return-object p0
.end method

.method public configSoTimeout(I)Lcom/lidroid/xutils/HttpUtils;
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 198
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 199
    return-object p0
.end method

.method public configTimeout(I)Lcom/lidroid/xutils/HttpUtils;
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 190
    iget-object v1, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 191
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 192
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 193
    return-object p0
.end method

.method public configUserAgent(Ljava/lang/String;)Lcom/lidroid/xutils/HttpUtils;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 186
    return-object p0
.end method

.method public download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    const/4 v5, 0x0

    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .param p5, "autoResume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "Z",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p6, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 6
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .param p5, "autoResume"    # Z
    .param p6, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "ZZ",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    .local p7, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_1
    new-instance v1, Lcom/lidroid/xutils/http/client/HttpRequest;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;-><init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 299
    .local v1, "request":Lcom/lidroid/xutils/http/client/HttpRequest;
    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler;

    iget-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/lidroid/xutils/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/lidroid/xutils/HttpUtils;->responseTextCharset:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, p7}, Lcom/lidroid/xutils/http/HttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V

    .line 301
    .local v0, "handler":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<Ljava/io/File;>;"
    iget-wide v2, p0, Lcom/lidroid/xutils/HttpUtils;->currentRequestExpiry:J

    invoke-virtual {v0, v2, v3}, Lcom/lidroid/xutils/http/HttpHandler;->setExpiry(J)V

    .line 302
    iget-object v2, p0, Lcom/lidroid/xutils/HttpUtils;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V

    .line 304
    if-eqz p4, :cond_2

    .line 305
    invoke-virtual {v1, p4, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->setRequestParams(Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V

    .line 306
    invoke-virtual {p4}, Lcom/lidroid/xutils/http/RequestParams;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    .line 308
    :cond_2
    sget-object v2, Lcom/lidroid/xutils/HttpUtils;->EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/lidroid/xutils/http/HttpHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 309
    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    const/4 v5, 0x0

    .line 268
    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .param p4, "autoResume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "Z",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    .local p5, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .param p4, "autoResume"    # Z
    .param p5, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "ZZ",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    .local p6, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    const/4 v5, 0x0

    .line 253
    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, v5

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;ZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "autoResume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    .local p4, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "autoResume"    # Z
    .param p4, "autoRename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p5, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<Ljava/io/File;>;"
    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lidroid/xutils/HttpUtils;->download(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lidroid/xutils/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 3
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p4, "callBack":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "url may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_0
    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest;

    invoke-direct {v0, p1, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;-><init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 235
    .local v0, "request":Lcom/lidroid/xutils/http/client/HttpRequest;
    invoke-direct {p0, v0, p3, p4}, Lcom/lidroid/xutils/HttpUtils;->sendRequest(Lcom/lidroid/xutils/http/client/HttpRequest;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v1

    return-object v1
.end method

.method public send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    .locals 1
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;)",
            "Lcom/lidroid/xutils/http/HttpHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p3, "callBack":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object v0

    return-object v0
.end method

.method public sendSync(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)Lcom/lidroid/xutils/http/ResponseStream;
    .locals 1
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lidroid/xutils/HttpUtils;->sendSync(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v0

    return-object v0
.end method

.method public sendSync(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)Lcom/lidroid/xutils/http/ResponseStream;
    .locals 3
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/lidroid/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 243
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "url may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest;

    invoke-direct {v0, p1, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;-><init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 246
    .local v0, "request":Lcom/lidroid/xutils/http/client/HttpRequest;
    invoke-direct {p0, v0, p3}, Lcom/lidroid/xutils/HttpUtils;->sendSyncRequest(Lcom/lidroid/xutils/http/client/HttpRequest;Lcom/lidroid/xutils/http/RequestParams;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v1

    return-object v1
.end method
