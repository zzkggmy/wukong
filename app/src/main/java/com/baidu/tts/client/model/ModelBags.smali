.class public Lcom/baidu/tts/client/model/ModelBags;
.super Ljava/lang/Object;
.source "ModelBags.java"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addModelInfo(Lcom/baidu/tts/client/model/ModelInfo;)V
    .locals 1
    .param p1, "modelInfo"    # Lcom/baidu/tts/client/model/ModelInfo;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public getModelInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public print()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 73
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_1
    return-object v0

    .line 74
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelInfo;

    .line 75
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->print()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 84
    :cond_2
    const-string v0, "no data"

    goto :goto_1
.end method

.method public setList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iput-object v1, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    .line 67
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    new-instance v3, Lcom/baidu/tts/client/model/ModelInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelInfo;-><init>()V

    .line 62
    invoke-virtual {v3, v0}, Lcom/baidu/tts/client/model/ModelInfo;->setMap(Ljava/util/Map;)V

    .line 63
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setModelInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "modelInfos":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/tts/client/model/ModelInfo;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelBags;->b:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0
    .param p1, "ttsError"    # Lcom/baidu/tts/aop/tts/TtsError;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 32
    return-void
.end method
