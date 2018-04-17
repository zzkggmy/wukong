.class public Lcom/baidu/tts/client/model/ModelFileBags;
.super Ljava/lang/Object;
.source "ModelFileBags.java"


# instance fields
.field private a:Lcom/baidu/tts/aop/tts/TtsError;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFileInfo(Lcom/baidu/tts/client/model/ModelFileInfo;)V
    .locals 1
    .param p1, "fileInfo"    # Lcom/baidu/tts/client/model/ModelFileInfo;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public generateAbsPath(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileInfo;

    .line 94
    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/model/ModelFileInfo;->generateAbsPath(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getModelFileInfo(I)Lcom/baidu/tts/client/model/ModelFileInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileInfo;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelFileInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/baidu/tts/client/model/ModelFileBags;->getModelFileInfo(I)Lcom/baidu/tts/client/model/ModelFileInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_1
    return-object v0

    .line 78
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileInfo;

    .line 79
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->print()Ljava/lang/String;

    move-result-object v0

    .line 80
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

    .line 85
    :cond_1
    const/4 v0, 0x0

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
    .line 58
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iput-object v1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    .line 71
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 65
    new-instance v3, Lcom/baidu/tts/client/model/ModelFileInfo;

    invoke-direct {v3}, Lcom/baidu/tts/client/model/ModelFileInfo;-><init>()V

    .line 66
    invoke-virtual {v3, v0}, Lcom/baidu/tts/client/model/ModelFileInfo;->setMap(Ljava/util/Map;)V

    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setModelFileInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/model/ModelFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "modelFileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/tts/client/model/ModelFileInfo;>;"
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->b:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0
    .param p1, "ttsError"    # Lcom/baidu/tts/aop/tts/TtsError;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileBags;->a:Lcom/baidu/tts/aop/tts/TtsError;

    .line 41
    return-void
.end method
