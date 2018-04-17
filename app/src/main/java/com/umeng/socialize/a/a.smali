.class public Lcom/umeng/socialize/a/a;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "AnalyticsReqeust.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/multi_add/"

.field private static final b:I = 0x9


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/umeng/socialize/media/UMediaObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 64
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/a/b;

    const/16 v4, 0x9

    sget-object v5, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;)V

    .line 65
    iput-object p1, p0, Lcom/umeng/socialize/a/a;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/umeng/socialize/a/a;->c:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/umeng/socialize/a/a;->f:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/a/a;->setReqType(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/umeng/socialize/a/a;->g:Lcom/umeng/socialize/media/UMediaObject;

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/umeng/socialize/a/a;->c:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/umeng/socialize/a/a;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/umeng/socialize/a/a;->e:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/umeng/socialize/a/a;->f:Ljava/lang/String;

    .line 85
    return-void
.end method

.method protected getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v1, "/share/multi_add/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/umeng/socialize/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareRequest()V
    .locals 4

    .prologue
    .line 93
    invoke-super {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->onPrepareRequest()V

    .line 94
    const-string v1, "{\"%s\":\"%s\"}"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/umeng/socialize/a/a;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/umeng/socialize/a/a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/umeng/socialize/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "to"

    invoke-virtual {p0, v2, v0}, Lcom/umeng/socialize/a/a;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "sns"

    invoke-virtual {p0, v2, v0}, Lcom/umeng/socialize/a/a;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "ak"

    invoke-virtual {p0, v2, v1}, Lcom/umeng/socialize/a/a;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "type"

    iget-object v2, p0, Lcom/umeng/socialize/a/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/umeng/socialize/a/a;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "ct"

    iget-object v2, p0, Lcom/umeng/socialize/a/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/umeng/socialize/a/a;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "para"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/socialize/a/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/socialize/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/socialize/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/a/a;->g:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/a/a;->addMediaParams(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 107
    invoke-static {}, Lcom/umeng/socialize/Config;->getAdapterSDK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/umeng/socialize/Config;->getAdapterSDK()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/socialize/Config;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/a/a;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/a/a;->d:Ljava/lang/String;

    goto/16 :goto_0
.end method
