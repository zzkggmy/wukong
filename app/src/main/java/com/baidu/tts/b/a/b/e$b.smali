.class Lcom/baidu/tts/b/a/b/e$b;
.super Ljava/lang/Object;
.source "OfflineSynthesizer.java"

# interfaces
.implements Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/tts/aop/tts/TtsError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/e;

.field private b:Lcom/baidu/tts/k/i;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/e;Lcom/baidu/tts/k/i;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/b/a/b/e$b;->c:I

    .line 103
    iput-object p2, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/k/i;

    .line 104
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v6

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v6, v2, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    move-result v0

    .line 134
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "engineResult = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v6

    const/4 v2, 0x5

    .line 136
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$a;->w()J

    move-result-wide v4

    .line 135
    invoke-static {v0, v1, v2, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 138
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v6

    const/4 v2, 0x6

    .line 139
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$a;->x()J

    move-result-wide v4

    .line 138
    invoke-static {v0, v1, v2, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 141
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v6

    const/4 v2, 0x7

    .line 142
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$a;->y()J

    move-result-wide v4

    .line 141
    invoke-static {v0, v1, v2, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 144
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v6

    const/16 v2, 0x11

    .line 145
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$a;->a()J

    move-result-wide v4

    .line 144
    invoke-static {v0, v1, v2, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 146
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v0, v0, v6

    const/16 v2, 0x12

    .line 147
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/b/a/b/e$a;->b()J

    move-result-wide v4

    .line 146
    invoke-static {v0, v1, v2, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 148
    invoke-static {p0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->setOnNewDataListener(Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/k/i;

    sget-object v1, Lcom/baidu/tts/e/d;->d:Lcom/baidu/tts/e/d;

    invoke-virtual {v1}, Lcom/baidu/tts/e/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/i;->c(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/k/i;

    invoke-virtual {v0}, Lcom/baidu/tts/k/i;->e()[B

    move-result-object v0

    .line 151
    const-string v1, "OfflineSynthesizer"

    const-string v2, "before bdttssynthesis"

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v1

    aget-wide v2, v1, v6

    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSynthesis(J[BI)I

    move-result v0

    .line 154
    const-string v1, "OfflineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after bdttssynthesis result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->v:Lcom/baidu/tts/e/o;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;I)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->n:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/e$b;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public onNewData([BI)I
    .locals 2
    .param p1, "audioData"    # [B
    .param p2, "progress"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/k/i;

    invoke-static {v0}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/baidu/tts/e/f;->b:Lcom/baidu/tts/e/f;

    invoke-virtual {v1}, Lcom/baidu/tts/e/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/h;->d(I)V

    .line 110
    sget-object v1, Lcom/baidu/tts/e/a;->a:Lcom/baidu/tts/e/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/a;)V

    .line 111
    invoke-virtual {v0, p1}, Lcom/baidu/tts/k/h;->a([B)V

    .line 112
    invoke-virtual {v0, p2}, Lcom/baidu/tts/k/h;->c(I)V

    .line 113
    iget v1, p0, Lcom/baidu/tts/b/a/b/e$b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/tts/b/a/b/e$b;->c:I

    .line 114
    array-length v1, p1

    if-nez v1, :cond_0

    .line 115
    iget v1, p0, Lcom/baidu/tts/b/a/b/e$b;->c:I

    neg-int v1, v1

    iput v1, p0, Lcom/baidu/tts/b/a/b/e$b;->c:I

    .line 117
    :cond_0
    iget v1, p0, Lcom/baidu/tts/b/a/b/e$b;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/h;->b(I)V

    .line 118
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/k/h;)V

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "OfflineSynthesizer"

    const-string v1, "interrupted to interrupt syn"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, -0x1

    .line 124
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
