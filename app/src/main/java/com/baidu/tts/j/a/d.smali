.class public Lcom/baidu/tts/j/a/d;
.super Lcom/baidu/tts/loopj/JsonHttpResponseHandler;
.source "GetModelFileInfosHttpHandler.java"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:Lcom/baidu/tts/client/model/ModelFileBags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelFileBags;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/j/a/d;->b:Lcom/baidu/tts/client/model/ModelFileBags;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/baidu/tts/j/a/d;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 90
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 49
    sget-object v0, Lcom/baidu/tts/e/g;->v:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    sget-object v1, Lcom/baidu/tts/e/g;->w:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-direct {v2}, Lcom/baidu/tts/client/model/ModelFileBags;-><init>()V

    iput-object v2, p0, Lcom/baidu/tts/j/a/d;->b:Lcom/baidu/tts/client/model/ModelFileBags;

    .line 52
    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/baidu/tts/e/g;->c:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 55
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 73
    :goto_1
    return-void

    .line 56
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 57
    sget-object v4, Lcom/baidu/tts/e/g;->i:Lcom/baidu/tts/e/g;

    invoke-virtual {v4}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    sget-object v5, Lcom/baidu/tts/e/g;->g:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    sget-object v6, Lcom/baidu/tts/e/g;->f:Lcom/baidu/tts/e/g;

    invoke-virtual {v6}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    sget-object v7, Lcom/baidu/tts/e/g;->p:Lcom/baidu/tts/e/g;

    invoke-virtual {v7}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    sget-object v8, Lcom/baidu/tts/e/g;->e:Lcom/baidu/tts/e/g;

    invoke-virtual {v8}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    new-instance v8, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-direct {v8}, Lcom/baidu/tts/client/model/ModelFileInfo;-><init>()V

    .line 63
    invoke-virtual {v8, v4}, Lcom/baidu/tts/client/model/ModelFileInfo;->setServerid(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v8, v5}, Lcom/baidu/tts/client/model/ModelFileInfo;->setLength(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v8, v6}, Lcom/baidu/tts/client/model/ModelFileInfo;->setMd5(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v8, v7}, Lcom/baidu/tts/client/model/ModelFileInfo;->setName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v8, v3}, Lcom/baidu/tts/client/model/ModelFileInfo;->setUrl(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/baidu/tts/j/a/d;->b:Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-virtual {v3, v8}, Lcom/baidu/tts/client/model/ModelFileBags;->addFileInfo(Lcom/baidu/tts/client/model/ModelFileInfo;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/e/o;->U:Lcom/baidu/tts/e/o;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/j/a/d;->a:Lcom/baidu/tts/aop/tts/TtsError;

    goto :goto_1
.end method
