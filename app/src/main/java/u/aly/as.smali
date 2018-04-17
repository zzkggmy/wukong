.class public Lu/aly/as;
.super Ljava/lang/Object;
.source "ClientStats.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/as$c;,
        Lu/aly/as$d;,
        Lu/aly/as$a;,
        Lu/aly/as$b;,
        Lu/aly/as$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz",
        "<",
        "Lu/aly/as;",
        "Lu/aly/as$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/as$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lu/aly/dd;

.field private static final f:Lu/aly/ct;

.field private static final g:Lu/aly/ct;

.field private static final h:Lu/aly/ct;

.field private static final i:Ljava/util/Map;
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

.field private static final j:I = 0x0

.field private static final k:I = 0x1

.field private static final l:I = 0x2


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private m:B

.field private n:[Lu/aly/as$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 25
    new-instance v0, Lu/aly/dd;

    const-string v1, "ClientStats"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/as;->e:Lu/aly/dd;

    .line 28
    new-instance v0, Lu/aly/ct;

    const-string v1, "successful_requests"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->f:Lu/aly/ct;

    .line 30
    new-instance v0, Lu/aly/ct;

    const-string v1, "failed_requests"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->g:Lu/aly/ct;

    .line 32
    new-instance v0, Lu/aly/ct;

    const-string v1, "last_request_spent_ms"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->h:Lu/aly/ct;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/as;->i:Ljava/util/Map;

    .line 38
    sget-object v0, Lu/aly/as;->i:Ljava/util/Map;

    const-class v1, Lu/aly/di;

    new-instance v2, Lu/aly/as$b;

    invoke-direct {v2, v3}, Lu/aly/as$b;-><init>(Lu/aly/as$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lu/aly/as;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dj;

    new-instance v2, Lu/aly/as$d;

    invoke-direct {v2, v3}, Lu/aly/as$d;-><init>(Lu/aly/as$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/as$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 126
    sget-object v1, Lu/aly/as$e;->a:Lu/aly/as$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "successful_requests"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lu/aly/as$e;->b:Lu/aly/as$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "failed_requests"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lu/aly/as$e;->c:Lu/aly/as$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "last_request_spent_ms"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/as;->d:Ljava/util/Map;

    .line 139
    const-class v0, Lu/aly/as;

    sget-object v1, Lu/aly/as;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-byte v2, p0, Lu/aly/as;->m:B

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/as$e;

    sget-object v1, Lu/aly/as$e;->c:Lu/aly/as$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/as;->n:[Lu/aly/as$e;

    .line 143
    iput v2, p0, Lu/aly/as;->a:I

    .line 145
    iput v2, p0, Lu/aly/as;->b:I

    .line 147
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-direct {p0}, Lu/aly/as;-><init>()V

    .line 151
    iput p1, p0, Lu/aly/as;->a:I

    .line 152
    invoke-virtual {p0, v0}, Lu/aly/as;->a(Z)V

    .line 153
    iput p2, p0, Lu/aly/as;->b:I

    .line 154
    invoke-virtual {p0, v0}, Lu/aly/as;->b(Z)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lu/aly/as;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-byte v2, p0, Lu/aly/as;->m:B

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/as$e;

    sget-object v1, Lu/aly/as$e;->c:Lu/aly/as$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/as;->n:[Lu/aly/as$e;

    .line 161
    iget-byte v0, p1, Lu/aly/as;->m:B

    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 162
    iget v0, p1, Lu/aly/as;->a:I

    iput v0, p0, Lu/aly/as;->a:I

    .line 163
    iget v0, p1, Lu/aly/as;->b:I

    iput v0, p0, Lu/aly/as;->b:I

    .line 164
    iget v0, p1, Lu/aly/as;->c:I

    iput v0, p0, Lu/aly/as;->c:I

    .line 165
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
    .line 317
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 318
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/as;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
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
    .line 306
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/as;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic n()Lu/aly/dd;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/as;->e:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic o()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/as;->f:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic p()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/as;->g:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic q()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/as;->h:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/as;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lu/aly/as;

    invoke-direct {v0, p0}, Lu/aly/as;-><init>(Lu/aly/as;)V

    return-object v0
.end method

.method public a(I)Lu/aly/as;
    .locals 1

    .prologue
    .line 186
    iput p1, p0, Lu/aly/as;->a:I

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/as;->a(Z)V

    .line 188
    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lu/aly/as;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    .line 265
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 204
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 205
    return-void
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lu/aly/as;->e(I)Lu/aly/as$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lu/aly/as;->a:I

    .line 175
    iput v0, p0, Lu/aly/as;->b:I

    .line 177
    invoke-virtual {p0, v0}, Lu/aly/as;->c(Z)V

    .line 178
    iput v0, p0, Lu/aly/as;->c:I

    .line 179
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
    .line 268
    sget-object v0, Lu/aly/as;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    .line 269
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 230
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 231
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lu/aly/as;->a:I

    return v0
.end method

.method public c(I)Lu/aly/as;
    .locals 1

    .prologue
    .line 212
    iput p1, p0, Lu/aly/as;->b:I

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/as;->b(Z)V

    .line 214
    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 256
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 257
    return-void
.end method

.method public d(I)Lu/aly/as;
    .locals 1

    .prologue
    .line 238
    iput p1, p0, Lu/aly/as;->c:I

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/as;->c(Z)V

    .line 240
    return-object p0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 192
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 193
    return-void
.end method

.method public e(I)Lu/aly/as$e;
    .locals 1

    .prologue
    .line 260
    invoke-static {p1}, Lu/aly/as$e;->a(I)Lu/aly/as$e;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 200
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lu/aly/as;->b:I

    return v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lu/aly/as;->a()Lu/aly/as;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 218
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 219
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 226
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lu/aly/as;->c:I

    return v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 244
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->m:B

    .line 245
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 252
    iget-byte v0, p0, Lu/aly/as;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 302
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v1, "successful_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v1, p0, Lu/aly/as;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "failed_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lu/aly/as;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lu/aly/as;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "last_request_spent_ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget v1, p0, Lu/aly/as;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
