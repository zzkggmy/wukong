.class public Lcom/baidu/tts/m/b/c;
.super Ljava/lang/Object;
.source "Tts.java"

# interfaces
.implements Lcom/baidu/tts/aop/tts/ITts;


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Lcom/baidu/tts/k/j;

.field private b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

.field private c:Lcom/baidu/tts/e/n;

.field private d:Lcom/baidu/tts/a/b/c;

.field private volatile e:Lcom/baidu/tts/m/b/a;

.field private f:Lcom/baidu/tts/m/b/d;

.field private g:Lcom/baidu/tts/m/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/baidu/tts/k/j;

    invoke-direct {v0}, Lcom/baidu/tts/k/j;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    .line 50
    new-instance v0, Lcom/baidu/tts/m/b/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/m/b/d;-><init>(Lcom/baidu/tts/m/b/c;)V

    iput-object v0, p0, Lcom/baidu/tts/m/b/c;->f:Lcom/baidu/tts/m/b/d;

    .line 51
    new-instance v0, Lcom/baidu/tts/m/b/b;

    invoke-direct {v0, p0}, Lcom/baidu/tts/m/b/b;-><init>(Lcom/baidu/tts/m/b/c;)V

    iput-object v0, p0, Lcom/baidu/tts/m/b/c;->g:Lcom/baidu/tts/m/b/b;

    .line 52
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->f:Lcom/baidu/tts/m/b/d;

    iput-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    .line 53
    return-void
.end method

.method static synthetic r()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/baidu/tts/m/b/c;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/e/n;->values()[Lcom/baidu/tts/e/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/e/n;->c:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/e/n;->b:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    invoke-virtual {v1}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/baidu/tts/m/b/c;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/c;->loadCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method a(Lcom/baidu/tts/k/f;)I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/c;->loadEnglishModel(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method a(Lcom/baidu/tts/k/g;)I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/c;->loadModel(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->a()V

    .line 58
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/tts/g/b/b;->a(Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 1

    .prologue
    .line 323
    invoke-static {p1}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/k/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/k/h;)V

    .line 324
    return-void
.end method

.method a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 2

    .prologue
    .line 246
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eq p1, v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 248
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    iget-object v1, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/a/b/c;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 252
    :cond_0
    return-void
.end method

.method a(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/k/j;->a(Lcom/baidu/tts/e/g;Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method a(Lcom/baidu/tts/e/n;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/baidu/tts/m/b/c;->c:Lcom/baidu/tts/e/n;

    .line 264
    return-void
.end method

.method public a(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onError(Lcom/baidu/tts/k/h;)V

    .line 330
    :cond_0
    return-void
.end method

.method a(Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/c;->speak(Lcom/baidu/tts/k/i;)V

    .line 282
    return-void
.end method

.method a(Lcom/baidu/tts/m/b/a;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    .line 166
    return-void
.end method

.method public auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 1
    .param p1, "ttsEnum"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->auth(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/c;->freeCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method b(Lcom/baidu/tts/e/n;)Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/e/n;Lcom/baidu/tts/k/j;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->b()V

    .line 68
    return-void
.end method

.method b(Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/c;->synthesize(Lcom/baidu/tts/k/i;)V

    .line 286
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->c()V

    .line 73
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->d()V

    .line 78
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->e()V

    .line 83
    return-void
.end method

.method public f()Lcom/baidu/tts/m/b/d;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->f:Lcom/baidu/tts/m/b/d;

    return-object v0
.end method

.method public freeCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->freeCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public g()Lcom/baidu/tts/m/b/b;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->g:Lcom/baidu/tts/m/b/b;

    return-object v0
.end method

.method public getMode()Lcom/baidu/tts/e/n;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->getMode()Lcom/baidu/tts/e/n;

    move-result-object v0

    return-object v0
.end method

.method public getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    return-object v0
.end method

.method public getTtsParams()Lcom/baidu/tts/k/j;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b/a;->getTtsParams()Lcom/baidu/tts/k/j;

    move-result-object v0

    return-object v0
.end method

.method h()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/baidu/tts/m/b/c;->c:Lcom/baidu/tts/e/n;

    if-nez v1, :cond_0

    .line 178
    sget-object v1, Lcom/baidu/tts/e/n;->a:Lcom/baidu/tts/e/n;

    iput-object v1, p0, Lcom/baidu/tts/m/b/c;->c:Lcom/baidu/tts/e/n;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    if-nez v1, :cond_1

    .line 181
    new-instance v1, Lcom/baidu/tts/k/j;

    invoke-direct {v1}, Lcom/baidu/tts/k/j;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    .line 183
    :cond_1
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/g/b/b;->a()V

    .line 184
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/answer/auth/a;->a()V

    .line 187
    invoke-static {}, Lcom/baidu/tts/m/b/c;->r()[I

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/m/b/c;->c:Lcom/baidu/tts/e/n;

    invoke-virtual {v2}, Lcom/baidu/tts/e/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 204
    :goto_0
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 205
    invoke-interface {v1, v0}, Lcom/baidu/tts/b/a/a/d;->a(Ljava/lang/Object;)V

    .line 206
    new-instance v0, Lcom/baidu/tts/b/b/a/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/b/a/f;-><init>()V

    .line 207
    iget-object v2, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    invoke-virtual {v2}, Lcom/baidu/tts/k/j;->b()Lcom/baidu/tts/k/a;

    move-result-object v2

    .line 208
    invoke-interface {v0, v2}, Lcom/baidu/tts/b/b/a/c;->a(Ljava/lang/Object;)V

    .line 209
    new-instance v2, Lcom/baidu/tts/a/b/c;

    invoke-direct {v2}, Lcom/baidu/tts/a/b/c;-><init>()V

    iput-object v2, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    .line 210
    new-instance v2, Lcom/baidu/tts/a/b/b;

    iget-object v3, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    invoke-direct {v2, v1, v0, v3}, Lcom/baidu/tts/a/b/b;-><init>(Lcom/baidu/tts/b/a/a/d;Lcom/baidu/tts/b/b/a/c;Lcom/baidu/tts/k/j;)V

    .line 211
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/a/b/c;->a(Lcom/baidu/tts/a/b/a;)V

    .line 212
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    iget-object v1, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/a/b/c;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/c;->a()V

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_1
    return v0

    .line 189
    :pswitch_0
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/f;->a:Lcom/baidu/tts/e/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/e/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v1

    .line 190
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    invoke-virtual {v0}, Lcom/baidu/tts/k/j;->c()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/f;->b:Lcom/baidu/tts/e/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/e/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v1

    .line 194
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    invoke-virtual {v0}, Lcom/baidu/tts/k/j;->d()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/f;->c:Lcom/baidu/tts/e/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/e/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v1

    .line 198
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    invoke-virtual {v0}, Lcom/baidu/tts/k/j;->a()Lcom/baidu/tts/k/b;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method i()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/c;->b()V

    .line 228
    return-void
.end method

.method j()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/c;->c()V

    .line 232
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/c;->d()V

    .line 236
    return-void
.end method

.method l()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->d:Lcom/baidu/tts/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/c;->e()V

    .line 240
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/a;->e()V

    .line 241
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/g/b/b;->e()V

    .line 242
    new-instance v0, Lcom/baidu/tts/k/j;

    invoke-direct {v0}, Lcom/baidu/tts/k/j;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    .line 243
    return-void
.end method

.method public loadCustomResource(Lcom/baidu/tts/k/e;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/e;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->loadCustomResource(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/k/f;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/f;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->loadEnglishModel(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/k/g;)I
    .locals 1
    .param p1, "params"    # Lcom/baidu/tts/k/g;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->loadModel(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method m()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-object v0
.end method

.method n()Lcom/baidu/tts/e/n;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->c:Lcom/baidu/tts/e/n;

    return-object v0
.end method

.method o()Lcom/baidu/tts/k/j;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->a:Lcom/baidu/tts/k/j;

    return-object v0
.end method

.method public p()I
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->b:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/baidu/tts/e/o;->J:Lcom/baidu/tts/e/o;

    invoke-virtual {v1}, Lcom/baidu/tts/e/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->J:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 317
    invoke-virtual {p0, v0}, Lcom/baidu/tts/m/b/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->g:Lcom/baidu/tts/m/b/b;

    iget-object v1, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->setContext(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public setMode(Lcom/baidu/tts/e/n;)V
    .locals 1
    .param p1, "mode"    # Lcom/baidu/tts/e/n;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->setMode(Lcom/baidu/tts/e/n;)V

    .line 103
    return-void
.end method

.method public setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Lcom/baidu/tts/e/g;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/b/a;->setParam(Lcom/baidu/tts/e/g;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 1
    .param p1, "ttsListener"    # Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 88
    return-void
.end method

.method public speak(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->speak(Lcom/baidu/tts/k/i;)V

    .line 123
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/k/i;)V
    .locals 1
    .param p1, "textParams"    # Lcom/baidu/tts/k/i;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/tts/m/b/c;->e:Lcom/baidu/tts/m/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/b/a;->synthesize(Lcom/baidu/tts/k/i;)V

    .line 128
    return-void
.end method
