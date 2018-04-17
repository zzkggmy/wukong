.class public Lcom/baidu/tts/d/b/b;
.super Ljava/lang/Object;
.source "FsFileInfoMemoryFlyweight.java"


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

.field private d:Lcom/baidu/tts/d/b/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/b;->b:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/e/g;->g:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/o/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/baidu/tts/d/b/b;->c:I

    .line 122
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/baidu/tts/e/g;->g:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/baidu/tts/d/b/b;->a(J)V

    .line 117
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->b()V

    .line 118
    return-void
.end method

.method public a(Lcom/baidu/tts/d/b/c;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    .line 42
    return-void
.end method

.method public a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/baidu/tts/d/b/b;->a(J)V

    .line 50
    invoke-virtual {p2}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 51
    iget-object v4, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 55
    sget-object v4, Lcom/baidu/tts/e/g;->a:Lcom/baidu/tts/e/g;

    invoke-virtual {v4}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/d/b/b;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    :goto_0
    iget v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2

    .line 65
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 68
    invoke-static {}, Lcom/baidu/tts/o/e;->a()Lcom/baidu/tts/o/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/o/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->b:Ljava/util/Map;

    sget-object v2, Lcom/baidu/tts/e/g;->f:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    invoke-virtual {v1}, Lcom/baidu/tts/d/b/c;->g()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    .line 84
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/tts/d/b/b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/baidu/tts/d/b/f;->c(Ljava/lang/String;I)V

    .line 85
    return-void

    .line 74
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    goto :goto_1

    .line 77
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    goto :goto_1

    .line 81
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/baidu/tts/d/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    if-eq v0, p1, :cond_0

    .line 126
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 129
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/baidu/tts/d/b/c;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    return-object v0
.end method

.method public e()Ljava/util/Set;
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
    .line 112
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->d:Lcom/baidu/tts/d/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->a()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/d/b/b;->c:I

    .line 135
    :cond_1
    return-void
.end method
