.class Lcom/baidu/tts/answer/auth/a$c;
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
    name = "c"
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

.field private b:Lcom/baidu/tts/b/a/b/f$b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/f$b;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/baidu/tts/answer/auth/a$c;->a:Lcom/baidu/tts/answer/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/baidu/tts/answer/auth/a$c;->b:Lcom/baidu/tts/b/a/b/f$b;

    .line 315
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
    .line 324
    iget-object v0, p0, Lcom/baidu/tts/answer/auth/a$c;->a:Lcom/baidu/tts/answer/auth/a;

    iget-object v1, p0, Lcom/baidu/tts/answer/auth/a$c;->b:Lcom/baidu/tts/b/a/b/f$b;

    invoke-static {v0, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/answer/auth/a;Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;

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
    invoke-virtual {p0}, Lcom/baidu/tts/answer/auth/a$c;->a()Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method
