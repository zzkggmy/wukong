.class Lcom/baidu/tts/b/a/b/f$c;
.super Ljava/lang/Object;
.source "OnlineSynthesizer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/aop/tts/TtsError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/f;

.field private b:Lcom/baidu/tts/k/i;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/baidu/tts/b/a/b/h$a;

.field private f:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$c;->a:Lcom/baidu/tts/b/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/baidu/tts/b/a/b/f$c;->b:Lcom/baidu/tts/k/i;

    .line 87
    invoke-static {}, Lcom/baidu/tts/o/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->c:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$c;->d:I

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/k/i;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->b:Lcom/baidu/tts/k/i;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$c;->f:Lcom/baidu/tts/aop/tts/TtsError;

    return-void
.end method

.method static synthetic b(Lcom/baidu/tts/b/a/b/f$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/b/a/b/h$a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->e:Lcom/baidu/tts/b/a/b/h$a;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/tts/b/a/b/f$c;)Lcom/baidu/tts/b/a/b/f;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->a:Lcom/baidu/tts/b/a/b/f;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/baidu/tts/b/a/b/f$c$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/b/a/b/f$c$1;-><init>(Lcom/baidu/tts/b/a/b/f$c;)V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->e:Lcom/baidu/tts/b/a/b/h$a;

    .line 121
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->a:Lcom/baidu/tts/b/a/b/f;

    iget v1, p0, Lcom/baidu/tts/b/a/b/f$c;->d:I

    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$c;->b:Lcom/baidu/tts/k/i;

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$c;->e:Lcom/baidu/tts/b/a/b/h$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/tts/b/a/b/f;->b(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$c;->f:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/f$c;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method
