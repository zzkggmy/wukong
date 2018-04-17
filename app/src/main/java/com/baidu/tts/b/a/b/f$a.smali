.class Lcom/baidu/tts/b/a/b/f$a;
.super Ljava/lang/Object;
.source "OnlineSynthesizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/f;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/tts/k/i;

.field private e:Lcom/baidu/tts/b/a/b/f$b;

.field private f:Lcom/baidu/tts/b/a/b/h$a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/f$b;Lcom/baidu/tts/b/a/b/h$a;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$a;->a:Lcom/baidu/tts/b/a/b/f;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p2, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    .line 157
    iput-object p3, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/baidu/tts/b/a/b/f$a;->d:Lcom/baidu/tts/k/i;

    .line 159
    iput-object p5, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    .line 160
    iput-object p6, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/b/a/b/h$a;

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->e:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$b;->z()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/tts/b/a/b/f$b;

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->a:Lcom/baidu/tts/b/a/b/f;

    iget v2, p0, Lcom/baidu/tts/b/a/b/f$a;->b:I

    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$a;->d:Lcom/baidu/tts/k/i;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Lcom/baidu/tts/n/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 176
    new-instance v0, Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>()V

    .line 177
    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->n()I

    move-result v2

    .line 178
    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->o()I

    move-result v4

    .line 179
    invoke-virtual {v0, v2, v4}, Lcom/baidu/tts/loopj/SyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 180
    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/f$b;->p()I

    move-result v2

    .line 181
    invoke-virtual {v0, v2}, Lcom/baidu/tts/loopj/SyncHttpClient;->setTimeout(I)V

    .line 182
    new-instance v5, Lcom/baidu/tts/b/a/b/h;

    invoke-direct {v5}, Lcom/baidu/tts/b/a/b/h;-><init>()V

    .line 183
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/b/a/b/h$a;

    invoke-virtual {v5, v2}, Lcom/baidu/tts/b/a/b/h;->a(Lcom/baidu/tts/b/a/b/h$a;)V

    .line 184
    invoke-virtual {v5, v1}, Lcom/baidu/tts/b/a/b/h;->a(Lcom/baidu/tts/b/a/b/f$b;)V

    .line 186
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/tts/e/p;->a:Lcom/baidu/tts/e/p;

    invoke-virtual {v2}, Lcom/baidu/tts/e/p;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/tts/loopj/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->h:Lcom/baidu/tts/e/o;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/a/c;->b(Lcom/baidu/tts/e/o;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$a;->d:Lcom/baidu/tts/k/i;

    invoke-static {v1}, Lcom/baidu/tts/k/h;->b(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/k/h;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$a;->f:Lcom/baidu/tts/b/a/b/h$a;

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/a/b/h$a;->b(Lcom/baidu/tts/k/h;)V

    goto :goto_0

    .line 189
    :catch_1
    move-exception v0

    .line 190
    const-string v1, "OnlineSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loopj exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
