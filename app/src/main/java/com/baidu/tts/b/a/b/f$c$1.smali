.class Lcom/baidu/tts/b/a/b/f$c$1;
.super Ljava/lang/Object;
.source "OnlineSynthesizer.java"

# interfaces
.implements Lcom/baidu/tts/b/a/b/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/b/a/b/f$c;->a()Lcom/baidu/tts/aop/tts/TtsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/f$c;


# direct methods
.method constructor <init>(Lcom/baidu/tts/b/a/b/f$c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/h;)V
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/f$c;->a(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/k/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/k/i;)V

    .line 103
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/f$c;->d(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/k/h;)V

    .line 105
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->b()I

    move-result v0

    .line 106
    if-gez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/tts/b/a/b/f$c;->a(Lcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/f$c;->d(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/b/a/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-static {v2}, Lcom/baidu/tts/b/a/b/f$c;->b(Lcom/baidu/tts/b/a/b/f$c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/f$c;->a(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/k/i;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-static {v4}, Lcom/baidu/tts/b/a/b/f$c;->c(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/b/a/b/h$a;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->f()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/b/a/b/f$c;->a(Lcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0
.end method

.method public b(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c$1;->a:Lcom/baidu/tts/b/a/b/f$c;

    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->f()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/b/a/b/f$c;->a(Lcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 119
    return-void
.end method
