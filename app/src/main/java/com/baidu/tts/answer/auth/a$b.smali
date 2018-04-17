.class Lcom/baidu/tts/answer/auth/a$b;
.super Ljava/lang/Object;
.source "AuthJury.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/answer/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/answer/auth/AuthInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/answer/auth/a;

.field private b:Lcom/baidu/tts/b/a/b/e$a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/e$a;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/a$b;->a:Lcom/baidu/tts/answer/auth/a;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/baidu/tts/answer/auth/a$b;->b:Lcom/baidu/tts/b/a/b/e$a;

    .line 296
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/answer/auth/AuthInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/a$b;->a:Lcom/baidu/tts/answer/auth/a;

    iget-object v1, p0, Lcom/baidu/tts/answer/auth/a$b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-static {v0, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/a$b;->a()Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method
