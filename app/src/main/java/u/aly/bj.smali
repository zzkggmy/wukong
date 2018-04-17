.class public Lu/aly/bj;
.super Lu/aly/cj;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cj",
        "<",
        "Lu/aly/bj;",
        "Lu/aly/bj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bj$a;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dd;

.field private static final e:Lu/aly/ct;

.field private static final f:Lu/aly/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 18
    new-instance v0, Lu/aly/dd;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bj;->d:Lu/aly/dd;

    .line 20
    new-instance v0, Lu/aly/ct;

    const-string v1, "string_value"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->e:Lu/aly/ct;

    .line 22
    new-instance v0, Lu/aly/ct;

    const-string v1, "long_value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->f:Lu/aly/ct;

    .line 94
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bj$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 96
    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    new-instance v2, Lu/aly/cl;

    const-string v3, "string_value"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    new-instance v2, Lu/aly/cl;

    const-string v3, "long_value"

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bj;->a:Ljava/util/Map;

    .line 105
    const-class v0, Lu/aly/bj;

    sget-object v1, Lu/aly/bj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lu/aly/cj;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Lu/aly/bj$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lu/aly/cj;-><init>(Lu/aly/cg;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lu/aly/bj;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lu/aly/cj;-><init>(Lu/aly/cj;)V

    .line 118
    return-void
.end method

.method public static a(J)Lu/aly/bj;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0}, Lu/aly/bj;-><init>()V

    .line 132
    invoke-virtual {v0, p0, p1}, Lu/aly/bj;->b(J)V

    .line 133
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bj;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0}, Lu/aly/bj;-><init>()V

    .line 126
    invoke-virtual {v0, p0}, Lu/aly/bj;->b(Ljava/lang/String;)V

    .line 127
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
    .line 340
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bj;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
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
    .line 331
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bj;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a(Lu/aly/cy;Lu/aly/ct;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-short v1, p2, Lu/aly/ct;->c:S

    invoke-static {v1}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    sget-object v2, Lu/aly/bj$1;->a:[I

    invoke-virtual {v1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :pswitch_0
    iget-byte v1, p2, Lu/aly/ct;->b:B

    sget-object v2, Lu/aly/bj;->e:Lu/aly/ct;

    iget-byte v2, v2, Lu/aly/ct;->b:B

    if-ne v1, v2, :cond_1

    .line 165
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    iget-byte v1, p2, Lu/aly/ct;->b:B

    invoke-static {p1, v1}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-byte v1, p2, Lu/aly/ct;->b:B

    sget-object v2, Lu/aly/bj;->f:Lu/aly/ct;

    iget-byte v2, v2, Lu/aly/ct;->b:B

    if-ne v1, v2, :cond_2

    .line 174
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    iget-byte v1, p2, Lu/aly/ct;->b:B

    invoke-static {p1, v1}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lu/aly/cy;S)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p2}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    sget-object v1, Lu/aly/bj$1;->a:[I

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_0
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 217
    :pswitch_1
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find a field with field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)Lu/aly/bj$a;
    .locals 1

    .prologue
    .line 267
    invoke-static {p1}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method protected a(S)Lu/aly/bj$a;
    .locals 1

    .prologue
    .line 263
    invoke-static {p1}, Lu/aly/bj$a;->b(I)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bj;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0, p0}, Lu/aly/bj;-><init>(Lu/aly/bj;)V

    return-object v0
.end method

.method protected a(Lu/aly/bj$a;)Lu/aly/ct;
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lu/aly/bj$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :pswitch_0
    sget-object v0, Lu/aly/bj;->e:Lu/aly/ct;

    .line 250
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lu/aly/bj;->f:Lu/aly/ct;

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Lu/aly/cg;)Lu/aly/ct;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lu/aly/bj$a;

    invoke-virtual {p0, p1}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/ct;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lu/aly/bj$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lu/aly/bj$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was expecting value of type String for field \'string_value\', but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_1
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was expecting value of type Long for field \'long_value\', but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Lu/aly/cg;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lu/aly/bj$a;

    invoke-virtual {p0, p1, p2}, Lu/aly/bj;->a(Lu/aly/bj$a;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lu/aly/bj;)Z
    .locals 2

    .prologue
    .line 317
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lu/aly/bj;->a(I)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(S)Lu/aly/cg;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lu/aly/bj;->a(S)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    .line 297
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 282
    :cond_0
    sget-object v0, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    .line 283
    iput-object p1, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    .line 284
    return-void
.end method

.method protected c()Lu/aly/dd;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lu/aly/bj;->d:Lu/aly/dd;

    return-object v0
.end method

.method protected c(Lu/aly/cy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v1, Lu/aly/bj$1;->a:[I

    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bj;->c:Lu/aly/cg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_0
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :pswitch_1
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 198
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 274
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'string_value\' because union is currently set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 275
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {p0, v0}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/ct;

    move-result-object v0

    iget-object v0, v0, Lu/aly/ct;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected d(Lu/aly/cy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 230
    sget-object v1, Lu/aly/bj$1;->a:[I

    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bj;->c:Lu/aly/cg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_0
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :pswitch_1
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()J
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'long_value\' because union is currently set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {p0, v0}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/ct;

    move-result-object v0

    iget-object v0, v0, Lu/aly/ct;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 309
    instance-of v0, p1, Lu/aly/bj;

    if-eqz v0, :cond_0

    .line 310
    check-cast p1, Lu/aly/bj;

    invoke-virtual {p0, p1}, Lu/aly/bj;->a(Lu/aly/bj;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lu/aly/bj;->a()Lu/aly/bj;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method
