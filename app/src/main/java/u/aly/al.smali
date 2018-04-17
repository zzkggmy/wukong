.class public Lu/aly/al;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lu/aly/x;


# static fields
.field private static h:Lu/aly/al;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lu/aly/al;->h:Lu/aly/al;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/al;->a:Z

    .line 20
    iput v1, p0, Lu/aly/al;->e:F

    .line 21
    iput v1, p0, Lu/aly/al;->f:F

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/al;->g:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lu/aly/al;->g:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, p2, p3}, Lu/aly/al;->a(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/al;
    .locals 4

    .prologue
    .line 28
    const-class v1, Lu/aly/al;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/al;->h:Lu/aly/al;

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Lu/aly/g;->a(Landroid/content/Context;)Lu/aly/g;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/g;->b()Lu/aly/g$a;

    move-result-object v0

    .line 30
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/aly/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lu/aly/g$a;->d(I)I

    move-result v0

    .line 32
    new-instance v3, Lu/aly/al;

    invoke-direct {v3, p0, v2, v0}, Lu/aly/al;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lu/aly/al;->h:Lu/aly/al;

    .line 35
    :cond_0
    sget-object v0, Lu/aly/al;->h:Lu/aly/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 87
    aget-object v3, v2, v0

    const-string v4, "SIG7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    aget-object v3, v2, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 89
    aget-object v4, v2, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    .line 90
    if-ne v3, v4, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 95
    :cond_2
    aget-object v3, v2, v0

    const-string v4, "FIXED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    aget-object v3, v2, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 97
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 98
    if-lt v3, v2, :cond_0

    if-lt v2, v1, :cond_0

    move v0, v1

    .line 99
    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)F
    .locals 2

    .prologue
    .line 44
    mul-int/lit8 v0, p2, 0x2

    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    .line 47
    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    .line 48
    const/high16 v1, 0x49800000    # 1048576.0f

    .line 50
    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 113
    const/4 v0, 0x2

    aget-object v0, v6, v0

    const-string v3, "SIG13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 117
    :goto_1
    iget v3, p0, Lu/aly/al;->e:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 118
    iput-boolean v2, p0, Lu/aly/al;->a:Z

    goto :goto_0

    .line 123
    :cond_1
    aget-object v0, v6, v2

    const-string v3, "SIG7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    aget-object v0, v6, v9

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 125
    array-length v0, v7

    new-array v3, v0, [F

    move v0, v2

    .line 126
    :goto_2
    array-length v8, v7

    if-ge v0, v8, :cond_2

    .line 127
    aget-object v8, v7, v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v3, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 132
    :goto_3
    const/4 v3, 0x4

    aget-object v3, v6, v3

    const-string v7, "RPT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    const/4 v3, 0x5

    aget-object v3, v6, v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 134
    array-length v3, v6

    new-array v4, v3, [I

    move v3, v2

    .line 135
    :goto_4
    array-length v7, v6

    if-ge v3, v7, :cond_3

    .line 136
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v3, v1

    move v1, v2

    .line 142
    :goto_5
    array-length v6, v0

    if-ge v1, v6, :cond_6

    .line 143
    aget v6, v0, v1

    add-float/2addr v3, v6

    .line 144
    iget v6, p0, Lu/aly/al;->f:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_4

    .line 150
    :goto_6
    if-eq v1, v5, :cond_5

    .line 151
    iput-boolean v9, p0, Lu/aly/al;->a:Z

    .line 152
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lu/aly/al;->d:I

    .line 153
    aget v0, v4, v1

    iput v0, p0, Lu/aly/al;->b:I

    goto/16 :goto_0

    .line 142
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 155
    :cond_5
    iput-boolean v2, p0, Lu/aly/al;->a:Z

    goto/16 :goto_0

    :cond_6
    move v1, v5

    goto :goto_6

    :cond_7
    move-object v0, v4

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 167
    const/4 v0, 0x0

    .line 168
    const/4 v2, 0x2

    aget-object v2, v4, v2

    const-string v5, "SIG13"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 172
    :cond_1
    iget v2, p0, Lu/aly/al;->e:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 173
    iput-boolean v3, p0, Lu/aly/al;->a:Z

    goto :goto_0

    .line 178
    :cond_2
    aget-object v0, v4, v3

    const-string v2, "FIXED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    :goto_1
    const/4 v2, 0x0

    .line 183
    const/4 v5, 0x4

    aget-object v5, v4, v5

    const-string v6, "RPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    const/4 v2, 0x5

    aget-object v2, v4, v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 185
    array-length v2, v5

    new-array v4, v2, [I

    move v2, v3

    .line 186
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 187
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v4

    .line 191
    :cond_4
    if-eq v0, v1, :cond_5

    .line 192
    iput-boolean v7, p0, Lu/aly/al;->a:Z

    .line 193
    iput v0, p0, Lu/aly/al;->d:I

    .line 194
    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    iput v0, p0, Lu/aly/al;->b:I

    goto :goto_0

    .line 196
    :cond_5
    iput-boolean v3, p0, Lu/aly/al;->a:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iput p2, p0, Lu/aly/al;->c:I

    .line 56
    iget-object v0, p0, Lu/aly/al;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    :cond_0
    iput-boolean v2, p0, Lu/aly/al;->a:Z

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v0, v1}, Lu/aly/al;->b(Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, Lu/aly/al;->e:F

    .line 64
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lu/aly/al;->b(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lu/aly/al;->f:F

    .line 66
    const-string v0, "SIG7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-direct {p0, p1}, Lu/aly/al;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    iput-boolean v2, p0, Lu/aly/al;->a:Z

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :cond_3
    :try_start_1
    const-string v0, "FIXED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0, p1}, Lu/aly/al;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lu/aly/g$a;)V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu/aly/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/aly/g$a;->d(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lu/aly/al;->a(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lu/aly/al;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lu/aly/al;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lu/aly/al;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lu/aly/al;->d:I

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lu/aly/al;->a:Z

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    .line 219
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    const-string v1, "client_test"

    iget v2, p0, Lu/aly/al;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v1, p0, Lu/aly/al;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v1, p0, Lu/aly/al;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Lu/aly/al;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Lu/aly/al;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
