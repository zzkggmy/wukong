.class public Lcom/baidu/tts/d/a/f;
.super Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;
.source "ModelFileResponseHandler.java"


# instance fields
.field private a:Lcom/baidu/tts/d/a/c;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/baidu/tts/d/a/c;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    .line 26
    iput-object p2, p0, Lcom/baidu/tts/d/a/f;->a:Lcom/baidu/tts/d/a/c;

    .line 27
    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    .line 42
    const-string v2, "download failure"

    .line 41
    invoke-virtual {v0, v1, p1, v2, p3}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/baidu/tts/d/a/f;->a:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 44
    return-void
.end method

.method public onProgress(JJ)V
    .locals 1
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;->onProgress(JJ)V

    .line 66
    iget-object v0, p0, Lcom/baidu/tts/d/a/f;->a:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/c;->a(JJ)V

    .line 67
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/tts/d/a/f;->a:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/c;->d()V

    .line 56
    return-void
.end method
