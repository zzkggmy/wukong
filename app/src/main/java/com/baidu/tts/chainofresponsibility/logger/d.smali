.class public Lcom/baidu/tts/chainofresponsibility/logger/d;
.super Ljava/lang/Object;
.source "LoggerChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/chainofresponsibility/logger/d$a;,
        Lcom/baidu/tts/chainofresponsibility/logger/d$b;,
        Lcom/baidu/tts/chainofresponsibility/logger/d$c;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/baidu/tts/chainofresponsibility/logger/d;

.field private static synthetic h:[I


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/chainofresponsibility/logger/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/baidu/tts/chainofresponsibility/logger/e;

.field private e:Lcom/baidu/tts/chainofresponsibility/logger/f;

.field private f:Lcom/baidu/tts/chainofresponsibility/logger/g;

.field private g:Lcom/baidu/tts/chainofresponsibility/logger/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    .line 36
    invoke-direct {p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/e;

    .line 38
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    .line 39
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/g;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/g;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->f:Lcom/baidu/tts/chainofresponsibility/logger/g;

    .line 40
    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/d;->i()[I

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    invoke-virtual {v1}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->f:Lcom/baidu/tts/chainofresponsibility/logger/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/baidu/tts/f/a/a;

    const-string v1, "LoggerChainPoolThread"

    invoke-direct {v0, v1}, Lcom/baidu/tts/f/a/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/baidu/tts/chainofresponsibility/logger/d;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/baidu/tts/chainofresponsibility/logger/d;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;-><init>()V

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/baidu/tts/chainofresponsibility/logger/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/baidu/tts/chainofresponsibility/logger/c;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance p1, Lcom/baidu/tts/chainofresponsibility/logger/c;

    invoke-direct {p1}, Lcom/baidu/tts/chainofresponsibility/logger/c;-><init>()V

    .line 201
    :cond_0
    invoke-virtual {p1, p2}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a(I)V

    .line 202
    invoke-virtual {p1, p3}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1, p4}, Lcom/baidu/tts/chainofresponsibility/logger/c;->b(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;)V

    .line 205
    return-void
.end method

.method private b(Lcom/baidu/tts/chainofresponsibility/logger/c;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/tts/chainofresponsibility/logger/d$c;

    invoke-direct {v1, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/d$c;-><init>(Lcom/baidu/tts/chainofresponsibility/logger/d;Lcom/baidu/tts/chainofresponsibility/logger/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    return-void
.end method

.method static synthetic h()Lcom/baidu/tts/chainofresponsibility/logger/d;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    return-object v0
.end method

.method static synthetic i()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->values()[Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->a:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    invoke-virtual {v1}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    invoke-virtual {v1}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/chainofresponsibility/logger/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 183
    new-instance v1, Lcom/baidu/tts/chainofresponsibility/logger/c;

    invoke-direct {v1}, Lcom/baidu/tts/chainofresponsibility/logger/c;-><init>()V

    .line 184
    if-eqz p3, :cond_0

    .line 186
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/c;->c(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-direct {p0, v1, p1, p2, p4}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/c;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public a(Lcom/baidu/tts/chainofresponsibility/logger/b;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/chainofresponsibility/logger/c;)V
    .locals 2

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/d;->i()[I

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    invoke-virtual {v1}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    invoke-direct {p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/d;->b(Lcom/baidu/tts/chainofresponsibility/logger/c;)V

    .line 219
    :cond_0
    return-void

    .line 211
    :pswitch_0
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$a;->a:Lcom/baidu/tts/chainofresponsibility/logger/d$a;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/c;->a(Lcom/baidu/tts/chainofresponsibility/logger/d$a;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/f;->a(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/f;->a(Ljava/util/List;)V

    .line 139
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 117
    if-eqz p1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/e;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/b;)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->d:Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->b(Lcom/baidu/tts/chainofresponsibility/logger/b;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    :cond_0
    return-void
.end method

.method public b(Lcom/baidu/tts/chainofresponsibility/logger/b;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/f;->b(Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_1
    return-void

    .line 92
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/chainofresponsibility/logger/b;

    .line 93
    instance-of v2, v0, Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    .line 112
    :cond_0
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/e;

    invoke-direct {v0}, Lcom/baidu/tts/chainofresponsibility/logger/e;-><init>()V

    .line 113
    invoke-virtual {p0, v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Lcom/baidu/tts/chainofresponsibility/logger/b;)V

    .line 114
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/chainofresponsibility/logger/b;

    .line 107
    instance-of v0, v0, Lcom/baidu/tts/chainofresponsibility/logger/e;

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->e:Lcom/baidu/tts/chainofresponsibility/logger/f;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/f;->b()V

    .line 163
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/d;->g:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
