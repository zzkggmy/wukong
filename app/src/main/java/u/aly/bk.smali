.class public Lu/aly/bk;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bk$c;,
        Lu/aly/bk$d;,
        Lu/aly/bk$a;,
        Lu/aly/bk$b;,
        Lu/aly/bk$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz",
        "<",
        "Lu/aly/bk;",
        "Lu/aly/bk$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bk$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dd;

.field private static final e:Lu/aly/ct;

.field private static final f:Lu/aly/ct;

.field private static final g:Ljava/util/Map;
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

.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 24
    new-instance v0, Lu/aly/dd;

    const-string v1, "Resolution"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bk;->d:Lu/aly/dd;

    .line 27
    new-instance v0, Lu/aly/ct;

    const-string v1, "height"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bk;->e:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v1, "width"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bk;->f:Lu/aly/ct;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bk;->g:Ljava/util/Map;

    .line 35
    sget-object v0, Lu/aly/bk;->g:Ljava/util/Map;

    const-class v1, Lu/aly/di;

    new-instance v2, Lu/aly/bk$b;

    invoke-direct {v2, v3}, Lu/aly/bk$b;-><init>(Lu/aly/bk$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lu/aly/bk;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dj;

    new-instance v2, Lu/aly/bk$d;

    invoke-direct {v2, v3}, Lu/aly/bk$d;-><init>(Lu/aly/bk$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bk$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 117
    sget-object v1, Lu/aly/bk$e;->a:Lu/aly/bk$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "height"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lu/aly/bk$e;->b:Lu/aly/bk$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "width"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bk;->c:Ljava/util/Map;

    .line 125
    const-class v0, Lu/aly/bk;

    sget-object v1, Lu/aly/bk;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 129
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-direct {p0}, Lu/aly/bk;-><init>()V

    .line 133
    iput p1, p0, Lu/aly/bk;->a:I

    .line 134
    invoke-virtual {p0, v0}, Lu/aly/bk;->a(Z)V

    .line 135
    iput p2, p0, Lu/aly/bk;->b:I

    .line 136
    invoke-virtual {p0, v0}, Lu/aly/bk;->b(Z)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lu/aly/bk;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 143
    iget-byte v0, p1, Lu/aly/bk;->j:B

    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 144
    iget v0, p1, Lu/aly/bk;->a:I

    iput v0, p0, Lu/aly/bk;->a:I

    .line 145
    iget v0, p1, Lu/aly/bk;->b:I

    iput v0, p0, Lu/aly/bk;->b:I

    .line 146
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
    .line 263
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 264
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bk;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
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
    .line 252
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bk;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic k()Lu/aly/dd;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bk;->d:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic l()Lu/aly/ct;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bk;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic m()Lu/aly/ct;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bk;->f:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bk;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lu/aly/bk;

    invoke-direct {v0, p0}, Lu/aly/bk;-><init>(Lu/aly/bk;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bk;
    .locals 1

    .prologue
    .line 165
    iput p1, p0, Lu/aly/bk;->a:I

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bk;->a(Z)V

    .line 167
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
    .line 217
    sget-object v0, Lu/aly/bk;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    .line 218
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 183
    iget-byte v0, p0, Lu/aly/bk;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 184
    return-void
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lu/aly/bk;->d(I)Lu/aly/bk$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lu/aly/bk;->a(Z)V

    .line 155
    iput v0, p0, Lu/aly/bk;->a:I

    .line 156
    invoke-virtual {p0, v0}, Lu/aly/bk;->b(Z)V

    .line 157
    iput v0, p0, Lu/aly/bk;->b:I

    .line 158
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
    .line 221
    sget-object v0, Lu/aly/bk;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    .line 222
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 209
    iget-byte v0, p0, Lu/aly/bk;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 210
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lu/aly/bk;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bk;
    .locals 1

    .prologue
    .line 191
    iput p1, p0, Lu/aly/bk;->b:I

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bk;->b(Z)V

    .line 193
    return-object p0
.end method

.method public d(I)Lu/aly/bk$e;
    .locals 1

    .prologue
    .line 213
    invoke-static {p1}, Lu/aly/bk$e;->a(I)Lu/aly/bk$e;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 171
    iget-byte v0, p0, Lu/aly/bk;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 172
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 179
    iget-byte v0, p0, Lu/aly/bk;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lu/aly/bk;->b:I

    return v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lu/aly/bk;->a()Lu/aly/bk;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 197
    iget-byte v0, p0, Lu/aly/bk;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bk;->j:B

    .line 198
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 205
    iget-byte v0, p0, Lu/aly/bk;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resolution("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Lu/aly/bk;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Lu/aly/bk;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
