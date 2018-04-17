.class Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$jsonResponse:Ljava/lang/Object;

.field private final synthetic val$statusCode:I

.field private final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;Ljava/lang/Object;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    iput-object p2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    iput p3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iput-object p4, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$throwable:Ljava/lang/Throwable;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 199
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->access$0(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;)Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->access$0(Lcom/baidu/tts/loopj/JsonHttpResponseHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->access$0(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;)Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    move-result-object v0

    iget v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->access$0(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;)Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$throwable:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->access$0(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;)Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$throwable:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->access$0(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;)Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->this$1:Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;->access$0(Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2;)Lcom/baidu/tts/loopj/JsonHttpResponseHandler;

    move-result-object v0

    iget v1, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/baidu/tts/loopj/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
