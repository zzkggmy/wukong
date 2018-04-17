.class public Lcom/baidu/tts/k/i;
.super Lcom/baidu/tts/l/a;
.source "TextParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/l/a",
        "<",
        "Lcom/baidu/tts/k/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/e/i;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/tts/l/a;-><init>()V

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/k/i;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/baidu/tts/k/i;->b(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/baidu/tts/k/i;->d(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/k/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/tts/k/i;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/tts/k/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/k/i;->a:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/e/i;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/baidu/tts/k/i;->d:Lcom/baidu/tts/e/i;

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/tts/k/i;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/k/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/tts/k/i;->a:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/tts/k/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/tts/k/i;->b:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/k/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string p1, "0"

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/baidu/tts/k/i;->c:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public e()[B
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/baidu/tts/k/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/tts/k/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/tts/k/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/baidu/tts/e/i;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/tts/k/i;->d:Lcom/baidu/tts/e/i;

    return-object v0
.end method
