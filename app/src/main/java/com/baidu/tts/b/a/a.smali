.class public Lcom/baidu/tts/b/a/a;
.super Ljava/lang/Object;
.source "EngineFactory.java"


# static fields
.field private static volatile a:Lcom/baidu/tts/b/a/a;

.field private static synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/baidu/tts/b/a/a/c;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/a/c;-><init>()V

    .line 76
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b/b;)V

    .line 77
    return-object v0
.end method

.method public static a()Lcom/baidu/tts/b/a/a;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/baidu/tts/b/a/a;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/baidu/tts/b/a/a;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/a;-><init>()V

    sput-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/baidu/tts/b/a/a;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/e/f;->values()[Lcom/baidu/tts/e/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/e/f;->c:Lcom/baidu/tts/e/f;

    invoke-virtual {v1}, Lcom/baidu/tts/e/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/e/f;->b:Lcom/baidu/tts/e/f;

    invoke-virtual {v1}, Lcom/baidu/tts/e/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/tts/e/f;->a:Lcom/baidu/tts/e/f;

    invoke-virtual {v1}, Lcom/baidu/tts/e/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/baidu/tts/b/a/a;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private c()Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/baidu/tts/b/a/b/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f;-><init>()V

    .line 61
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/baidu/tts/b/a/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e;-><init>()V

    .line 66
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/baidu/tts/b/a/b/d;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/d;-><init>()V

    .line 71
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/e/f;)Lcom/baidu/tts/b/a/a/d;
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {}, Lcom/baidu/tts/b/a/a;->b()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/tts/e/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 56
    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->c()Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->d()Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->e()Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
