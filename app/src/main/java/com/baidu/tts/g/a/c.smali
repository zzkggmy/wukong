.class public Lcom/baidu/tts/g/a/c;
.super Ljava/lang/Object;
.source "TtsErrorPool.java"


# static fields
.field private static volatile a:Lcom/baidu/tts/g/a/c;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/baidu/tts/e/o;",
            "Lcom/baidu/tts/g/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/g/a/c;->a:Lcom/baidu/tts/g/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/g/a/c;->b:Ljava/util/Hashtable;

    .line 20
    return-void
.end method

.method public static a()Lcom/baidu/tts/g/a/c;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/baidu/tts/g/a/c;->a:Lcom/baidu/tts/g/a/c;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/baidu/tts/g/a/c;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/baidu/tts/g/a/c;->a:Lcom/baidu/tts/g/a/c;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/baidu/tts/g/a/c;

    invoke-direct {v0}, Lcom/baidu/tts/g/a/c;-><init>()V

    sput-object v0, Lcom/baidu/tts/g/a/c;->a:Lcom/baidu/tts/g/a/c;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/baidu/tts/g/a/c;->a:Lcom/baidu/tts/g/a/c;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/e/o;I)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/e/o;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p2}, Lcom/baidu/tts/aop/tts/TtsError;->setCode(I)V

    .line 70
    invoke-virtual {v0, p3}, Lcom/baidu/tts/aop/tts/TtsError;->setMessage(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p4}, Lcom/baidu/tts/aop/tts/TtsError;->setThrowable(Ljava/lang/Throwable;)V

    .line 72
    return-object v0
.end method

.method public a(Lcom/baidu/tts/e/o;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, Lcom/baidu/tts/aop/tts/TtsError;->setThrowable(Ljava/lang/Throwable;)V

    .line 52
    return-object v0
.end method

.method public a(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/g/a/b;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/g/a/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/g/a/b;

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/baidu/tts/g/a/b;

    invoke-direct {v0, p1}, Lcom/baidu/tts/g/a/b;-><init>(Lcom/baidu/tts/e/o;)V

    .line 37
    iget-object v1, p0, Lcom/baidu/tts/g/a/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-object v0
.end method

.method public b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/g/a/b;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/baidu/tts/aop/tts/TtsError;

    invoke-direct {v1}, Lcom/baidu/tts/aop/tts/TtsError;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Lcom/baidu/tts/aop/tts/TtsError;->setTtsErrorFlyweight(Lcom/baidu/tts/g/a/b;)V

    .line 46
    return-object v1
.end method
