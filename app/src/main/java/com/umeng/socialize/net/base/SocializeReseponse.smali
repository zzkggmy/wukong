.class public Lcom/umeng/socialize/net/base/SocializeReseponse;
.super Lcom/umeng/socialize/net/utils/UResponse;
.source "SocializeReseponse.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SocializeReseponse"


# instance fields
.field protected mJsonData:Lorg/json/JSONObject;

.field public mMsg:Ljava/lang/String;

.field public mStCode:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/utils/UResponse;-><init>(Lorg/json/JSONObject;)V

    .line 32
    const/16 v0, -0x67

    iput v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    .line 40
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/base/SocializeReseponse;->parseStatus(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mJsonData:Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p0}, Lcom/umeng/socialize/net/base/SocializeReseponse;->parseJsonObject()V

    .line 42
    return-void
.end method

.method private parseErrorMsg(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 104
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 107
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    invoke-direct {p0, v0, v4}, Lcom/umeng/socialize/net/base/SocializeReseponse;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    :cond_0
    return-void

    .line 112
    :cond_1
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 113
    const-string v4, "platform_error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {p0, v0, v3}, Lcom/umeng/socialize/net/base/SocializeReseponse;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private parseStatus(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    const-string v1, "SocializeReseponse"

    const-string v2, "failed requesting"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    :try_start_0
    const-string v1, "st"

    const/16 v2, 0x7ce

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    .line 68
    iget v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    if-nez v1, :cond_2

    .line 69
    const-string v1, "SocializeReseponse"

    const-string v2, "no status code in response."

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    const-string v1, "SocializeReseponse"

    const-string v2, "Data body can`t convert to json "

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    :try_start_1
    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    .line 74
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget v1, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_3

    .line 80
    invoke-direct {p0, v2}, Lcom/umeng/socialize/net/base/SocializeReseponse;->parseErrorMsg(Ljava/lang/String;)V

    .line 82
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    const-string v0, "SocializeReseponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error message -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getJsonData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mJsonData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isOk()Z
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    const-string v3, "umeng_share_response"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is http 200:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    if-ne v0, v5, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 45
    goto :goto_0

    :cond_1
    move v1, v2

    .line 46
    goto :goto_1
.end method

.method public parseJsonObject()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
