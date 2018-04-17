.class public Lcom/umeng/socialize/handler/WeixinPreferences;
.super Ljava/lang/Object;
.source "WeixinPreferences.java"


# static fields
.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final KEY_ACCESS_TOKEN_TTL:Ljava/lang/String; = "expires_in"

.field private static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final KEY_OPENID:Ljava/lang/String; = "openid"

.field private static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final KEY_REFRESH_TOKEN_TTL:Ljava/lang/String; = "rt_expires_in"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenTTL:J

.field private mRefreshToken:Ljava/lang/String;

.field private mRefreshTokenTTL:J

.field private mUID:Ljava/lang/String;

.field private mexpirein:J

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "openid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "access_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "expires_in"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "refresh_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "rt_expires_in"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    .line 39
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "expires_in"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mexpirein:J

    .line 40
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "openid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    .line 120
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 121
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expires_in"

    iget-wide v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 122
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rt_expires_in"

    iget-wide v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expires_in"

    iget-wide v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mexpirein:J

    .line 123
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    return-object v0
.end method

.method public getmap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "openid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "refresh_token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object v0
.end method

.method public isAccessTokenAvailable()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    iget-object v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 97
    .local v1, "isNull":Z
    iget-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mexpirein:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v0, v2

    .line 98
    .local v0, "isExpired":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "isExpired":Z
    :cond_0
    move v0, v3

    .line 97
    goto :goto_0

    .restart local v0    # "isExpired":Z
    :cond_1
    move v2, v3

    .line 98
    goto :goto_1
.end method

.method public isAuth()Z
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/WeixinPreferences;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 112
    .local v0, "isNull":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAuthValid()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    iget-object v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 107
    .local v1, "isNull":Z
    iget-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v0, v2

    .line 108
    .local v0, "isExpired":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "isExpired":Z
    :cond_0
    move v0, v3

    .line 107
    goto :goto_0

    .restart local v0    # "isExpired":Z
    :cond_1
    move v2, v3

    .line 108
    goto :goto_1
.end method

.method public setAuthData(Ljava/util/Map;)Lcom/umeng/socialize/handler/WeixinPreferences;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/socialize/handler/WeixinPreferences;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v8, 0x3e8

    .line 43
    const-string v3, "openid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    .line 44
    const-string v3, "access_token"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 45
    const-string v3, "refresh_token"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 46
    const-string v3, "expires_in"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "time":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mexpirein:J

    .line 50
    :cond_0
    const-string v3, "expires_in"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "accessTTL":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    .line 54
    :cond_1
    const-string v3, "rt_expires_in"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "refreshTTL":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 56
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    .line 59
    :cond_2
    return-object p0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/umeng/socialize/handler/WeixinPreferences;
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 62
    const-string v3, "openid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mUID:Ljava/lang/String;

    .line 63
    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessToken:Ljava/lang/String;

    .line 64
    const-string v3, "refresh_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshToken:Ljava/lang/String;

    .line 65
    const-string v3, "expires_in"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "time":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mexpirein:J

    .line 69
    :cond_0
    const-string v3, "expires_in"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "accessTTL":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mAccessTokenTTL:J

    .line 73
    :cond_1
    const-string v3, "rt_expires_in"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "refreshTTL":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/umeng/socialize/handler/WeixinPreferences;->mRefreshTokenTTL:J

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/WeixinPreferences;->commit()V

    .line 78
    return-object p0
.end method
