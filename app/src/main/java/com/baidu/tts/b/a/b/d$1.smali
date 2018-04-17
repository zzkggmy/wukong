.class Lcom/baidu/tts/b/a/b/d$1;
.super Ljava/lang/Object;
.source "MixSynthesizer.java"

# interfaces
.implements Lcom/baidu/tts/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/b/a/b/d;->a()Lcom/baidu/tts/aop/tts/TtsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/d;


# direct methods
.method constructor <init>(Lcom/baidu/tts/b/a/b/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/d$1;->a:Lcom/baidu/tts/b/a/b/d;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/h;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public b(Lcom/baidu/tts/k/h;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public c(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d$1;->a:Lcom/baidu/tts/b/a/b/d;

    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/tts/b/a/b/d;->a(Lcom/baidu/tts/b/a/b/d;I)V

    .line 66
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d$1;->a:Lcom/baidu/tts/b/a/b/d;

    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/tts/b/a/b/d;->b(Lcom/baidu/tts/b/a/b/d;I)V

    .line 67
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d$1;->a:Lcom/baidu/tts/b/a/b/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/d;->a(Lcom/baidu/tts/k/h;)V

    .line 68
    return-void
.end method

.method public d(Lcom/baidu/tts/k/h;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public e(Lcom/baidu/tts/k/h;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
