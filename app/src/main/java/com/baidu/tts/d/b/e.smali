.class public Lcom/baidu/tts/d/b/e;
.super Ljava/lang/Object;
.source "TraceMemoryPool.java"


# static fields
.field private static volatile a:Lcom/baidu/tts/d/b/e;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/d/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/d/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/d/b/b;",
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

    sput-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    return-void
.end method

.method public static a()Lcom/baidu/tts/d/b/e;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/baidu/tts/d/b/e;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/baidu/tts/d/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/d/b/e;-><init>()V

    sput-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/baidu/tts/d/b/e;->a:Lcom/baidu/tts/d/b/e;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;
    .locals 2

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/d;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/baidu/tts/d/b/d;

    invoke-direct {v0, p1}, Lcom/baidu/tts/d/b/d;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/baidu/tts/d/b/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/f;->d()Ljava/util/Set;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    return-void

    .line 113
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/e;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v3, p1, p2}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    .line 117
    invoke-virtual {v3}, Lcom/baidu/tts/d/b/d;->a()Ljava/util/Set;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 119
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v1}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1, v0, v3}, Lcom/baidu/tts/d/b/c;->a(Ljava/lang/String;Lcom/baidu/tts/d/b/d;)V

    .line 124
    invoke-virtual {v1, p1, p2}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/tts/d/b;Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V
    .locals 6

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/baidu/tts/d/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 82
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    return-void

    .line 83
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/e;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v3, p2, p3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    .line 87
    invoke-virtual {v3}, Lcom/baidu/tts/d/b/d;->a()Ljava/util/Set;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/baidu/tts/o/b;->b(Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 90
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v1}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1, v0, v3}, Lcom/baidu/tts/d/b/c;->a(Ljava/lang/String;Lcom/baidu/tts/d/b/d;)V

    .line 95
    invoke-virtual {v1, p2, p3}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    .line 96
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/c;->c()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {p0, v5}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {v5, v1}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/c;)V

    .line 100
    invoke-virtual {v5, p2, p3}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 4
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
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    :cond_0
    return-void

    .line 154
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/b;

    .line 156
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->d()Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->a()Ljava/util/Set;

    move-result-object v0

    .line 158
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/e;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/d;->d()V

    goto :goto_1
.end method

.method public a(Ljava/util/Set;I)V
    .locals 2
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
    .line 170
    if-eqz p1, :cond_1

    .line 171
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 172
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    :cond_1
    return-void

    .line 173
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p2}, Lcom/baidu/tts/d/b/b;->a(I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/c;

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/baidu/tts/d/b/c;

    invoke-direct {v0, p1}, Lcom/baidu/tts/d/b/c;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/baidu/tts/d/b/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return-void

    .line 186
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/b;

    .line 188
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->f()V

    goto :goto_0
.end method

.method public b(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/f;->b()Ljava/util/Set;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    return-void

    .line 135
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    .line 139
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p0, v2}, Lcom/baidu/tts/d/b/e;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2, v0}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/c;)V

    .line 143
    invoke-virtual {v2, p1, p2}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/f;Lcom/baidu/tts/d/b/a;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/d/b/b;

    .line 69
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/baidu/tts/d/b/b;

    invoke-direct {v0, p1}, Lcom/baidu/tts/d/b/b;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/baidu/tts/d/b/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method
