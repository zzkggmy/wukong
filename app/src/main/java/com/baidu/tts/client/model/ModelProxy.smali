.class public Lcom/baidu/tts/client/model/ModelProxy;
.super Ljava/lang/Object;
.source "ModelProxy.java"


# instance fields
.field private a:Lcom/baidu/tts/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/baidu/tts/j/a;

    invoke-direct {v0, p1}, Lcom/baidu/tts/j/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    .line 24
    return-void
.end method

.method private a()Lcom/baidu/tts/client/model/Conditions;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v0}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/baidu/tts/client/model/ModelProxy;->getEngineParams()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setVersion(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getDomain()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setDomains([Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getLanguage()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/Conditions;->setLanguages([Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/LibEngineParams;->getQuality()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setQualitys([Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method private a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/baidu/tts/client/model/ModelProxy;->a()Lcom/baidu/tts/client/model/Conditions;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/AvailableConditions;->getSpeakers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setSpeakers(Ljava/util/Set;)V

    .line 84
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/AvailableConditions;->getGenders()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/model/Conditions;->setGenders(Ljava/util/Set;)V

    .line 87
    :cond_0
    return-object v0
.end method


# virtual methods
.method public download(Ljava/util/Set;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/DownloadHandler;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/baidu/tts/d/b;

    invoke-direct {v0}, Lcom/baidu/tts/d/b;-><init>()V

    .line 142
    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b;->a(Ljava/util/Set;)V

    .line 143
    iget-object v1, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/j/a;->a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object v0

    return-object v0
.end method

.method public getEngineParams()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->a()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v0

    return-object v0
.end method

.method public getLocalModelFileInfos(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "fileIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a;->b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLocalModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .param p1, "conditions"    # Lcom/baidu/tts/client/model/Conditions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a;->b(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLocalModelsAvailable(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 3
    .param p1, "conditions"    # Lcom/baidu/tts/client/model/AvailableConditions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/AvailableConditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/tts/client/model/ModelProxy;->a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/ModelProxy;->getLocalModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelBags;

    .line 66
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelBags;->getModelInfos()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    return-object v1

    .line 69
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelInfo;

    .line 70
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/ModelProxy;->isModelAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getServerDefaultModels()Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->b()Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerModelFileInfos(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "fileIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .param p1, "conditions"    # Lcom/baidu/tts/client/model/Conditions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServerModelsAvailable(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .param p1, "conditions"    # Lcom/baidu/tts/client/model/AvailableConditions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/AvailableConditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler",
            "<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/baidu/tts/client/model/ModelProxy;->a(Lcom/baidu/tts/client/model/AvailableConditions;)Lcom/baidu/tts/client/model/Conditions;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/ModelProxy;->getServerModels(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechModelFileAbsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "modelId"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    sget-object v1, Lcom/baidu/tts/e/g;->t:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/j/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextModelFileAbsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "modelId"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    sget-object v1, Lcom/baidu/tts/e/g;->s:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/j/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isModelAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "modelId"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModelFileAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pause()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->c()V

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public resume()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->d()V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public setDownloadListener(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/baidu/tts/client/model/OnDownloadListener;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a;->a(Lcom/baidu/tts/client/model/OnDownloadListener;)V

    .line 31
    return-void
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelProxy;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->e()V

    .line 158
    const/4 v0, 0x0

    return v0
.end method
