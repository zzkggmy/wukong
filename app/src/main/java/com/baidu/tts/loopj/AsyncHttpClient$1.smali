.class Lcom/baidu/tts/loopj/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 252
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$0(Lcom/baidu/tts/loopj/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    return-void

    .line 255
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 258
    sget-object v3, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v4, "AsyncHttpClient"

    .line 259
    const-string v5, "Headers were overwritten! (%s | %s) overwrites (%s | %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 260
    aput-object v0, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-static {v8}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$0(Lcom/baidu/tts/loopj/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 261
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 259
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-interface {v3, v4, v5}, Lcom/baidu/tts/loopj/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->removeHeader(Lorg/apache/http/Header;)V

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/baidu/tts/loopj/AsyncHttpClient$1;->this$0:Lcom/baidu/tts/loopj/AsyncHttpClient;

    invoke-static {v1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->access$0(Lcom/baidu/tts/loopj/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
