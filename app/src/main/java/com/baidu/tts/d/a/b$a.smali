.class Lcom/baidu/tts/d/a/b$a;
.super Ljava/lang/Object;
.source "DownloadEngine.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/d/a/b;

.field private b:Lcom/baidu/tts/d/a/c;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;Lcom/baidu/tts/d/a/c;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/d/a/b$a;)Lcom/baidu/tts/d/a/b;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/baidu/tts/o/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    const-string v2, "fileId is null"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 303
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 231
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a;->a:Lcom/baidu/tts/d/a/b;

    invoke-static {v0}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/b;)Lcom/baidu/tts/j/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/j/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/ModelFileBags;

    .line 234
    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0, v2}, Lcom/baidu/tts/client/model/ModelFileBags;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_1

    .line 237
    new-instance v1, Lcom/baidu/tts/loopj/SyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/tts/loopj/SyncHttpClient;-><init>()V

    .line 238
    invoke-virtual {v1, v2}, Lcom/baidu/tts/loopj/SyncHttpClient;->setURLEncodingEnabled(Z)V

    .line 239
    sget-object v2, Lcom/baidu/tts/e/m;->a:Lcom/baidu/tts/e/m;

    invoke-virtual {v2}, Lcom/baidu/tts/e/m;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/tts/loopj/SyncHttpClient;->setTimeout(I)V

    .line 240
    const/16 v2, 0x5dc

    invoke-virtual {v1, v5, v2}, Lcom/baidu/tts/loopj/SyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 241
    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v2}, Lcom/baidu/tts/d/a/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v2}, Lcom/baidu/tts/o/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 244
    new-instance v3, Lcom/baidu/tts/d/a/b$a$1;

    iget-object v4, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-direct {v3, p0, v2, v4}, Lcom/baidu/tts/d/a/b$a$1;-><init>(Lcom/baidu/tts/d/a/b$a;Ljava/io/File;Lcom/baidu/tts/d/a/c;)V

    .line 289
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/baidu/tts/d/a/f;->setUseSynchronousMode(Z)V

    .line 290
    iget-object v2, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v2, v5}, Lcom/baidu/tts/d/a/c;->a(I)V

    .line 291
    invoke-virtual {v1, v0, v3}, Lcom/baidu/tts/loopj/SyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/tts/loopj/ResponseHandlerInterface;)Lcom/baidu/tts/loopj/RequestHandle;

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    const-string v2, "url is null"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    const-string v2, "urlbags is null"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/baidu/tts/d/a/b$a;->b:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

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
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/b$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
