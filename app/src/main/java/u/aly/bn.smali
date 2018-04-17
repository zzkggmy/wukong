.class public Lu/aly/bn;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bn$c;,
        Lu/aly/bn$d;,
        Lu/aly/bn$a;,
        Lu/aly/bn$b;,
        Lu/aly/bn$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz",
        "<",
        "Lu/aly/bn;",
        "Lu/aly/bn$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bn$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lu/aly/dd;

.field private static final j:Lu/aly/ct;

.field private static final k:Lu/aly/ct;

.field private static final l:Lu/aly/ct;

.field private static final m:Lu/aly/ct;

.field private static final n:Lu/aly/ct;

.field private static final o:Lu/aly/ct;

.field private static final p:Lu/aly/ct;

.field private static final q:Ljava/util/Map;
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

.field private static final r:I = 0x0

.field private static final s:I = 0x1

.field private static final t:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/bi;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/bg;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lu/aly/bo;

.field private u:B

.field private v:[Lu/aly/bn$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xc

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xa

    .line 26
    new-instance v0, Lu/aly/dd;

    const-string v1, "Session"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bn;->i:Lu/aly/dd;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v1, "id"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->j:Lu/aly/ct;

    .line 31
    new-instance v0, Lu/aly/ct;

    const-string v1, "start_time"

    invoke-direct {v0, v1, v6, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->k:Lu/aly/ct;

    .line 33
    new-instance v0, Lu/aly/ct;

    const-string v1, "end_time"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->l:Lu/aly/ct;

    .line 35
    new-instance v0, Lu/aly/ct;

    const-string v1, "duration"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->m:Lu/aly/ct;

    .line 37
    new-instance v0, Lu/aly/ct;

    const-string v1, "pages"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v10, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->n:Lu/aly/ct;

    .line 39
    new-instance v0, Lu/aly/ct;

    const-string v1, "locations"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v10, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->o:Lu/aly/ct;

    .line 41
    new-instance v0, Lu/aly/ct;

    const-string v1, "traffic"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v9, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->p:Lu/aly/ct;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bn;->q:Ljava/util/Map;

    .line 47
    sget-object v0, Lu/aly/bn;->q:Ljava/util/Map;

    const-class v1, Lu/aly/di;

    new-instance v2, Lu/aly/bn$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bn$b;-><init>(Lu/aly/bn$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lu/aly/bn;->q:Ljava/util/Map;

    const-class v1, Lu/aly/dj;

    new-instance v2, Lu/aly/bn$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bn$d;-><init>(Lu/aly/bn$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bn$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    sget-object v1, Lu/aly/bn$e;->a:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "id"

    new-instance v4, Lu/aly/cm;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lu/aly/bn$e;->b:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "start_time"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lu/aly/bn$e;->c:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "end_time"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lu/aly/bn$e;->d:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "duration"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "pages"

    new-instance v4, Lu/aly/cn;

    new-instance v5, Lu/aly/cq;

    const-class v6, Lu/aly/bi;

    invoke-direct {v5, v9, v6}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lu/aly/cn;-><init>(BLu/aly/cm;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "locations"

    new-instance v4, Lu/aly/cn;

    new-instance v5, Lu/aly/cq;

    const-class v6, Lu/aly/bg;

    invoke-direct {v5, v9, v6}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lu/aly/cn;-><init>(BLu/aly/cm;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "traffic"

    new-instance v4, Lu/aly/cq;

    const-class v5, Lu/aly/bo;

    invoke-direct {v4, v9, v5}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bn;->h:Ljava/util/Map;

    .line 180
    const-class v0, Lu/aly/bn;

    sget-object v1, Lu/aly/bn;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-byte v2, p0, Lu/aly/bn;->u:B

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/bn$e;

    sget-object v1, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bn;->v:[Lu/aly/bn$e;

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-direct {p0}, Lu/aly/bn;-><init>()V

    .line 188
    iput-object p1, p0, Lu/aly/bn;->a:Ljava/lang/String;

    .line 189
    iput-wide p2, p0, Lu/aly/bn;->b:J

    .line 190
    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Z)V

    .line 191
    iput-wide p4, p0, Lu/aly/bn;->c:J

    .line 192
    invoke-virtual {p0, v0}, Lu/aly/bn;->c(Z)V

    .line 193
    iput-wide p6, p0, Lu/aly/bn;->d:J

    .line 194
    invoke-virtual {p0, v0}, Lu/aly/bn;->d(Z)V

    .line 195
    return-void
.end method

.method public constructor <init>(Lu/aly/bn;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-byte v2, p0, Lu/aly/bn;->u:B

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/bn$e;

    sget-object v1, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bn;->v:[Lu/aly/bn$e;

    .line 201
    iget-byte v0, p1, Lu/aly/bn;->u:B

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 202
    invoke-virtual {p1}, Lu/aly/bn;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p1, Lu/aly/bn;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    .line 205
    :cond_0
    iget-wide v0, p1, Lu/aly/bn;->b:J

    iput-wide v0, p0, Lu/aly/bn;->b:J

    .line 206
    iget-wide v0, p1, Lu/aly/bn;->c:J

    iput-wide v0, p0, Lu/aly/bn;->c:J

    .line 207
    iget-wide v0, p1, Lu/aly/bn;->d:J

    iput-wide v0, p0, Lu/aly/bn;->d:J

    .line 208
    invoke-virtual {p1}, Lu/aly/bn;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, p1, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bi;

    .line 211
    new-instance v3, Lu/aly/bi;

    invoke-direct {v3, v0}, Lu/aly/bi;-><init>(Lu/aly/bi;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_1
    iput-object v1, p0, Lu/aly/bn;->e:Ljava/util/List;

    .line 215
    :cond_2
    invoke-virtual {p1}, Lu/aly/bn;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v0, p1, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bg;

    .line 218
    new-instance v3, Lu/aly/bg;

    invoke-direct {v3, v0}, Lu/aly/bg;-><init>(Lu/aly/bg;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    :cond_3
    iput-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 222
    :cond_4
    invoke-virtual {p1}, Lu/aly/bn;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    new-instance v0, Lu/aly/bo;

    iget-object v1, p1, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-direct {v0, v1}, Lu/aly/bo;-><init>(Lu/aly/bo;)V

    iput-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    .line 225
    :cond_5
    return-void
.end method

.method static synthetic D()Lu/aly/dd;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->i:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic E()Lu/aly/ct;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->j:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic F()Lu/aly/ct;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->k:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic G()Lu/aly/ct;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->l:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic H()Lu/aly/ct;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->m:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic I()Lu/aly/ct;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->n:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic J()Lu/aly/ct;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->o:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic K()Lu/aly/ct;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lu/aly/bn;->p:Lu/aly/ct;

    return-object v0
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
    .line 568
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 569
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bn;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
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
    .line 557
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    .line 445
    return-void
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    iget-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0}, Lu/aly/bo;->j()V

    .line 553
    :cond_1
    return-void
.end method

.method public a(I)Lu/aly/bn$e;
    .locals 1

    .prologue
    .line 462
    invoke-static {p1}, Lu/aly/bn$e;->a(I)Lu/aly/bn$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bn;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lu/aly/bn;

    invoke-direct {v0, p0}, Lu/aly/bn;-><init>(Lu/aly/bn;)V

    return-object v0
.end method

.method public a(J)Lu/aly/bn;
    .locals 1

    .prologue
    .line 277
    iput-wide p1, p0, Lu/aly/bn;->b:J

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Z)V

    .line 279
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lu/aly/bn;->a:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/bn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/bi;",
            ">;)",
            "Lu/aly/bn;"
        }
    .end annotation

    .prologue
    .line 370
    iput-object p1, p0, Lu/aly/bn;->e:Ljava/util/List;

    .line 371
    return-object p0
.end method

.method public a(Lu/aly/bo;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lu/aly/bn;->g:Lu/aly/bo;

    .line 440
    return-object p0
.end method

.method public a(Lu/aly/bg;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 404
    :cond_0
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public a(Lu/aly/bi;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    .line 362
    :cond_0
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
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
    .line 466
    sget-object v0, Lu/aly/bn;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    .line 467
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    .line 270
    :cond_0
    return-void
.end method

.method public b(J)Lu/aly/bn;
    .locals 1

    .prologue
    .line 303
    iput-wide p1, p0, Lu/aly/bn;->c:J

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->c(Z)V

    .line 305
    return-object p0
.end method

.method public b(Ljava/util/List;)Lu/aly/bn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/bg;",
            ">;)",
            "Lu/aly/bn;"
        }
    .end annotation

    .prologue
    .line 412
    iput-object p1, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 413
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lu/aly/bn;->a(I)Lu/aly/bn$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    .line 234
    invoke-virtual {p0, v1}, Lu/aly/bn;->b(Z)V

    .line 235
    iput-wide v2, p0, Lu/aly/bn;->b:J

    .line 236
    invoke-virtual {p0, v1}, Lu/aly/bn;->c(Z)V

    .line 237
    iput-wide v2, p0, Lu/aly/bn;->c:J

    .line 238
    invoke-virtual {p0, v1}, Lu/aly/bn;->d(Z)V

    .line 239
    iput-wide v2, p0, Lu/aly/bn;->d:J

    .line 240
    iput-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    .line 241
    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 242
    iput-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    .line 243
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
    .line 470
    sget-object v0, Lu/aly/bn;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    .line 471
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 295
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 296
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)Lu/aly/bn;
    .locals 1

    .prologue
    .line 329
    iput-wide p1, p0, Lu/aly/bn;->d:J

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->d(Z)V

    .line 331
    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 321
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 322
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 347
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 348
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    .line 390
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lu/aly/bn;->b:J

    return-wide v0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 432
    :cond_0
    return-void
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lu/aly/bn;->a()Lu/aly/bn;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    .line 459
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 283
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 284
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 291
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lu/aly/bn;->c:J

    return-wide v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 309
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 310
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 317
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lu/aly/bn;->d:J

    return-wide v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 335
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 336
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 343
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public q()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    return-object v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    .line 376
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v1, p0, Lu/aly/bn;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 480
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, "start_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-wide v2, p0, Lu/aly/bn;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, "end_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-wide v2, p0, Lu/aly/bn;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-wide v2, p0, Lu/aly/bn;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p0}, Lu/aly/bn;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, "pages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v1, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-nez v1, :cond_4

    .line 505
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lu/aly/bn;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, "locations:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v1, :cond_5

    .line 516
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lu/aly/bn;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, "traffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lu/aly/bn;->g:Lu/aly/bo;

    if-nez v1, :cond_6

    .line 527
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_2
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 482
    :cond_3
    iget-object v1, p0, Lu/aly/bn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 507
    :cond_4
    iget-object v1, p0, Lu/aly/bn;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 518
    :cond_5
    iget-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 529
    :cond_6
    iget-object v1, p0, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public u()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public v()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/bg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/bg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    return-object v0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 418
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Lu/aly/bo;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    return-object v0
.end method
