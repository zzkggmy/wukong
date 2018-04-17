.class public Lcom/baidu/tts/j/a/g;
.super Ljava/lang/Object;
.source "GetServerModelsWork.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/client/model/ModelBags;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/client/model/Conditions;

.field private b:Lcom/baidu/tts/loopj/RequestHandle;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/client/model/Conditions;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/baidu/tts/j/a/g;->a:Lcom/baidu/tts/client/model/Conditions;

    .line 35
    return-void
.end method

.method private b()Lorg/apache/http/entity/StringEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/j/a/g;->a:Lcom/baidu/tts/client/model/Conditions;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/Conditions;->getJSONConditions()Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/baidu/tts/e/g;->d:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    sget-object v0, Lcom/baidu/tts/e/g;->u:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 69
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelBags;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>()V

    .line 45
    sget-object v1, Lcom/baidu/tts/e/p;->b:Lcom/baidu/tts/e/p;

    invoke-virtual {v1}, Lcom/baidu/tts/e/p;->a()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-direct {p0}, Lcom/baidu/tts/j/a/g;->b()Lorg/apache/http/entity/StringEntity;

    move-result-object v3

    .line 47
    new-instance v5, Lcom/baidu/tts/j/a/a;

    invoke-direct {v5}, Lcom/baidu/tts/j/a/a;-><init>()V

    .line 48
    const/4 v1, 0x0

    const-string v4, "application/json"

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/j/a/g;->b:Lcom/baidu/tts/loopj/RequestHandle;

    .line 49
    invoke-virtual {v5}, Lcom/baidu/tts/j/a/a;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a/g;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    return-object v0
.end method
