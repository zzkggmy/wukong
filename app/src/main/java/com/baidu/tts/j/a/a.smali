.class public Lcom/baidu/tts/j/a/a;
.super Lcom/baidu/tts/loopj/JsonHttpResponseHandler;
.source "GetListHttpHandler.java"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:Lcom/baidu/tts/client/model/ModelBags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelBags;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/j/a/a;->b:Lcom/baidu/tts/client/model/ModelBags;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/loopj/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/baidu/tts/j/a/a;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 54
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    sget-object v0, Lcom/baidu/tts/e/g;->v:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    sget-object v1, Lcom/baidu/tts/e/g;->w:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/baidu/tts/client/model/ModelBags;

    invoke-direct {v0}, Lcom/baidu/tts/client/model/ModelBags;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/j/a/a;->b:Lcom/baidu/tts/client/model/ModelBags;

    .line 69
    sget-object v0, Lcom/baidu/tts/e/g;->n:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/baidu/tts/e/g;->o:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 72
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 102
    :goto_1
    return-void

    .line 73
    :cond_0
    new-instance v3, Lcom/baidu/tts/client/model/ModelInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelInfo;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    sget-object v5, Lcom/baidu/tts/e/g;->i:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setServerId(Ljava/lang/String;)V

    .line 77
    sget-object v5, Lcom/baidu/tts/e/g;->p:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setName(Ljava/lang/String;)V

    .line 79
    sget-object v5, Lcom/baidu/tts/e/g;->q:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setVersionMin(Ljava/lang/String;)V

    .line 81
    sget-object v5, Lcom/baidu/tts/e/g;->r:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setVersionMax(Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/baidu/tts/e/g;->G:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setLanguage(Ljava/lang/String;)V

    .line 85
    sget-object v5, Lcom/baidu/tts/e/g;->k:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setGender(Ljava/lang/String;)V

    .line 87
    sget-object v5, Lcom/baidu/tts/e/g;->L:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setSpeaker(Ljava/lang/String;)V

    .line 89
    sget-object v5, Lcom/baidu/tts/e/g;->l:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setDomain(Ljava/lang/String;)V

    .line 91
    sget-object v5, Lcom/baidu/tts/e/g;->m:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setQuality(Ljava/lang/String;)V

    .line 93
    sget-object v5, Lcom/baidu/tts/e/g;->s:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/ModelInfo;->setTextDataId(Ljava/lang/String;)V

    .line 95
    sget-object v5, Lcom/baidu/tts/e/g;->t:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/baidu/tts/client/model/ModelInfo;->setSpeechDataId(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/baidu/tts/j/a/a;->b:Lcom/baidu/tts/client/model/ModelBags;

    invoke-virtual {v4, v3}, Lcom/baidu/tts/client/model/ModelBags;->addModelInfo(Lcom/baidu/tts/client/model/ModelInfo;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/e/o;->U:Lcom/baidu/tts/e/o;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/j/a/a;->a:Lcom/baidu/tts/aop/tts/TtsError;

    goto/16 :goto_1
.end method
