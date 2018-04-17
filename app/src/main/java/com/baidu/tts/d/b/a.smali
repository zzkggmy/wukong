.class public Lcom/baidu/tts/d/b/a;
.super Ljava/lang/Object;
.source "DownloadTrace.java"


# static fields
.field private static volatile a:Lcom/baidu/tts/d/b/a;


# instance fields
.field private b:Lcom/baidu/tts/d/b/e;

.field private c:Lcom/baidu/tts/database/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    .line 21
    return-void
.end method

.method public static a()Lcom/baidu/tts/d/b/a;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/baidu/tts/d/b/a;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/baidu/tts/d/b/a;

    invoke-direct {v0}, Lcom/baidu/tts/d/b/a;-><init>()V

    sput-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/baidu/tts/d/b/a;->a:Lcom/baidu/tts/d/b/a;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/d/b/f;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/tts/d/b/f;

    invoke-direct {v0}, Lcom/baidu/tts/d/b/f;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/f;->a(Lcom/baidu/tts/d/b;)V

    .line 37
    iget-object v1, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v1, p1, v0, p0}, Lcom/baidu/tts/d/b/e;->a(Lcom/baidu/tts/d/b;Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    .line 38
    return-object v0
.end method

.method public a(Lcom/baidu/tts/d/b/f;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1, p0}, Lcom/baidu/tts/d/b/e;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    .line 57
    return-void
.end method

.method public a(Lcom/baidu/tts/database/a;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/tts/d/b/a;->c:Lcom/baidu/tts/database/a;

    .line 53
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->a(Ljava/util/Set;)V

    .line 89
    return-void
.end method

.method public a(Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/d/b/e;->a(Ljava/util/Set;I)V

    .line 93
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/e;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/baidu/tts/database/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->c:Lcom/baidu/tts/database/a;

    return-object v0
.end method

.method public b(Lcom/baidu/tts/d/b/f;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0, p1, p0}, Lcom/baidu/tts/d/b/e;->b(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    .line 61
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/tts/d/b/a;->b:Lcom/baidu/tts/d/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/e;->b()V

    .line 97
    return-void
.end method
