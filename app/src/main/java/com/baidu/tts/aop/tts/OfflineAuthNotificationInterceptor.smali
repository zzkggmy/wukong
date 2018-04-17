.class public Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;
.super Lcom/baidu/tts/aop/AInterceptor;
.source "OfflineAuthNotificationInterceptor.java"


# static fields
.field private static synthetic c:[I

.field private static synthetic d:[I


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptor;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    return-void
.end method

.method private a(Lcom/baidu/tts/m/b/c;Lcom/baidu/tts/k/j;Lcom/baidu/tts/k/i;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/tts/k/j;->a()Lcom/baidu/tts/k/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, v0, p3}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->a(Lcom/baidu/tts/answer/auth/AuthInfo;Lcom/baidu/tts/k/i;)V

    .line 101
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 107
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 104
    invoke-static {p3}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 106
    invoke-virtual {p1, v1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/k/h;)V

    .line 107
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/baidu/tts/answer/auth/AuthInfo;Lcom/baidu/tts/k/i;)V
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOfflineAuthEnum()Lcom/baidu/tts/answer/auth/e;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->c()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 150
    :goto_0
    invoke-virtual {p2}, Lcom/baidu/tts/k/i;->a()V

    .line 152
    :cond_0
    return-void

    .line 137
    :sswitch_0
    invoke-virtual {p1}, Lcom/baidu/tts/answer/auth/AuthInfo;->getLeftValidDays()I

    move-result v0

    .line 138
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1%d\u5929\u540e\u5230\u671f\uff0c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p2, v0}, Lcom/baidu/tts/k/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :sswitch_1
    const-string v0, "\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1\u5df2\u7ecf\u5230\u671f\uff0c\u8bf7\u53ca\u65f6\u66f4\u65b0\u6388\u6743\uff0c"

    invoke-virtual {p2, v0}, Lcom/baidu/tts/k/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Lcom/baidu/tts/m/b/c;Lcom/baidu/tts/k/j;Lcom/baidu/tts/k/i;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 112
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/tts/k/j;->d()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOfflineAuthEnum()Lcom/baidu/tts/answer/auth/e;

    move-result-object v1

    .line 114
    const-string v2, "OfflineAuthNotificationInterceptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offlineAuthEnum="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-direct {p0, v0, p3}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->a(Lcom/baidu/tts/answer/auth/AuthInfo;Lcom/baidu/tts/k/i;)V

    .line 117
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    .line 128
    :goto_0
    return-object v0

    .line 121
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_1
    invoke-static {p3}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 127
    invoke-virtual {p1, v1}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/k/h;)V

    .line 128
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->o:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/e/n;->values()[Lcom/baidu/tts/e/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/e/n;->b:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->c:[I

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

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/answer/auth/e;->values()[Lcom/baidu/tts/answer/auth/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->e:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->f:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->i:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->c:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->h:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->d:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->j:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->k:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->a:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->b:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lcom/baidu/tts/answer/auth/e;->g:Lcom/baidu/tts/answer/auth/e;

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/e;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 57
    check-cast p1, Lcom/baidu/tts/m/b/c;

    .line 58
    invoke-virtual {p1}, Lcom/baidu/tts/m/b/c;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/baidu/tts/m/b/c;->getMode()Lcom/baidu/tts/e/n;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/baidu/tts/m/b/c;->p()I

    .line 62
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    .line 92
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->b()[I

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 87
    :cond_1
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 68
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/baidu/tts/k/i;

    .line 70
    invoke-virtual {p1}, Lcom/baidu/tts/m/b/c;->getTtsParams()Lcom/baidu/tts/k/j;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    sget-object v3, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    invoke-virtual {v1, v3}, Lcom/baidu/tts/e/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->a(Lcom/baidu/tts/m/b/c;Lcom/baidu/tts/k/j;Lcom/baidu/tts/k/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->b(Lcom/baidu/tts/m/b/c;Lcom/baidu/tts/k/j;Lcom/baidu/tts/k/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/tts/m/b/c;->p()I

    .line 79
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/tts/m/b/c;->p()I

    .line 92
    sget-object v0, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->a:Ljava/util/List;

    const-string v1, "speak"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
