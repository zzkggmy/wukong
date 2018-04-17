.class public Lcom/baidu/tts/b/a/b/d;
.super Lcom/baidu/tts/b/a/b/a;
.source "MixSynthesizer.java"


# instance fields
.field private b:Lcom/baidu/tts/k/b;

.field private c:Lcom/baidu/tts/b/a/b/f;

.field private d:Lcom/baidu/tts/b/a/b/e;

.field private e:Lcom/baidu/tts/b/a/b/c;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    .line 27
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->f:I

    .line 28
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    .line 31
    new-instance v0, Lcom/baidu/tts/b/a/b/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    .line 32
    new-instance v0, Lcom/baidu/tts/b/a/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    .line 33
    new-instance v0, Lcom/baidu/tts/b/a/b/c;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/d;Lcom/baidu/tts/k/h;)Lcom/baidu/tts/k/h;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/d;->b(Lcom/baidu/tts/k/h;)Lcom/baidu/tts/k/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/d;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    return-void
.end method

.method private b(Lcom/baidu/tts/k/h;)Lcom/baidu/tts/k/h;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->b()I

    move-result v0

    .line 195
    if-ltz v0, :cond_0

    .line 196
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    add-int/2addr v0, v1

    .line 200
    :goto_0
    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->b(I)V

    .line 201
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->c()I

    move-result v0

    .line 202
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->f:I

    add-int/2addr v0, v1

    .line 203
    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->c(I)V

    .line 204
    return-object p1

    .line 198
    :cond_0
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/tts/b/a/b/d;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/baidu/tts/b/a/b/d;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/k/f;)I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/k/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/k/g;)I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/k/g;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    new-instance v1, Lcom/baidu/tts/b/a/b/d$1;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/a/b/d$1;-><init>(Lcom/baidu/tts/b/a/b/d;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b;)V

    .line 95
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    new-instance v1, Lcom/baidu/tts/b/a/b/d$2;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/a/b/d$2;-><init>(Lcom/baidu/tts/b/a/b/d;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b;)V

    .line 134
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f;->a()Lcom/baidu/tts/aop/tts/TtsError;

    .line 135
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e;->a()Lcom/baidu/tts/aop/tts/TtsError;

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    .line 175
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->f:I

    .line 177
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/baidu/tts/k/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/i;->b(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AllSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TAllSynthesizerParams;)V"
        }
    .end annotation

    .prologue
    .line 156
    check-cast p1, Lcom/baidu/tts/k/b;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/k/b;

    .line 157
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/k/b;

    invoke-virtual {v0}, Lcom/baidu/tts/k/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    .line 158
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/f$b;->a(I)V

    .line 159
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/f$b;->b(I)V

    .line 160
    sget-object v1, Lcom/baidu/tts/e/m;->b:Lcom/baidu/tts/e/m;

    invoke-virtual {v1}, Lcom/baidu/tts/e/m;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/f$b;->c(I)V

    .line 161
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f;->a(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/k/b;

    invoke-virtual {v0}, Lcom/baidu/tts/k/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/k/b;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/c;->a(Lcom/baidu/tts/k/b;)V

    .line 165
    return-void
.end method

.method public b(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/k/e;)I

    move-result v0

    return v0
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 145
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 146
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/c;->a(Lcom/baidu/tts/k/b;)V

    .line 147
    return-object v1
.end method
