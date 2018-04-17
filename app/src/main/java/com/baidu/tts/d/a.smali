.class public Lcom/baidu/tts/d/a;
.super Ljava/lang/Object;
.source "DownloadObserver.java"


# instance fields
.field private a:Lcom/baidu/tts/d/b/a;

.field private b:Lcom/baidu/tts/client/model/OnDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/tts/d/a;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    .line 33
    return-void
.end method

.method public a(Lcom/baidu/tts/d/a/c;)V
    .locals 7

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/baidu/tts/d/a/c;->c()Ljava/util/Set;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    return-void

    .line 53
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/baidu/tts/d/a;->a:Lcom/baidu/tts/d/b/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/d;->b()J

    move-result-wide v2

    .line 56
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/d;->c()J

    move-result-wide v4

    .line 57
    iget-object v0, p0, Lcom/baidu/tts/d/a;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/baidu/tts/d/a;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    invoke-interface/range {v0 .. v5}, Lcom/baidu/tts/client/model/OnDownloadListener;->onProgress(Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/d/b/a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/tts/d/a;->a:Lcom/baidu/tts/d/b/a;

    .line 47
    return-void
.end method

.method public b(Lcom/baidu/tts/d/a/c;)V
    .locals 6

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/baidu/tts/d/a/c;->c()Ljava/util/Set;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    return-void

    .line 67
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/baidu/tts/d/a;->a:Lcom/baidu/tts/d/b/a;

    invoke-virtual {v2, v0}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/baidu/tts/d/b/d;->b()J

    move-result-wide v4

    .line 70
    invoke-virtual {v2}, Lcom/baidu/tts/d/b/d;->c()J

    move-result-wide v2

    .line 71
    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/baidu/tts/d/a;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/baidu/tts/d/a;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    invoke-interface {v2, v0}, Lcom/baidu/tts/client/model/OnDownloadListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/baidu/tts/d/a/c;)V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/baidu/tts/d/a/c;->c()Ljava/util/Set;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    return-void

    .line 83
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/baidu/tts/d/a;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/baidu/tts/d/a;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    invoke-interface {v2, v0}, Lcom/baidu/tts/client/model/OnDownloadListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
