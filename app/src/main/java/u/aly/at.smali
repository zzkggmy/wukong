.class public Lu/aly/at;
.super Ljava/lang/Object;
.source "ControlPolicy.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/at$c;,
        Lu/aly/at$d;,
        Lu/aly/at$a;,
        Lu/aly/at$b;,
        Lu/aly/at$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz",
        "<",
        "Lu/aly/at;",
        "Lu/aly/at$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/at$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lu/aly/dd;

.field private static final d:Lu/aly/ct;

.field private static final e:Ljava/util/Map;
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


# instance fields
.field public a:Lu/aly/bf;

.field private f:[Lu/aly/at$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xc

    .line 24
    new-instance v0, Lu/aly/dd;

    const-string v1, "ControlPolicy"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/at;->c:Lu/aly/dd;

    .line 27
    new-instance v0, Lu/aly/ct;

    const-string v1, "latent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->d:Lu/aly/ct;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/at;->e:Ljava/util/Map;

    .line 33
    sget-object v0, Lu/aly/at;->e:Ljava/util/Map;

    const-class v1, Lu/aly/di;

    new-instance v2, Lu/aly/at$b;

    invoke-direct {v2, v3}, Lu/aly/at$b;-><init>(Lu/aly/at$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lu/aly/at;->e:Ljava/util/Map;

    const-class v1, Lu/aly/dj;

    new-instance v2, Lu/aly/at$d;

    invoke-direct {v2, v3}, Lu/aly/at$d;-><init>(Lu/aly/at$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/at$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 110
    sget-object v1, Lu/aly/at$e;->a:Lu/aly/at$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "latent"

    const/4 v4, 0x2

    new-instance v5, Lu/aly/cq;

    const-class v6, Lu/aly/bf;

    invoke-direct {v5, v7, v6}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v4, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/at;->b:Ljava/util/Map;

    .line 114
    const-class v0, Lu/aly/at;

    sget-object v1, Lu/aly/at;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/at$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/at$e;->a:Lu/aly/at$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/at;->f:[Lu/aly/at$e;

    .line 118
    return-void
.end method

.method public constructor <init>(Lu/aly/at;)V
    .locals 3

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/at$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/at$e;->a:Lu/aly/at$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/at;->f:[Lu/aly/at$e;

    .line 124
    invoke-virtual {p1}, Lu/aly/at;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lu/aly/bf;

    iget-object v1, p1, Lu/aly/at;->a:Lu/aly/bf;

    invoke-direct {v0, v1}, Lu/aly/bf;-><init>(Lu/aly/bf;)V

    iput-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    .line 127
    :cond_0
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
    .line 214
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/at;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
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
    .line 205
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/at;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic h()Lu/aly/dd;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/at;->c:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic i()Lu/aly/ct;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/at;->d:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/at$e;
    .locals 1

    .prologue
    .line 166
    invoke-static {p1}, Lu/aly/at$e;->a(I)Lu/aly/at$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/at;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lu/aly/at;

    invoke-direct {v0, p0}, Lu/aly/at;-><init>(Lu/aly/at;)V

    return-object v0
.end method

.method public a(Lu/aly/bf;)Lu/aly/at;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lu/aly/at;->a:Lu/aly/bf;

    .line 144
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
    .line 170
    sget-object v0, Lu/aly/at;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    .line 171
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    .line 163
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lu/aly/at;->a(I)Lu/aly/at$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    .line 136
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
    .line 174
    sget-object v0, Lu/aly/at;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    .line 175
    return-void
.end method

.method public c()Lu/aly/bf;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    .line 149
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lu/aly/at;->a:Lu/aly/bf;

    invoke-virtual {v0}, Lu/aly/bf;->j()V

    .line 201
    :cond_0
    return-void
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lu/aly/at;->a()Lu/aly/at;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPolicy("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lu/aly/at;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-string v1, "latent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lu/aly/at;->a:Lu/aly/bf;

    if-nez v1, :cond_1

    .line 185
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_1
    iget-object v1, p0, Lu/aly/at;->a:Lu/aly/bf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
