.class public Lu/aly/ax;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ax$c;,
        Lu/aly/ax$d;,
        Lu/aly/ax$a;,
        Lu/aly/ax$b;,
        Lu/aly/ax$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz",
        "<",
        "Lu/aly/ax;",
        "Lu/aly/ax$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ax$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lu/aly/dd;

.field private static final h:Lu/aly/ct;

.field private static final i:Lu/aly/ct;

.field private static final j:Lu/aly/ct;

.field private static final k:Lu/aly/ct;

.field private static final l:Lu/aly/ct;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/dg;",
            ">;",
            "Lu/aly/dh;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:I

.field public e:J

.field private q:B

.field private r:[Lu/aly/ax$e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/16 v7, 0xb

    const/4 v12, 0x2

    const/16 v11, 0xa

    const/4 v10, 0x1

    .line 24
    new-instance v0, Lu/aly/dd;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ax;->g:Lu/aly/dd;

    .line 27
    new-instance v0, Lu/aly/ct;

    const-string v1, "name"

    invoke-direct {v0, v1, v7, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->h:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v1, "properties"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v12}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->i:Lu/aly/ct;

    .line 31
    new-instance v0, Lu/aly/ct;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v11, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->j:Lu/aly/ct;

    .line 33
    new-instance v0, Lu/aly/ct;

    const-string v1, "acc"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v13, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->k:Lu/aly/ct;

    .line 35
    new-instance v0, Lu/aly/ct;

    const-string v1, "ts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v11, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->l:Lu/aly/ct;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    const-class v1, Lu/aly/di;

    new-instance v2, Lu/aly/ax$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/ax$b;-><init>(Lu/aly/ax$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    const-class v1, Lu/aly/dj;

    new-instance v2, Lu/aly/ax$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/ax$d;-><init>(Lu/aly/ax$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ax$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 135
    sget-object v1, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "name"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "properties"

    new-instance v4, Lu/aly/co;

    const/16 v5, 0xd

    new-instance v6, Lu/aly/cm;

    invoke-direct {v6, v7}, Lu/aly/cm;-><init>(B)V

    new-instance v7, Lu/aly/cq;

    const/16 v8, 0xc

    const-class v9, Lu/aly/bj;

    invoke-direct {v7, v8, v9}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6, v7}, Lu/aly/co;-><init>(BLu/aly/cm;Lu/aly/cm;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "duration"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v11}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "acc"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v13}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lu/aly/ax$e;->e:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v11}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ax;->f:Ljava/util/Map;

    .line 157
    const-class v0, Lu/aly/ax;

    sget-object v1, Lu/aly/ax;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-byte v2, p0, Lu/aly/ax;->q:B

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/ax$e;

    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ax;->r:[Lu/aly/ax$e;

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lu/aly/ax;-><init>()V

    .line 165
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 167
    iput-wide p3, p0, Lu/aly/ax;->e:J

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->e(Z)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lu/aly/ax;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-byte v2, p0, Lu/aly/ax;->q:B

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/ax$e;

    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ax;->r:[Lu/aly/ax$e;

    .line 175
    iget-byte v0, p1, Lu/aly/ax;->q:B

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 176
    invoke-virtual {p1}, Lu/aly/ax;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p1, Lu/aly/ax;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 179
    :cond_0
    invoke-virtual {p1}, Lu/aly/ax;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    iget-object v0, p1, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bj;

    .line 188
    new-instance v4, Lu/aly/bj;

    invoke-direct {v4, v0}, Lu/aly/bj;-><init>(Lu/aly/bj;)V

    .line 190
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_1
    iput-object v2, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 194
    :cond_2
    iget-wide v0, p1, Lu/aly/ax;->c:J

    iput-wide v0, p0, Lu/aly/ax;->c:J

    .line 195
    iget v0, p1, Lu/aly/ax;->d:I

    iput v0, p0, Lu/aly/ax;->d:I

    .line 196
    iget-wide v0, p1, Lu/aly/ax;->e:J

    iput-wide v0, p0, Lu/aly/ax;->e:J

    .line 197
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 443
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/ax;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/ax;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic u()Lu/aly/dd;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ax;->g:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic v()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ax;->h:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic w()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ax;->i:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic x()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ax;->j:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic y()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ax;->k:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic z()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ax;->l:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/ax;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lu/aly/ax;

    invoke-direct {v0, p0}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ax;
    .locals 1

    .prologue
    .line 311
    iput p1, p0, Lu/aly/ax;->d:I

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->d(Z)V

    .line 313
    return-object p0
.end method

.method public a(J)Lu/aly/ax;
    .locals 1

    .prologue
    .line 285
    iput-wide p1, p0, Lu/aly/ax;->c:J

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->c(Z)V

    .line 287
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ax;
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/ax;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;)",
            "Lu/aly/ax;"
        }
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 259
    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bj;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 250
    :cond_0
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 363
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    .line 364
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 240
    :cond_0
    return-void
.end method

.method public b(J)Lu/aly/ax;
    .locals 1

    .prologue
    .line 337
    iput-wide p1, p0, Lu/aly/ax;->e:J

    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->e(Z)V

    .line 339
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lu/aly/ax;->c(I)Lu/aly/ax$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 205
    iput-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 206
    iput-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 207
    invoke-virtual {p0, v0}, Lu/aly/ax;->c(Z)V

    .line 208
    iput-wide v2, p0, Lu/aly/ax;->c:J

    .line 209
    invoke-virtual {p0, v0}, Lu/aly/ax;->d(Z)V

    .line 210
    iput v0, p0, Lu/aly/ax;->d:I

    .line 211
    invoke-virtual {p0, v0}, Lu/aly/ax;->e(Z)V

    .line 212
    iput-wide v2, p0, Lu/aly/ax;->e:J

    .line 213
    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    .line 368
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 278
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/ax$e;
    .locals 1

    .prologue
    .line 359
    invoke-static {p1}, Lu/aly/ax$e;->a(I)Lu/aly/ax$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 303
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 304
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 329
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 330
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 355
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 356
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lu/aly/ax;->a()Lu/aly/ax;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 264
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lu/aly/ax;->c:J

    return-wide v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 291
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 292
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 299
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lu/aly/ax;->d:I

    return v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 317
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 318
    return-void
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 325
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 333
    iget-wide v0, p0, Lu/aly/ax;->e:J

    return-wide v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 343
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 344
    return-void
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 351
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 422
    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 377
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 386
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :goto_1
    invoke-virtual {p0}, Lu/aly/ax;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-wide v2, p0, Lu/aly/ax;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    invoke-virtual {p0}, Lu/aly/ax;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v1, "acc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget v1, p0, Lu/aly/ax;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-wide v2, p0, Lu/aly/ax;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :cond_2
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 388
    :cond_3
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
