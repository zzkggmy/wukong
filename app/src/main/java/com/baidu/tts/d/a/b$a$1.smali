.class Lcom/baidu/tts/d/a/b$a$1;
.super Lcom/baidu/tts/d/a/f;
.source "DownloadEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/tts/d/a/b$a;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/d/a/b$a;


# direct methods
.method constructor <init>(Lcom/baidu/tts/d/a/b$a;Ljava/io/File;Lcom/baidu/tts/d/a/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Lcom/baidu/tts/d/a/b$a;

    .line 244
    invoke-direct {p0, p2, p3}, Lcom/baidu/tts/d/a/f;-><init>(Ljava/io/File;Lcom/baidu/tts/d/a/c;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Lcom/baidu/tts/d/a/b$a;

    invoke-static {v0}, Lcom/baidu/tts/d/a/b$a;->a(Lcom/baidu/tts/d/a/b$a;)Lcom/baidu/tts/d/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/f;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 260
    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 1
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 283
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Lcom/baidu/tts/d/a/b$a;

    invoke-static {v0}, Lcom/baidu/tts/d/a/b$a;->a(Lcom/baidu/tts/d/a/b$a;)Lcom/baidu/tts/d/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/f;->onProgress(JJ)V

    .line 286
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/baidu/tts/d/a/b$a$1;->a:Lcom/baidu/tts/d/a/b$a;

    invoke-static {v0}, Lcom/baidu/tts/d/a/b$a;->a(Lcom/baidu/tts/d/a/b$a;)Lcom/baidu/tts/d/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/tts/d/a/f;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 274
    :cond_0
    return-void
.end method
