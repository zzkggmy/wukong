.class public Lcom/baidu/tts/j/a/h;
.super Ljava/lang/Object;
.source "ModelInfoManager.java"


# instance fields
.field private a:Lcom/baidu/tts/j/a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/j/a;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/baidu/tts/j/a/h;->a:Lcom/baidu/tts/j/a;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
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
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/j/a/g;

    invoke-direct {v1, p1}, Lcom/baidu/tts/j/a/g;-><init>(Lcom/baidu/tts/client/model/Conditions;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 39
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 40
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 41
    return-object v1
.end method

.method public a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
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
    .line 63
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/j/a/f;

    invoke-direct {v1, p1}, Lcom/baidu/tts/j/a/f;-><init>(Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 64
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 65
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 66
    return-object v1
.end method

.method public a()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/baidu/tts/client/model/LibEngineParams;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/LibEngineParams;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
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
    .line 78
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/j/a/e;

    invoke-direct {v1}, Lcom/baidu/tts/j/a/e;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 79
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 80
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 81
    return-object v1
.end method

.method public b(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 3
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
    .line 50
    iget-object v0, p0, Lcom/baidu/tts/j/a/h;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->g()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/baidu/tts/j/a/c;

    invoke-direct {v2, v0, p1}, Lcom/baidu/tts/j/a/c;-><init>(Lcom/baidu/tts/database/a;Lcom/baidu/tts/client/model/Conditions;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 52
    new-instance v0, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 53
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 54
    return-object v0
.end method

.method public b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 3
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
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/j/a/h;->a:Lcom/baidu/tts/j/a;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a;->g()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/baidu/tts/j/a/b;

    invoke-direct {v2, v0, p1}, Lcom/baidu/tts/j/a/b;-><init>(Lcom/baidu/tts/database/a;Ljava/util/Set;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 72
    new-instance v0, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 73
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    .line 74
    return-object v0
.end method
