.class public Lu/aly/ar;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ar$c;,
        Lu/aly/ar$d;,
        Lu/aly/ar$a;,
        Lu/aly/ar$b;,
        Lu/aly/ar$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz",
        "<",
        "Lu/aly/ar;",
        "Lu/aly/ar$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ar$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lu/aly/dd;

.field private static final n:Lu/aly/ct;

.field private static final o:Lu/aly/ct;

.field private static final p:Lu/aly/ct;

.field private static final q:Lu/aly/ct;

.field private static final r:Lu/aly/ct;

.field private static final s:Lu/aly/ct;

.field private static final t:Lu/aly/ct;

.field private static final u:Lu/aly/ct;

.field private static final v:Lu/aly/ct;

.field private static final w:Lu/aly/ct;

.field private static final x:Lu/aly/ct;

.field private static final y:Ljava/util/Map;
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

.field private static final z:I


# instance fields
.field private B:B

.field private C:[Lu/aly/ar$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lu/aly/bm;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 24
    new-instance v0, Lu/aly/dd;

    const-string v1, "AppInfo"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ar;->m:Lu/aly/dd;

    .line 27
    new-instance v0, Lu/aly/ct;

    const-string v1, "key"

    invoke-direct {v0, v1, v7, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->n:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v1, "version"

    invoke-direct {v0, v1, v7, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->o:Lu/aly/ct;

    .line 31
    new-instance v0, Lu/aly/ct;

    const-string v1, "version_index"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->p:Lu/aly/ct;

    .line 33
    new-instance v0, Lu/aly/ct;

    const-string v1, "package_name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->q:Lu/aly/ct;

    .line 35
    new-instance v0, Lu/aly/ct;

    const-string v1, "sdk_type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->r:Lu/aly/ct;

    .line 37
    new-instance v0, Lu/aly/ct;

    const-string v1, "sdk_version"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->s:Lu/aly/ct;

    .line 39
    new-instance v0, Lu/aly/ct;

    const-string v1, "channel"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->t:Lu/aly/ct;

    .line 41
    new-instance v0, Lu/aly/ct;

    const-string v1, "wrapper_type"

    invoke-direct {v0, v1, v7, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->u:Lu/aly/ct;

    .line 43
    new-instance v0, Lu/aly/ct;

    const-string v1, "wrapper_version"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->v:Lu/aly/ct;

    .line 45
    new-instance v0, Lu/aly/ct;

    const-string v1, "vertical_type"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v9, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->w:Lu/aly/ct;

    .line 47
    new-instance v0, Lu/aly/ct;

    const-string v1, "app_signature"

    invoke-direct {v0, v1, v7, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->x:Lu/aly/ct;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ar;->y:Ljava/util/Map;

    .line 53
    sget-object v0, Lu/aly/ar;->y:Ljava/util/Map;

    const-class v1, Lu/aly/di;

    new-instance v2, Lu/aly/ar$b;

    invoke-direct {v2, v3}, Lu/aly/ar$b;-><init>(Lu/aly/ar$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lu/aly/ar;->y:Ljava/util/Map;

    const-class v1, Lu/aly/dj;

    new-instance v2, Lu/aly/ar$d;

    invoke-direct {v2, v3}, Lu/aly/ar$d;-><init>(Lu/aly/ar$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ar$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 177
    sget-object v1, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "key"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "version"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "version_index"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v9}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "package_name"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "sdk_type"

    new-instance v4, Lu/aly/ck;

    const/16 v5, 0x10

    const-class v6, Lu/aly/bm;

    invoke-direct {v4, v5, v6}, Lu/aly/ck;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "sdk_version"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "channel"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "wrapper_type"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "wrapper_version"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "vertical_type"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v9}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "app_signature"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ar;->l:Ljava/util/Map;

    .line 220
    const-class v0, Lu/aly/ar;

    sget-object v1, Lu/aly/ar;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-byte v2, p0, Lu/aly/ar;->B:B

    .line 170
    const/4 v0, 0x7

    new-array v0, v0, [Lu/aly/ar$e;

    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ar;->C:[Lu/aly/ar$e;

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lu/aly/bm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lu/aly/ar;-><init>()V

    .line 228
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 230
    iput-object p3, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 231
    iput-object p4, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public constructor <init>(Lu/aly/ar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-byte v2, p0, Lu/aly/ar;->B:B

    .line 170
    const/4 v0, 0x7

    new-array v0, v0, [Lu/aly/ar$e;

    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ar;->C:[Lu/aly/ar$e;

    .line 238
    iget-byte v0, p1, Lu/aly/ar;->B:B

    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 239
    invoke-virtual {p1}, Lu/aly/ar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p1, Lu/aly/ar;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 242
    :cond_0
    invoke-virtual {p1}, Lu/aly/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p1, Lu/aly/ar;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 245
    :cond_1
    iget v0, p1, Lu/aly/ar;->c:I

    iput v0, p0, Lu/aly/ar;->c:I

    .line 246
    invoke-virtual {p1}, Lu/aly/ar;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p1, Lu/aly/ar;->d:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 249
    :cond_2
    invoke-virtual {p1}, Lu/aly/ar;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p1, Lu/aly/ar;->e:Lu/aly/bm;

    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 252
    :cond_3
    invoke-virtual {p1}, Lu/aly/ar;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p1, Lu/aly/ar;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 255
    :cond_4
    invoke-virtual {p1}, Lu/aly/ar;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p1, Lu/aly/ar;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 258
    :cond_5
    invoke-virtual {p1}, Lu/aly/ar;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    iget-object v0, p1, Lu/aly/ar;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 261
    :cond_6
    invoke-virtual {p1}, Lu/aly/ar;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    iget-object v0, p1, Lu/aly/ar;->i:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 264
    :cond_7
    iget v0, p1, Lu/aly/ar;->j:I

    iput v0, p0, Lu/aly/ar;->j:I

    .line 265
    invoke-virtual {p1}, Lu/aly/ar;->J()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    iget-object v0, p1, Lu/aly/ar;->k:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    .line 268
    :cond_8
    return-void
.end method

.method static synthetic L()Lu/aly/dd;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->m:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic M()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->n:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic N()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->o:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic O()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->p:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic P()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->q:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->r:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic R()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->s:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic S()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->t:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic T()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->u:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic U()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->v:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic V()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->w:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic W()Lu/aly/ct;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/ar;->x:Lu/aly/ct;

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
    .line 752
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 753
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/ar;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
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
    .line 741
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/ar;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    return-object v0
.end method

.method public C()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lu/aly/ar;->j:I

    return v0
.end method

.method public F()V
    .locals 2

    .prologue
    .line 552
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 553
    return-void
.end method

.method public G()Z
    .locals 2

    .prologue
    .line 560
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    return-object v0
.end method

.method public I()V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'key\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 722
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    if-nez v0, :cond_1

    .line 725
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 729
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_2
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 733
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'channel\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 734
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_3
    return-void
.end method

.method public a()Lu/aly/ar;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0, p0}, Lu/aly/ar;-><init>(Lu/aly/ar;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ar;
    .locals 1

    .prologue
    .line 350
    iput p1, p0, Lu/aly/ar;->c:I

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ar;->c(Z)V

    .line 352
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public a(Lu/aly/bm;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 412
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
    .line 599
    sget-object v0, Lu/aly/ar;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    .line 600
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 316
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lu/aly/ar;->d(I)Lu/aly/ar$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 278
    invoke-virtual {p0, v1}, Lu/aly/ar;->c(Z)V

    .line 279
    iput v1, p0, Lu/aly/ar;->c:I

    .line 280
    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 282
    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 286
    invoke-virtual {p0, v1}, Lu/aly/ar;->j(Z)V

    .line 287
    iput v1, p0, Lu/aly/ar;->j:I

    .line 288
    iput-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    .line 289
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
    .line 603
    sget-object v0, Lu/aly/ar;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    .line 604
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 343
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/ar;
    .locals 1

    .prologue
    .line 546
    iput p1, p0, Lu/aly/ar;->j:I

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ar;->j(Z)V

    .line 548
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 368
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 369
    return-void
.end method

.method public d(I)Lu/aly/ar$e;
    .locals 1

    .prologue
    .line 595
    invoke-static {p1}, Lu/aly/ar$e;->a(I)Lu/aly/ar$e;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 439
    return-object p0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 396
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 431
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 493
    return-object p0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 458
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 520
    return-object p0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lu/aly/ar;->a()Lu/aly/ar;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 482
    if-nez p1, :cond_0

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 485
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lu/aly/ar;->k:Ljava/lang/String;

    .line 573
    return-object p0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 512
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 539
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lu/aly/ar;->c:I

    return v0
.end method

.method public j(Z)V
    .locals 2

    .prologue
    .line 564
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 565
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 356
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 357
    return-void
.end method

.method public k(Z)V
    .locals 1

    .prologue
    .line 589
    if-nez p1, :cond_0

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    .line 592
    :cond_0
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 364
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Lu/aly/bm;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    return-object v0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 417
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 613
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :goto_0
    invoke-virtual {p0}, Lu/aly/ar;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 623
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lu/aly/ar;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v1, "version_index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v1, p0, Lu/aly/ar;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    :cond_1
    invoke-virtual {p0}, Lu/aly/ar;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, "package_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 641
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_2
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v1, "sdk_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v1, p0, Lu/aly/ar;->e:Lu/aly/bm;

    if-nez v1, :cond_a

    .line 651
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v1, "sdk_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-object v1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 660
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :goto_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v1, "channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 669
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :goto_5
    invoke-virtual {p0}, Lu/aly/ar;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 676
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v1, "wrapper_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 679
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_3
    :goto_6
    invoke-virtual {p0}, Lu/aly/ar;->D()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 687
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v1, "wrapper_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    iget-object v1, p0, Lu/aly/ar;->i:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 690
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_4
    :goto_7
    invoke-virtual {p0}, Lu/aly/ar;->G()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 698
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v1, "vertical_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget v1, p0, Lu/aly/ar;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    :cond_5
    invoke-virtual {p0}, Lu/aly/ar;->J()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 705
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string v1, "app_signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v1, p0, Lu/aly/ar;->k:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 708
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_6
    :goto_8
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 615
    :cond_7
    iget-object v1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 625
    :cond_8
    iget-object v1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 643
    :cond_9
    iget-object v1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 653
    :cond_a
    iget-object v1, p0, Lu/aly/ar;->e:Lu/aly/bm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 662
    :cond_b
    iget-object v1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 671
    :cond_c
    iget-object v1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 681
    :cond_d
    iget-object v1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 692
    :cond_e
    iget-object v1, p0, Lu/aly/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 710
    :cond_f
    iget-object v1, p0, Lu/aly/ar;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 498
    return-void
.end method
