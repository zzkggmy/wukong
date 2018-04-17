.class public Lcom/baidu/tts/d/b/d;
.super Ljava/lang/Object;
.source "ModelMemoryFlyweight.java"


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

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 4
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
    iget v0, p0, Lcom/baidu/tts/d/b/d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    sget-object v2, Lcom/baidu/tts/e/g;->s:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    sget-object v3, Lcom/baidu/tts/e/g;->t:Lcom/baidu/tts/e/g;

    invoke-virtual {v3}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/database/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    .line 47
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_1
    iput v3, p0, Lcom/baidu/tts/d/b/d;->c:I

    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/tts/d/b/d;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/baidu/tts/d/b/f;->a(Ljava/lang/String;I)V

    .line 62
    return-void

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/e/g;->s:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    sget-object v2, Lcom/baidu/tts/e/g;->t:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    iput v3, p0, Lcom/baidu/tts/d/b/d;->c:I

    goto :goto_0

    .line 55
    :cond_4
    const/4 v2, 0x1

    iput v2, p0, Lcom/baidu/tts/d/b/d;->c:I

    .line 56
    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    sget-object v3, Lcom/baidu/tts/e/g;->s:Lcom/baidu/tts/e/g;

    invoke-virtual {v3}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/util/Map;

    sget-object v2, Lcom/baidu/tts/e/g;->t:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/baidu/tts/d/b/d;->d:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/baidu/tts/d/b/d;->e:J

    return-wide v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/tts/d/b/d;->e:J

    .line 114
    invoke-virtual {p0}, Lcom/baidu/tts/d/b/d;->a()Ljava/util/Set;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 121
    iget-wide v4, p0, Lcom/baidu/tts/d/b/d;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/tts/d/b/d;->e:J

    goto :goto_0
.end method

.method public e()V
    .locals 6

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/tts/d/b/d;->d:J

    .line 127
    invoke-virtual {p0}, Lcom/baidu/tts/d/b/d;->a()Ljava/util/Set;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v2

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v0}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v2, v0}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->b()J

    move-result-wide v2

    .line 137
    iget-wide v4, p0, Lcom/baidu/tts/d/b/d;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/tts/d/b/d;->d:J

    goto :goto_0
.end method
