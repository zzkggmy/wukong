.class public Lcom/baidu/tts/answer/auth/h;
.super Lcom/baidu/tts/answer/b;
.source "OnlineAuthQuestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/answer/b",
        "<",
        "Lcom/baidu/tts/answer/auth/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/b/a/b/f$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/baidu/tts/b/a/b/f$b;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/tts/answer/b;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/baidu/tts/answer/auth/h;->a:Lcom/baidu/tts/b/a/b/f$b;

    .line 33
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/baidu/tts/answer/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/baidu/tts/answer/e",
            "<",
            "Lcom/baidu/tts/answer/auth/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/baidu/tts/answer/auth/b;

    invoke-direct {v0}, Lcom/baidu/tts/answer/auth/b;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/h;->c()Lcom/baidu/tts/answer/auth/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/baidu/tts/answer/auth/g;
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/baidu/tts/answer/auth/g;

    invoke-direct {v0}, Lcom/baidu/tts/answer/auth/g;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/h;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->e()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    iget-object v1, p0, Lcom/baidu/tts/answer/auth/h;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->a()Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/baidu/tts/answer/auth/h;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v2}, Lcom/baidu/tts/b/a/b/f$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/g/b/b;->h()Landroid/content/Context;

    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/baidu/tts/o/j;->a(Landroid/content/Context;)Lcom/baidu/tts/o/j;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v1, v2}, Lcom/baidu/tts/o/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Lcom/baidu/tts/o/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "OnlineAuthQuestion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "token = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/g;->a(Ljava/lang/String;)V

    .line 51
    if-nez v1, :cond_0

    .line 52
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->a:Lcom/baidu/tts/e/o;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/g;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
