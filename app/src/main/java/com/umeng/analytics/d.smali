.class public Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/w;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/c;

.field private c:Lu/aly/o;

.field private d:Lu/aly/ae;

.field private e:Lu/aly/aa;

.field private f:Lu/aly/p;

.field private g:Lu/aly/m;

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 31
    new-instance v0, Lu/aly/o;

    invoke-direct {v0}, Lu/aly/o;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/o;

    .line 32
    new-instance v0, Lu/aly/ae;

    invoke-direct {v0}, Lu/aly/ae;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    .line 33
    new-instance v0, Lu/aly/aa;

    invoke-direct {v0}, Lu/aly/aa;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/aa;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    .line 40
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/o;

    invoke-virtual {v0, p0}, Lu/aly/o;->a(Lu/aly/w;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Lu/aly/p;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/p;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Lu/aly/p;

    iget-object v1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/p;

    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/m;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    .line 51
    :cond_0
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/aa;

    invoke-virtual {v0, p1}, Lu/aly/aa;->c(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->a()V

    .line 187
    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/aa;

    invoke-virtual {v0, p1}, Lu/aly/aa;->d(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    invoke-virtual {v0, p1}, Lu/aly/ae;->a(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->b()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->b()V

    .line 196
    return-void
.end method


# virtual methods
.method public a()Lu/aly/aa;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/aa;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 78
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    .line 79
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ae;->a(Ljava/lang/String;)V

    .line 97
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 100
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$1;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    const-string v0, "unexpected null context in reportError"

    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 161
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/m;

    new-instance v1, Lu/aly/ah;

    invoke-direct {v1, p2}, Lu/aly/ah;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/ah;->a(Z)Lu/aly/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/m;->a(Lu/aly/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 233
    :cond_0
    new-instance v0, Lcom/umeng/analytics/d$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$3;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d;->f:Lu/aly/p;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/p;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/p;

    invoke-virtual {v0, p2, p3}, Lu/aly/p;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 260
    :cond_0
    new-instance v0, Lcom/umeng/analytics/d$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/umeng/analytics/d$5;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/p;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/p;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 169
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 175
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/m;

    new-instance v1, Lu/aly/ah;

    invoke-direct {v1, p2}, Lu/aly/ah;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/ah;->a(Z)Lu/aly/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/m;->a(Lu/aly/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/c;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    .line 75
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    invoke-virtual {v0, p1}, Lu/aly/ae;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 83
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    invoke-virtual {v0}, Lu/aly/ae;->a()V

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 299
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/m;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/m;

    new-instance v1, Lu/aly/ah;

    invoke-direct {v1, p1}, Lu/aly/ah;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lu/aly/m;->b(Lu/aly/r;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 303
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$8;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d$8;-><init>(Lcom/umeng/analytics/d;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ae;->b(Ljava/lang/String;)V

    .line 122
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 123
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 125
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$2;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$4;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    invoke-virtual {v0, p1}, Lu/aly/ae;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/d$7;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const-string v1, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v0}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 200
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 272
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$6;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ae;

    invoke-virtual {v0}, Lu/aly/ae;->a()V

    .line 285
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 286
    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
