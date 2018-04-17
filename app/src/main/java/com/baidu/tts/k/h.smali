.class public Lcom/baidu/tts/k/h;
.super Lcom/baidu/tts/l/a;
.source "ResponseBag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/l/a",
        "<",
        "Lcom/baidu/tts/k/h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/e/e;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:[B

.field private h:Lcom/baidu/tts/e/a;

.field private i:Lcom/baidu/tts/k/i;

.field private j:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/tts/l/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/baidu/tts/k/i;Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/k/h;
    .locals 1

    .prologue
    .line 218
    invoke-static {p0}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p1}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 220
    return-object v0
.end method

.method public static b(Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/k/h;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/baidu/tts/k/h;

    invoke-direct {v0}, Lcom/baidu/tts/k/h;-><init>()V

    .line 213
    invoke-virtual {v0, p0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 214
    return-object v0
.end method

.method public static b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/baidu/tts/k/h;

    invoke-direct {v0}, Lcom/baidu/tts/k/h;-><init>()V

    .line 207
    invoke-virtual {v0, p0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/k/i;)V

    .line 208
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/tts/k/h;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/baidu/tts/k/h;->c:I

    .line 59
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/tts/k/h;->j:Lcom/baidu/tts/aop/tts/TtsError;

    .line 185
    return-void
.end method

.method public a(Lcom/baidu/tts/e/a;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/baidu/tts/k/h;->h:Lcom/baidu/tts/e/a;

    .line 157
    return-void
.end method

.method public a(Lcom/baidu/tts/e/e;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/baidu/tts/k/h;->a:Lcom/baidu/tts/e/e;

    .line 199
    return-void
.end method

.method public a(Lcom/baidu/tts/k/i;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/baidu/tts/k/h;->i:Lcom/baidu/tts/k/i;

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/tts/k/h;->d:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/baidu/tts/k/h;->g:[B

    .line 129
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/baidu/tts/k/h;->e:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/baidu/tts/k/h;->e:I

    .line 101
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/baidu/tts/k/h;->f:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/baidu/tts/k/h;->f:I

    .line 115
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/baidu/tts/k/h;->b:I

    .line 143
    return-void
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/k/h;->g:[B

    return-object v0
.end method

.method public e()Lcom/baidu/tts/k/i;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/tts/k/h;->i:Lcom/baidu/tts/k/i;

    return-object v0
.end method

.method public f()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/tts/k/h;->j:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method
