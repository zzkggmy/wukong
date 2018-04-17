.class public Lcom/baidu/tts/answer/auth/a;
.super Lcom/baidu/tts/answer/a;
.source "AuthJury.java"

# interfaces
.implements Lcom/baidu/tts/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/answer/auth/a$a;,
        Lcom/baidu/tts/answer/auth/a$b;,
        Lcom/baidu/tts/answer/auth/a$c;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/baidu/tts/answer/auth/a;

.field private static synthetic c:[I


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/answer/auth/a;->a:Lcom/baidu/tts/answer/auth/a;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/tts/answer/a;-><init>()V

    .line 41
    new-instance v0, Lcom/baidu/tts/f/a/a;

    const-string v1, "AuthJuryPoolThread"

    invoke-direct {v0, v1}, Lcom/baidu/tts/f/a/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/baidu/tts/answer/auth/a;->c(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/baidu/tts/answer/auth/a;->c(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/k/b;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/baidu/tts/answer/auth/a;->b(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcom/baidu/tts/answer/auth/g;

    invoke-direct {v0}, Lcom/baidu/tts/answer/auth/g;-><init>()V

    .line 227
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/g;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 229
    new-instance v1, Lcom/baidu/tts/answer/auth/AuthInfo;

    invoke-direct {v1}, Lcom/baidu/tts/answer/auth/AuthInfo;-><init>()V

    .line 230
    sget-object v2, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/e/n;)V

    .line 231
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOnlineAuthBean(Lcom/baidu/tts/answer/auth/g;)V

    .line 232
    return-object v1
.end method

.method private a(Ljava/util/concurrent/Callable;J)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/baidu/tts/answer/auth/AuthInfo;",
            ">;J)",
            "Lcom/baidu/tts/answer/auth/AuthInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/baidu/tts/answer/auth/a;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 283
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 284
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/auth/AuthInfo;

    return-object v0
.end method

.method private b(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lcom/baidu/tts/answer/auth/d;

    invoke-direct {v0}, Lcom/baidu/tts/answer/auth/d;-><init>()V

    .line 252
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 254
    new-instance v1, Lcom/baidu/tts/answer/auth/AuthInfo;

    invoke-direct {v1}, Lcom/baidu/tts/answer/auth/AuthInfo;-><init>()V

    .line 255
    sget-object v2, Lcom/baidu/tts/e/n;->b:Lcom/baidu/tts/e/n;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/e/n;)V

    .line 256
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOfflineAuthBean(Lcom/baidu/tts/answer/auth/d;)V

    .line 257
    return-object v1
.end method

.method private b(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 4

    .prologue
    .line 164
    new-instance v1, Lcom/baidu/tts/answer/auth/AuthInfo;

    invoke-direct {v1}, Lcom/baidu/tts/answer/auth/AuthInfo;-><init>()V

    .line 165
    const-string v0, "AuthJury"

    const-string v2, "before online auth"

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/k/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/baidu/tts/answer/auth/a;->c(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOnlineAuthBean()Lcom/baidu/tts/answer/auth/g;

    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOnlineAuthBean(Lcom/baidu/tts/answer/auth/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    const-string v0, "AuthJury"

    const-string v2, "after online before offline auth"

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/tts/k/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/baidu/tts/answer/auth/a;->c(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOfflineAuthBean()Lcom/baidu/tts/answer/auth/d;

    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOfflineAuthBean(Lcom/baidu/tts/answer/auth/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :goto_1
    sget-object v0, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/e/n;)V

    .line 190
    const-string v0, "AuthJury"

    const-string v2, "after offline auth"

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/e/o;->a:Lcom/baidu/tts/e/o;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 173
    new-instance v2, Lcom/baidu/tts/answer/auth/g;

    invoke-direct {v2}, Lcom/baidu/tts/answer/auth/g;-><init>()V

    .line 174
    invoke-virtual {v2, v0}, Lcom/baidu/tts/answer/auth/g;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 175
    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOnlineAuthBean(Lcom/baidu/tts/answer/auth/g;)V

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/e/o;->k:Lcom/baidu/tts/e/o;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 185
    new-instance v2, Lcom/baidu/tts/answer/auth/d;

    invoke-direct {v2}, Lcom/baidu/tts/answer/auth/d;-><init>()V

    .line 186
    invoke-virtual {v2, v0}, Lcom/baidu/tts/answer/auth/d;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 187
    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOfflineAuthBean(Lcom/baidu/tts/answer/auth/d;)V

    goto :goto_1
.end method

.method private b(Lcom/baidu/tts/b/a/b/e$a;)V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/baidu/tts/answer/auth/f;

    const-string v1, "offlineAuth"

    invoke-direct {v0, v1, p1}, Lcom/baidu/tts/answer/auth/f;-><init>(Ljava/lang/String;Lcom/baidu/tts/b/a/b/e$a;)V

    invoke-virtual {p0, v0}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/answer/d;)V

    .line 124
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/a;->f()V

    .line 125
    return-void
.end method

.method private b(Lcom/baidu/tts/b/a/b/f$b;)V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/baidu/tts/answer/auth/h;

    const-string v1, "onlineAuth"

    invoke-direct {v0, v1, p1}, Lcom/baidu/tts/answer/auth/h;-><init>(Ljava/lang/String;Lcom/baidu/tts/b/a/b/f$b;)V

    invoke-virtual {p0, v0}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/answer/d;)V

    .line 119
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/a;->f()V

    .line 120
    return-void
.end method

.method private c(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 3

    .prologue
    .line 153
    const-string v0, "AuthJury"

    const-string v1, "enter getOfflineAuthInfo"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/baidu/tts/answer/auth/a;->b(Lcom/baidu/tts/b/a/b/e$a;)V

    .line 155
    invoke-direct {p0}, Lcom/baidu/tts/answer/auth/a;->k()Lcom/baidu/tts/answer/auth/d;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/baidu/tts/answer/auth/AuthInfo;

    invoke-direct {v1}, Lcom/baidu/tts/answer/auth/AuthInfo;-><init>()V

    .line 157
    sget-object v2, Lcom/baidu/tts/e/n;->b:Lcom/baidu/tts/e/n;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/e/n;)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOfflineAuthBean(Lcom/baidu/tts/answer/auth/d;)V

    .line 159
    const-string v0, "AuthJury"

    const-string v2, "end getOfflineAuthInfo"

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v1
.end method

.method private c(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 3

    .prologue
    .line 142
    const-string v0, "AuthJury"

    const-string v1, "enter getOnlineAuthInfo"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/baidu/tts/answer/auth/a;->b(Lcom/baidu/tts/b/a/b/f$b;)V

    .line 144
    invoke-direct {p0}, Lcom/baidu/tts/answer/auth/a;->j()Lcom/baidu/tts/answer/auth/g;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/baidu/tts/answer/auth/AuthInfo;

    invoke-direct {v1}, Lcom/baidu/tts/answer/auth/AuthInfo;-><init>()V

    .line 146
    sget-object v2, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/e/n;)V

    .line 147
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setOnlineAuthBean(Lcom/baidu/tts/answer/auth/g;)V

    .line 148
    const-string v0, "AuthJury"

    const-string v2, "end getOnlineAuthInfo"

    invoke-static {v0, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object v1
.end method

.method private c(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/baidu/tts/answer/auth/AuthInfo;

    invoke-direct {v1}, Lcom/baidu/tts/answer/auth/AuthInfo;-><init>()V

    .line 275
    sget-object v2, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/answer/auth/AuthInfo;->setTtsEnum(Lcom/baidu/tts/e/n;)V

    .line 276
    invoke-virtual {v1, v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 277
    return-object v1
.end method

.method public static g()Lcom/baidu/tts/answer/auth/a;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/tts/answer/auth/a;->a:Lcom/baidu/tts/answer/auth/a;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/baidu/tts/answer/auth/a;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/baidu/tts/answer/auth/a;->a:Lcom/baidu/tts/answer/auth/a;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/baidu/tts/answer/auth/a;

    invoke-direct {v0}, Lcom/baidu/tts/answer/auth/a;-><init>()V

    sput-object v0, Lcom/baidu/tts/answer/auth/a;->a:Lcom/baidu/tts/answer/auth/a;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/baidu/tts/answer/auth/a;->a:Lcom/baidu/tts/answer/auth/a;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic h()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/tts/answer/auth/a;->c:[I

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
    sput-object v0, Lcom/baidu/tts/answer/auth/a;->c:[I

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

.method private declared-synchronized i()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Lcom/baidu/tts/answer/auth/g;
    .locals 1

    .prologue
    .line 129
    const-string v0, "onlineAuth"

    invoke-virtual {p0, v0}, Lcom/baidu/tts/answer/auth/a;->a(Ljava/lang/String;)Lcom/baidu/tts/answer/e;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/auth/b;

    .line 130
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/auth/g;

    .line 131
    return-object v0
.end method

.method private k()Lcom/baidu/tts/answer/auth/d;
    .locals 1

    .prologue
    .line 136
    const-string v0, "offlineAuth"

    invoke-virtual {p0, v0}, Lcom/baidu/tts/answer/auth/a;->a(Ljava/lang/String;)Lcom/baidu/tts/answer/e;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/auth/b;

    .line 137
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/answer/auth/d;

    .line 138
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 4

    .prologue
    .line 237
    :try_start_0
    new-instance v0, Lcom/baidu/tts/answer/auth/a$b;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/answer/auth/a$b;-><init>(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/e$a;)V

    sget-object v1, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    invoke-virtual {v1}, Lcom/baidu/tts/e/m;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/tts/answer/auth/a;->a(Ljava/util/concurrent/Callable;J)Lcom/baidu/tts/answer/auth/AuthInfo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "AuthJury"

    const-string v2, "offline InterruptedException"

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v1, Lcom/baidu/tts/e/o;->p:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->b(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    const-string v1, "AuthJury"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline ExecutionException cause="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/baidu/tts/e/o;->q:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->b(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 244
    :catch_2
    move-exception v0

    .line 245
    const-string v1, "AuthJury"

    const-string v2, "offline TimeoutException"

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v1, Lcom/baidu/tts/e/o;->r:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->b(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 4

    .prologue
    .line 215
    :try_start_0
    new-instance v0, Lcom/baidu/tts/answer/auth/a$c;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/answer/auth/a$c;-><init>(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/f$b;)V

    sget-object v1, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    invoke-virtual {v1}, Lcom/baidu/tts/e/m;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/tts/answer/auth/a;->a(Ljava/util/concurrent/Callable;J)Lcom/baidu/tts/answer/auth/AuthInfo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    sget-object v1, Lcom/baidu/tts/e/o;->d:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    sget-object v1, Lcom/baidu/tts/e/o;->e:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 220
    :catch_2
    move-exception v0

    .line 221
    sget-object v1, Lcom/baidu/tts/e/o;->f:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/e/n;Lcom/baidu/tts/k/j;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p2}, Lcom/baidu/tts/k/j;->a()Lcom/baidu/tts/k/b;

    move-result-object v1

    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->h()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 210
    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    invoke-virtual {v1}, Lcom/baidu/tts/k/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {v1}, Lcom/baidu/tts/k/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/baidu/tts/k/b;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 4

    .prologue
    .line 262
    :try_start_0
    new-instance v0, Lcom/baidu/tts/answer/auth/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/answer/auth/a$a;-><init>(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/k/b;)V

    sget-object v1, Lcom/baidu/tts/e/m;->c:Lcom/baidu/tts/e/m;

    invoke-virtual {v1}, Lcom/baidu/tts/e/m;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/tts/answer/auth/a;->a(Ljava/util/concurrent/Callable;J)Lcom/baidu/tts/answer/auth/AuthInfo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    sget-object v1, Lcom/baidu/tts/e/o;->D:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->c(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    sget-object v1, Lcom/baidu/tts/e/o;->E:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->c(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0

    .line 267
    :catch_2
    move-exception v0

    .line 268
    sget-object v1, Lcom/baidu/tts/e/o;->F:Lcom/baidu/tts/e/o;

    invoke-direct {p0, v1, v0}, Lcom/baidu/tts/answer/auth/a;->c(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/baidu/tts/answer/auth/a;->i()Ljava/util/concurrent/ExecutorService;

    .line 61
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/answer/auth/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 115
    :cond_0
    return-void
.end method
