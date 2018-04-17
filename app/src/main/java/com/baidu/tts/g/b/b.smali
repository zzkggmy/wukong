.class public Lcom/baidu/tts/g/b/b;
.super Ljava/lang/Object;
.source "PersistentPool.java"

# interfaces
.implements Lcom/baidu/tts/i/b;


# static fields
.field private static volatile a:Lcom/baidu/tts/g/b/b;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/baidu/tts/g/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/g/b/b;->a:Lcom/baidu/tts/g/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/g/b/b;->b:Ljava/util/Hashtable;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/g/b/b;->d:Ljava/util/Hashtable;

    .line 26
    iget-object v0, p0, Lcom/baidu/tts/g/b/b;->d:Ljava/util/Hashtable;

    sget-object v1, Lcom/baidu/tts/e/g;->Z:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/baidu/tts/g/b/b;->d:Ljava/util/Hashtable;

    sget-object v1, Lcom/baidu/tts/e/g;->ab:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTS2.1.4_2.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static f()Lcom/baidu/tts/g/b/b;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/tts/g/b/b;->a:Lcom/baidu/tts/g/b/b;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/baidu/tts/g/b/b;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/baidu/tts/g/b/b;->a:Lcom/baidu/tts/g/b/b;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/baidu/tts/g/b/b;

    invoke-direct {v0}, Lcom/baidu/tts/g/b/b;-><init>()V

    sput-object v0, Lcom/baidu/tts/g/b/b;->a:Lcom/baidu/tts/g/b/b;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/baidu/tts/g/b/b;->a:Lcom/baidu/tts/g/b/b;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;)Lcom/baidu/tts/g/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/baidu/tts/g/b/a;"
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/g/b/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/g/b/a;

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/baidu/tts/g/b/a;

    invoke-direct {v0, p1}, Lcom/baidu/tts/g/b/a;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 101
    iget-object v1, p0, Lcom/baidu/tts/g/b/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/g/b/b;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/tts/g/b/b;->c:Ljava/lang/ref/WeakReference;

    .line 123
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/tts/g/b/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/g/b/b;->c:Ljava/lang/ref/WeakReference;

    .line 92
    return-void
.end method

.method public g()Lcom/baidu/tts/g/b/a;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/tts/g/b/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/g/b/b;->a(Ljava/lang/ref/WeakReference;)Lcom/baidu/tts/g/b/a;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/tts/g/b/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/baidu/tts/g/b/b;->g()Lcom/baidu/tts/g/b/a;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/g/b/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/baidu/tts/e/g;->ab:Lcom/baidu/tts/e/g;

    invoke-virtual {v0}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/g/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
