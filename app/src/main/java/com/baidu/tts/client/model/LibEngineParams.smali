.class public Lcom/baidu/tts/client/model/LibEngineParams;
.super Ljava/lang/Object;
.source "LibEngineParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->a:Ljava/lang/String;

    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/baidu/tts/e/g;->ab:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->b:Ljava/lang/String;

    .line 29
    sget-object v1, Lcom/baidu/tts/e/g;->l:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/baidu/tts/o/d;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->c:[Ljava/lang/String;

    .line 31
    sget-object v1, Lcom/baidu/tts/e/g;->G:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/baidu/tts/o/d;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->d:[Ljava/lang/String;

    .line 33
    sget-object v1, Lcom/baidu/tts/e/g;->m:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/baidu/tts/o/d;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/LibEngineParams;->e:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getDomain()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/tts/client/model/LibEngineParams;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getJsonResult()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/tts/client/model/LibEngineParams;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/client/model/LibEngineParams;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/tts/client/model/LibEngineParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/tts/client/model/LibEngineParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain([Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # [Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->c:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setLanguage([Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # [Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->d:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setQuality([Ljava/lang/String;)V
    .locals 0
    .param p1, "quality"    # [Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->e:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/tts/client/model/LibEngineParams;->b:Ljava/lang/String;

    .line 52
    return-void
.end method
