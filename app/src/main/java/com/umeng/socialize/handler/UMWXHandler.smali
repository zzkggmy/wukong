.class public Lcom/umeng/socialize/handler/UMWXHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/handler/UMWXHandler$ShareListenerWrapper;,
        Lcom/umeng/socialize/handler/UMWXHandler$AuthListenerWrapper;
    }
.end annotation


# static fields
.field private static final REFRESH_TOKEN_EXPIRES:I = 0x93a80

.field private static final REQUEST_CODE:I = 0x2766

.field private static final RESP_TYPE_AUTH:I = 0x1

.field private static final RESP_TYPE_SHARE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UMWXHandler"

.field private static sScope:Ljava/lang/String;


# instance fields
.field private config:Lcom/umeng/socialize/PlatformConfig$Weixin;

.field private isToCircle:Z

.field private isWXSceneFavorite:Z

.field private mAuthListener:Lcom/umeng/socialize/UMAuthListener;

.field private mEventHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

.field private mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

.field private mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mcontext:Landroid/content/Context;

.field private umShareListener:Lcom/umeng/socialize/UMShareListener;

.field private weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "snsapi_userinfo,snsapi_friend,snsapi_message"

    sput-object v0, Lcom/umeng/socialize/handler/UMWXHandler;->sScope:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;-><init>()V

    .line 68
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 70
    iput-boolean v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    .line 76
    iput-boolean v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isWXSceneFavorite:Z

    .line 468
    new-instance v0, Lcom/umeng/socialize/handler/UMWXHandler$5;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/handler/UMWXHandler$5;-><init>(Lcom/umeng/socialize/handler/UMWXHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mEventHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/handler/WeixinPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/handler/UMWXHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/umeng/socialize/handler/UMWXHandler;->parseAuthData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/umeng/socialize/handler/UMWXHandler;
    .param p1, "x1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/SocializeException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/umeng/socialize/handler/UMWXHandler;->uploadAuthData(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/umeng/socialize/handler/UMWXHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    return v0
.end method

.method static synthetic access$400(Lcom/umeng/socialize/handler/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/umeng/socialize/handler/UMWXHandler;)Lcom/umeng/socialize/PlatformConfig$Weixin;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/handler/UMWXHandler;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    return-object v0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 517
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAuthWithCode(Ljava/lang/String;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/umeng/socialize/UMAuthListener;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "authURL":Ljava/lang/StringBuilder;
    const-string v1, "https://api.weixin.qq.com/sns/oauth2/access_token?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$Weixin;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "&secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$Weixin;->appSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "&grant_type=authorization_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/umeng/socialize/handler/UMWXHandler$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/umeng/socialize/handler/UMWXHandler$1;-><init>(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/lang/StringBuilder;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 230
    return-void
.end method

.method private getAuthWithRefreshToken(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "refresh_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "authURL":Ljava/lang/StringBuilder;
    const-string v3, "https://api.weixin.qq.com/sns/oauth2/refresh_token?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v3, "appid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    iget-object v4, v4, Lcom/umeng/socialize/PlatformConfig$Weixin;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "&grant_type=refresh_token"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v3, "&refresh_token="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socialize/weixin/net/WXAuthUtils;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "response":Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v2}, Lcom/umeng/socialize/utils/SocializeUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private loadOauthData(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p1}, Lcom/umeng/socialize/weixin/net/WXAuthUtils;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "response":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/umeng/socialize/handler/UMWXHandler;->parseAuthData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/handler/WeixinPreferences;->setBundle(Landroid/os/Bundle;)Lcom/umeng/socialize/handler/WeixinPreferences;

    .line 144
    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    iget-object v3, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    invoke-virtual {v3}, Lcom/umeng/socialize/PlatformConfig$Weixin;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 145
    return-void
.end method

.method private parseAuthData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    :goto_0
    return-object v0

    .line 159
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v4, ""

    .line 163
    .local v4, "key":Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "key":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 165
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "uid"

    const-string v6, "openid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v5, "refresh_token_expires"

    const-wide/32 v6, 0x93a80

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private parseUserInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "errcode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    .line 347
    .local v1, "error":Z
    if-eqz v1, :cond_1

    .line 348
    const-string v8, "UMWXHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v8, "errcode"

    const-string v9, "errcode"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v1    # "error":Z
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 352
    .restart local v1    # "error":Z
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v8, "openid"

    const-string v9, "openid"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v8, "nickname"

    const-string v9, "nickname"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v8, "language"

    const-string v9, "language"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v8, "city"

    const-string v9, "city"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v8, "province"

    const-string v9, "province"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v8, "country"

    const-string v9, "country"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v8, "headimgurl"

    const-string v9, "headimgurl"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v8, "unionid"

    const-string v9, "unionid"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v8, "sex"

    const-string v9, "sex"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v8, "privilege"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 362
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 363
    .local v5, "len":I
    if-lez v5, :cond_0

    .line 364
    new-array v7, v5, [Ljava/lang/String;

    .line 365
    .local v7, "privileges":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 366
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    :cond_2
    const-string v8, "privilege"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 370
    .end local v1    # "error":Z
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "len":I
    .end local v7    # "privileges":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private uploadAuthData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/SocializeException;
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "bundle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/socialize/handler/UMWXHandler$4;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/handler/UMWXHandler$4;-><init>(Lcom/umeng/socialize/handler/UMWXHandler;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 334
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/umeng/socialize/UMAuthListener;

    .prologue
    const/4 v5, 0x0

    .line 105
    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    .line 106
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    invoke-virtual {v4}, Lcom/umeng/socialize/PlatformConfig$Weixin;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 107
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    invoke-virtual {v4}, Lcom/umeng/socialize/PlatformConfig$Weixin;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WEIXIN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    .line 108
    iget-boolean v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    :goto_1
    iput-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 111
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v4}, Lcom/umeng/socialize/handler/WeixinPreferences;->isAuthValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v4}, Lcom/umeng/socialize/handler/WeixinPreferences;->isAccessTokenAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v4}, Lcom/umeng/socialize/handler/WeixinPreferences;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "refreshToken":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    iget-object v6, v6, Lcom/umeng/socialize/PlatformConfig$Weixin;->appId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&grant_type=refresh_token&refresh_token="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/umeng/socialize/handler/UMWXHandler;->loadOauthData(Ljava/lang/String;)V

    .line 120
    .end local v1    # "refreshToken":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v4}, Lcom/umeng/socialize/handler/WeixinPreferences;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1    # "refreshToken":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/umeng/socialize/handler/UMWXHandler;->getAuthWithRefreshToken(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v4, v6, v5, v0}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 131
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "refreshToken":Ljava/lang/String;
    :goto_2
    return-void

    .line 107
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 108
    :cond_2
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_1

    .line 125
    :cond_3
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 126
    .local v2, "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    sget-object v4, Lcom/umeng/socialize/handler/UMWXHandler;->sScope:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 127
    const-string v4, "none"

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 128
    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    goto :goto_2
.end method

.method public deleteAuth(Landroid/content/Context;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/umeng/socialize/UMAuthListener;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/handler/UMWXHandler;->isInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/WeixinPreferences;->delete()V

    .line 256
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 261
    :cond_0
    return-void
.end method

.method public getPlatformInfo(Landroid/app/Activity;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/umeng/socialize/UMAuthListener;

    .prologue
    .line 281
    iget-object v5, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v5}, Lcom/umeng/socialize/handler/WeixinPreferences;->getUID()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "uid":Ljava/lang/String;
    iget-object v5, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v5}, Lcom/umeng/socialize/handler/WeixinPreferences;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "accessToken":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    :cond_0
    const-string v5, "UMWXHandler"

    const-string v6, "please check had authed..."

    invoke-static {v5, v6}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v5, Lcom/umeng/socialize/handler/UMWXHandler$2;

    invoke-direct {v5, p0, p2}, Lcom/umeng/socialize/handler/UMWXHandler$2;-><init>(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/umeng/socialize/UMAuthListener;)V

    invoke-static {v5}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    .line 313
    :goto_0
    return-void

    .line 297
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "https://api.weixin.qq.com/sns/userinfo?access_token="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&openid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v5, "&lang=zh_CN"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/socialize/weixin/net/WXAuthUtils;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "jsonStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/umeng/socialize/handler/UMWXHandler;->parseUserInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 304
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/umeng/socialize/handler/UMWXHandler$3;

    invoke-direct {v5, p0, p2, v3}, Lcom/umeng/socialize/handler/UMWXHandler$3;-><init>(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/umeng/socialize/UMAuthListener;Ljava/util/Map;)V

    invoke-static {v5}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    if-eqz v0, :cond_0

    .line 271
    const/16 v0, 0x2765

    .line 273
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2766

    goto :goto_0
.end method

.method public getWXApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method public getWXEventHandler()Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mEventHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    return-object v0
.end method

.method public isAuthorize(Landroid/content/Context;)Z
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {v0}, Lcom/umeng/socialize/handler/WeixinPreferences;->isAuth()Z

    move-result v0

    return v0
.end method

.method public isClientInstalled()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method public isInstall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMWXHandler;->isClientInstalled()Z

    move-result v0

    return v0
.end method

.method public isSupportAuth()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method protected onAuthCallback(Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;)V
    .locals 7
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .prologue
    const/4 v6, 0x0

    .line 238
    const-class v3, Lcom/umeng/socialize/UMAuthListener;

    iget-object v4, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Dummy;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/UMAuthListener;

    .line 240
    .local v0, "authListener":Lcom/umeng/socialize/UMAuthListener;
    iget v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    if-nez v3, :cond_0

    .line 241
    iget-object v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/umeng/socialize/handler/UMWXHandler;->getAuthWithCode(Ljava/lang/String;Lcom/umeng/socialize/UMAuthListener;)V

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    iget v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 244
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v3, v6}, Lcom/umeng/socialize/UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    goto :goto_0

    .line 246
    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string v4, "weixin auth error ("

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "):"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errStr:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 247
    .local v1, "err":Ljava/lang/CharSequence;
    new-instance v2, Lcom/umeng/socialize/SocializeException;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/socialize/SocializeException;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "ex":Lcom/umeng/socialize/SocializeException;
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v3, v6, v2}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "p"    # Lcom/umeng/socialize/PlatformConfig$Platform;

    .prologue
    .line 85
    new-instance v1, Lcom/umeng/socialize/handler/WeixinPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "weixin"

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/handler/WeixinPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->weixinPreferences:Lcom/umeng/socialize/handler/WeixinPreferences;

    .line 86
    check-cast p2, Lcom/umeng/socialize/PlatformConfig$Weixin;

    .end local p2    # "p":Lcom/umeng/socialize/PlatformConfig$Platform;
    iput-object p2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$Weixin;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 88
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    iget-object v2, v2, Lcom/umeng/socialize/PlatformConfig$Weixin;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 90
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMWXHandler;->isClientInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "msb":Ljava/lang/StringBuilder;
    const-string v1, "\u8bf7\u5b89\u88c5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-boolean v1, Lcom/umeng/socialize/Config;->IsToastTip:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 100
    .end local v0    # "msb":Ljava/lang/StringBuilder;
    :cond_0
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mcontext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method protected onShareCallback(Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;)V
    .locals 5
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;

    .prologue
    .line 449
    iget v0, p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 461
    const-string v0, "UMWXHandler"

    const-string v1, "\u5fae\u4fe1\u53d1\u9001 -- \u672a\u77e5\u9519\u8bef."

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_0
    return-void

    .line 451
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->umShareListener:Lcom/umeng/socialize/UMShareListener;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 454
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->umShareListener:Lcom/umeng/socialize/UMShareListener;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->umShareListener:Lcom/umeng/socialize/UMShareListener;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/umeng/socialize/SocializeException;

    iget v3, p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;->errCode:I

    iget-object v4, p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;->errStr:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/SocializeException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public varargs setScope([Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # [Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/handler/UMWXHandler;->sScope:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setWXSceneFavorite(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isWXSceneFavorite:Z

    .line 528
    return-void
.end method

.method public share(Landroid/app/Activity;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Lcom/umeng/socialize/ShareContent;
    .param p3, "listener"    # Lcom/umeng/socialize/UMShareListener;

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    invoke-virtual {v0}, Lcom/umeng/socialize/PlatformConfig$Weixin;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 379
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->config:Lcom/umeng/socialize/PlatformConfig$Weixin;

    invoke-virtual {v0}, Lcom/umeng/socialize/PlatformConfig$Weixin;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WEIXIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    .line 380
    iget-boolean v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    :goto_1
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 381
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMWXHandler;->isClientInstalled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    :goto_2
    return v1

    .line 379
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_1

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-nez v0, :cond_3

    .line 393
    :cond_3
    new-instance v0, Lcom/umeng/socialize/media/WeiXinShareContent;

    invoke-direct {v0, p2}, Lcom/umeng/socialize/media/WeiXinShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

    .line 395
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

    if-eqz v0, :cond_4

    .line 397
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->parseMediaType()V

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

    iget-object v0, v0, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

    const-string v2, "emoji"

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/umeng/socialize/handler/UMWXHandler;->isToCircle:Z

    if-eqz v0, :cond_4

    .line 400
    const-string v0, "\u5fae\u4fe1\u670b\u53cb\u5708\u4e0d\u652f\u6301\u8868\u60c5\u5206\u4eab..."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 405
    :cond_4
    iput-object p3, p0, Lcom/umeng/socialize/handler/UMWXHandler;->umShareListener:Lcom/umeng/socialize/UMShareListener;

    .line 422
    new-instance v0, Lcom/umeng/socialize/media/WeiXinShareContent;

    invoke-direct {v0, p2}, Lcom/umeng/socialize/media/WeiXinShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/handler/UMWXHandler;->shareTo(Lcom/umeng/socialize/media/WeiXinShareContent;)Z

    move-result v1

    goto :goto_2
.end method

.method public shareTo(Lcom/umeng/socialize/media/WeiXinShareContent;)Z
    .locals 4
    .param p1, "shareContent"    # Lcom/umeng/socialize/media/WeiXinShareContent;

    .prologue
    .line 430
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 431
    .local v0, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mShareContent:Lcom/umeng/socialize/media/WeiXinShareContent;

    iget-object v2, v2, Lcom/umeng/socialize/media/WeiXinShareContent;->mShareType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/umeng/socialize/handler/UMWXHandler;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Lcom/umeng/socialize/media/WeiXinShareContent;->getWxMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 433
    sget-object v2, Lcom/umeng/socialize/handler/UMWXHandler$6;->$SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I

    iget-object v3, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mTarget:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 441
    const/4 v2, 0x2

    iput v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/handler/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v1

    .line 444
    .local v1, "sendReq":Z
    return v1

    .line 435
    .end local v1    # "sendReq":Z
    :pswitch_0
    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    .line 438
    :pswitch_1
    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
