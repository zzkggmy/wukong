.class public Lcom/baidu/tts/k/a;
.super Lcom/baidu/tts/l/a;
.source "AllPlayerParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/l/a",
        "<",
        "Lcom/baidu/tts/k/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/b/b/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/tts/l/a;-><init>()V

    .line 20
    new-instance v0, Lcom/baidu/tts/b/b/b/b$a;

    invoke-direct {v0}, Lcom/baidu/tts/b/b/b/b$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/k/a;->a:Lcom/baidu/tts/b/b/b/b$a;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/b/b/b/b$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/tts/k/a;->a:Lcom/baidu/tts/b/b/b/b$a;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/tts/k/a;->a:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(I)V

    .line 42
    return-void
.end method
