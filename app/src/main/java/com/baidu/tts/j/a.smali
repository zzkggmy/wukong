.class public Lcom/baidu/tts/j/a;
.super Ljava/lang/Object;
.source "ModelMediator.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/tts/database/a;

.field private c:Lcom/baidu/tts/j/a/h;

.field private d:Lcom/baidu/tts/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/baidu/tts/j/a;->a:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/baidu/tts/j/a;->h()V

    .line 39
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/tts/database/a;

    invoke-direct {v0, p0}, Lcom/baidu/tts/database/a;-><init>(Lcom/baidu/tts/j/a;)V

    iput-object v0, p0, Lcom/baidu/tts/j/a;->b:Lcom/baidu/tts/database/a;

    .line 43
    new-instance v0, Lcom/baidu/tts/j/a/h;

    invoke-direct {v0, p0}, Lcom/baidu/tts/j/a/h;-><init>(Lcom/baidu/tts/j/a;)V

    iput-object v0, p0, Lcom/baidu/tts/j/a;->c:Lcom/baidu/tts/j/a/h;

    .line 44
    invoke-static {}, Lcom/baidu/tts/d/c;->f()Lcom/baidu/tts/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    .line 45
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/j/a;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/c;->g()V

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
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
    .line 57
    iget-object v0, p0, Lcom/baidu/tts/j/a;->c:Lcom/baidu/tts/j/a/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a/h;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
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
    .line 69
    iget-object v0, p0, Lcom/baidu/tts/j/a;->c:Lcom/baidu/tts/j/a/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a/h;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/tts/j/a;->c:Lcom/baidu/tts/j/a/h;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a/h;->a()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/tts/j/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/client/model/ModelBags;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/tts/j/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->a(Lcom/baidu/tts/client/model/ModelBags;)V

    .line 148
    return-void
.end method

.method public a(Lcom/baidu/tts/client/model/ModelFileBags;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/tts/j/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->a(Lcom/baidu/tts/client/model/ModelFileBags;)V

    .line 141
    return-void
.end method

.method public a(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/client/model/OnDownloadListener;)V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/baidu/tts/j/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 114
    :goto_0
    return v0

    .line 96
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/g;->h:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/baidu/tts/e/g;->g:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    sget-object v4, Lcom/baidu/tts/e/g;->f:Lcom/baidu/tts/e/g;

    invoke-virtual {v4}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 102
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    invoke-static {}, Lcom/baidu/tts/o/e;->a()Lcom/baidu/tts/o/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/tts/o/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 110
    goto :goto_0

    :cond_3
    move v0, v3

    .line 114
    goto :goto_0
.end method

.method public b()Lcom/baidu/tts/client/model/BasicHandler;
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
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/j/a;->c:Lcom/baidu/tts/j/a/h;

    invoke-virtual {v0}, Lcom/baidu/tts/j/a/h;->b()Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
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
    .line 61
    iget-object v0, p0, Lcom/baidu/tts/j/a;->c:Lcom/baidu/tts/j/a/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a/h;->b(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
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
    .line 73
    iget-object v0, p0, Lcom/baidu/tts/j/a;->c:Lcom/baidu/tts/j/a/h;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/j/a/h;->b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/baidu/tts/j/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 131
    :goto_0
    return v0

    .line 124
    :cond_0
    sget-object v0, Lcom/baidu/tts/e/g;->s:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    sget-object v3, Lcom/baidu/tts/e/g;->t:Lcom/baidu/tts/e/g;

    invoke-virtual {v3}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-virtual {p0, v0}, Lcom/baidu/tts/j/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 127
    invoke-virtual {p0, v1}, Lcom/baidu/tts/j/a;->a(Ljava/lang/String;)Z

    move-result v1

    .line 128
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 131
    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/c;->c()V

    .line 156
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/c;->b()V

    .line 160
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Lcom/baidu/tts/d/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/c;->d()V

    .line 164
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/tts/j/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public g()Lcom/baidu/tts/database/a;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/tts/j/a;->b:Lcom/baidu/tts/database/a;

    return-object v0
.end method
