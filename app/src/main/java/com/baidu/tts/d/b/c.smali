.class public Lcom/baidu/tts/d/b/c;
.super Ljava/lang/Object;
.source "ModelFileMemoryFlyweight.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/d/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/c;->d:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/database/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    .line 42
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :cond_1
    iput v2, p0, Lcom/baidu/tts/d/b/c;->c:I

    .line 53
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/tts/d/b/c;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/baidu/tts/d/b/f;->b(Ljava/lang/String;I)V

    .line 54
    return-void

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/e/g;->h:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/baidu/tts/o/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    iput v2, p0, Lcom/baidu/tts/d/b/c;->c:I

    goto :goto_0

    .line 49
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/d/b/c;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/tts/d/b/d;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/baidu/tts/d/b/c;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/d;

    .line 79
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/d;->e()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/baidu/tts/d/b/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/baidu/tts/d/b/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/e/g;->h:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/e/g;->g:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/tts/d/b/c;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/e/g;->f:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
