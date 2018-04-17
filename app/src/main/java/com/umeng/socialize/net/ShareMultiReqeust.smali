.class public Lcom/umeng/socialize/net/ShareMultiReqeust;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "ShareMultiReqeust.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "/share/multi_add/"

.field private static final b:I = 0x11


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/umeng/socialize/media/UMediaObject;

.field private g:Lcom/umeng/socialize/bean/UMLocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 6

    .prologue
    .line 49
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/ShareMultiResponse;

    const/16 v4, 0x11

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->c:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->c:Ljava/util/List;

    new-instance v1, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;

    invoke-direct {v1, p2, p3}, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iput-object p4, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->e:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->f:Lcom/umeng/socialize/media/UMediaObject;

    .line 54
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;

    .line 98
    iget-object v3, v0, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 6

    .prologue
    .line 111
    const-string v1, ""

    .line 112
    const-string v0, ""

    .line 113
    const-string v2, ""

    .line 114
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 126
    const-string v2, ""

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addMediaParams(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 131
    instance-of v3, p1, Lcom/umeng/socialize/media/BaseMediaObject;

    if-eqz v3, :cond_0

    .line 132
    check-cast p1, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 133
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/umeng/socialize/net/ShareMultiReqeust;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 141
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 142
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    const-string v5, "app_name"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\u672a\u77e5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    sget-object v3, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_TITLE:Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 149
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_THUMB:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    const-string v0, "app_website"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_4
    const-string v0, "ext"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addPlatform(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->c:Ljava/util/List;

    new-instance v1, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;

    invoke-direct {v1, p1, p2}, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/share/multi_add/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method public onPrepareRequest()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/umeng/socialize/net/ShareMultiReqeust;->a()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "sns"

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "ak"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "type"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "ct"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->g:Lcom/umeng/socialize/bean/UMLocation;

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "lc"

    iget-object v1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->g:Lcom/umeng/socialize/bean/UMLocation;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/UMLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->f:Lcom/umeng/socialize/media/UMediaObject;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/net/ShareMultiReqeust;->a(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 87
    invoke-static {}, Lcom/umeng/socialize/Config;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    invoke-static {}, Lcom/umeng/socialize/Config;->getAdapterSDK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/ShareMultiReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method

.method public setLocation(Lcom/umeng/socialize/bean/UMLocation;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->g:Lcom/umeng/socialize/bean/UMLocation;

    .line 70
    return-void
.end method

.method public setMedia(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->f:Lcom/umeng/socialize/media/UMediaObject;

    .line 66
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust;->d:Ljava/lang/String;

    .line 62
    return-void
.end method
