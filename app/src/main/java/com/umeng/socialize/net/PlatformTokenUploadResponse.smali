.class public Lcom/umeng/socialize/net/PlatformTokenUploadResponse;
.super Lcom/umeng/socialize/net/base/SocializeReseponse;
.source "PlatformTokenUploadResponse.java"


# instance fields
.field public mExpiresIn:Ljava/lang/String;

.field public mTencentUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/base/SocializeReseponse;-><init>(Lorg/json/JSONObject;)V

    .line 30
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/net/PlatformTokenUploadResponse;->mJsonData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/net/PlatformTokenUploadResponse;->mJsonData:Lorg/json/JSONObject;

    const-string v1, "tencent"

    .line 54
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const-string v1, "user_id"

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iput-object v0, p0, Lcom/umeng/socialize/net/PlatformTokenUploadResponse;->mTencentUid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method


# virtual methods
.method public parseJsonObject()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/umeng/socialize/net/base/SocializeReseponse;->parseJsonObject()V

    .line 40
    invoke-direct {p0}, Lcom/umeng/socialize/net/PlatformTokenUploadResponse;->a()V

    .line 41
    invoke-direct {p0}, Lcom/umeng/socialize/net/PlatformTokenUploadResponse;->b()V

    .line 42
    return-void
.end method
