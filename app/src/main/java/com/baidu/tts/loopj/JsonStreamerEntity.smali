.class public Lcom/baidu/tts/loopj/JsonStreamerEntity;
.super Ljava/lang/Object;
.source "JsonStreamerEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

.field private static final HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

.field private static final HEADER_JSON_CONTENT:Lorg/apache/http/Header;

.field private static final JSON_FALSE:[B

.field private static final JSON_NULL:[B

.field private static final JSON_TRUE:[B

.field private static final LOG_TAG:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final STREAM_CONTENTS:[B

.field private static final STREAM_NAME:[B

.field private static final STREAM_TYPE:[B


# instance fields
.field private final buffer:[B

.field private final contentEncoding:Lorg/apache/http/Header;

.field private final elapsedField:[B

.field private final jsonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final progressHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 45
    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    .line 54
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_TRUE:[B

    .line 55
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_FALSE:[B

    .line 56
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_NULL:[B

    .line 57
    const-string v0, "name"

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_NAME:[B

    .line 58
    const-string v0, "type"

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_TYPE:[B

    .line 59
    const-string v0, "contents"

    invoke-static {v0}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_CONTENTS:[B

    .line 62
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .line 63
    const-string v1, "Content-Type"

    .line 64
    const-string v2, "application/json"

    .line 62
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    .line 67
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .line 68
    const-string v1, "Content-Encoding"

    .line 69
    const-string v2, "gzip"

    .line 67
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sput-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/baidu/tts/loopj/ResponseHandlerInterface;ZLjava/lang/String;)V
    .locals 2
    .param p1, "progressHandler"    # Lcom/baidu/tts/loopj/ResponseHandlerInterface;
    .param p2, "useGZipCompression"    # Z
    .param p3, "elapsedField"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    .line 82
    iput-object p1, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->progressHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    .line 83
    if-eqz p2, :cond_0

    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    :goto_0
    iput-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 84
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    .line 87
    return-void

    :cond_0
    move-object v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p3}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1
.end method

.method private endMetaData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 333
    return-void
.end method

.method static escape(Ljava/lang/String;)[B
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x22

    .line 339
    if-nez p0, :cond_0

    .line 340
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_NULL:[B

    .line 394
    :goto_0
    return-object v0

    .line 344
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, -0x1

    .line 350
    :goto_1
    add-int/lit8 v1, v0, 0x1

    if-lt v1, v3, :cond_1

    .line 392
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 352
    sparse-switch v0, :sswitch_data_0

    .line 376
    const/16 v4, 0x1f

    if-le v0, v4, :cond_3

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_2

    const/16 v4, 0x9f

    if-le v0, v4, :cond_3

    :cond_2
    const/16 v4, 0x2000

    if-lt v0, v4, :cond_5

    const/16 v4, 0x20ff

    if-gt v0, v4, :cond_5

    .line 377
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 378
    const-string v0, "\\u"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v5, v0, 0x4

    .line 380
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v5, :cond_4

    .line 383
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 384
    goto :goto_1

    .line 354
    :sswitch_0
    const-string v0, "\\\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 355
    goto :goto_1

    .line 357
    :sswitch_1
    const-string v0, "\\\\"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 358
    goto :goto_1

    .line 360
    :sswitch_2
    const-string v0, "\\b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 361
    goto :goto_1

    .line 363
    :sswitch_3
    const-string v0, "\\f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 364
    goto :goto_1

    .line 366
    :sswitch_4
    const-string v0, "\\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 367
    goto :goto_1

    .line 369
    :sswitch_5
    const-string v0, "\\r"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 370
    goto :goto_1

    .line 372
    :sswitch_6
    const-string v0, "\\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 373
    goto :goto_1

    .line 381
    :cond_4
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 385
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto/16 :goto_1

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2c

    const/16 v1, 0x3a

    .line 314
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_NAME:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 315
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 316
    invoke-static {p2}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 317
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 320
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_TYPE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 321
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 322
    invoke-static {p3}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 323
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 326
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->STREAM_CONTENTS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 327
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 328
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 329
    return-void
.end method

.method private writeToFromFile(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$FileWrapper;)V
    .locals 9
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "wrapper"    # Lcom/baidu/tts/loopj/RequestParams$FileWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-wide/16 v0, 0x0

    iget-object v2, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 289
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p2, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 293
    new-instance v5, Lcom/baidu/tts/loopj/Base64OutputStream;

    const/16 v6, 0x12

    invoke-direct {v5, p1, v6}, Lcom/baidu/tts/loopj/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 296
    :goto_0
    iget-object v6, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 303
    invoke-static {v5}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 309
    invoke-static {v4}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 310
    return-void

    .line 297
    :cond_0
    iget-object v7, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Lcom/baidu/tts/loopj/Base64OutputStream;->write([BII)V

    .line 298
    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 299
    iget-object v6, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->progressHandler:Lcom/baidu/tts/loopj/ResponseHandlerInterface;

    invoke-interface {v6, v0, v1, v2, v3}, Lcom/baidu/tts/loopj/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    goto :goto_0
.end method

.method private writeToFromStream(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "entry"    # Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/baidu/tts/loopj/Base64OutputStream;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Lcom/baidu/tts/loopj/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 262
    :goto_0
    iget-object v1, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 267
    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 273
    iget-boolean v0, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->autoClose:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p2, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 277
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/tts/loopj/Base64OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 116
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 15
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x7d

    const/16 v4, 0x7b

    const/16 v13, 0x3a

    const/16 v12, 0x2c

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Output stream cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 149
    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    if-eqz v2, :cond_1

    .line 150
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x1000

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 p1, v2

    .line 154
    .end local p1    # "out":Ljava/io/OutputStream;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 157
    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 159
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    .line 160
    if-lez v5, :cond_3

    .line 161
    const/4 v2, 0x0

    .line 165
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    .line 232
    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    if-eqz v4, :cond_2

    .line 233
    iget-object v4, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write(I)V

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 238
    :cond_2
    sget-object v4, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v5, "JsonStreamerEntity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Uploaded JSON in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/baidu/tts/loopj/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write(I)V

    .line 245
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 247
    return-void

    .line 165
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    add-int/lit8 v4, v3, 0x1

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 174
    invoke-static {v2}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 175
    const/16 v2, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 178
    if-nez v3, :cond_7

    .line 179
    sget-object v2, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_NULL:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_1
    iget-object v2, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    if-nez v2, :cond_5

    if-ge v4, v5, :cond_6

    .line 221
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    :cond_6
    move v3, v4

    goto/16 :goto_0

    .line 182
    :cond_7
    :try_start_1
    instance-of v2, v3, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    .line 185
    if-nez v2, :cond_8

    instance-of v9, v3, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    if-eqz v9, :cond_c

    .line 187
    :cond_8
    const/16 v9, 0x7b

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write(I)V

    .line 190
    if-eqz v2, :cond_b

    .line 191
    move-object v0, v3

    check-cast v0, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;

    move-object v2, v0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeToFromFile(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$FileWrapper;)V

    .line 197
    :goto_2
    const/16 v2, 0x7d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v2

    .line 220
    iget-object v3, p0, Lcom/baidu/tts/loopj/JsonStreamerEntity;->elapsedField:[B

    if-nez v3, :cond_9

    if-ge v4, v5, :cond_a

    .line 221
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 223
    :cond_a
    throw v2

    .line 193
    :cond_b
    :try_start_2
    check-cast v3, Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->writeToFromStream(Ljava/io/OutputStream;Lcom/baidu/tts/loopj/RequestParams$StreamWrapper;)V

    goto :goto_2

    .line 198
    :cond_c
    instance-of v2, v3, Lcom/baidu/tts/loopj/JsonValueInterface;

    if-eqz v2, :cond_d

    .line 199
    check-cast v3, Lcom/baidu/tts/loopj/JsonValueInterface;

    invoke-interface {v3}, Lcom/baidu/tts/loopj/JsonValueInterface;->getEscapedJsonValue()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 200
    :cond_d
    instance-of v2, v3, Lorg/json/JSONObject;

    if-eqz v2, :cond_e

    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 202
    :cond_e
    instance-of v2, v3, Lorg/json/JSONArray;

    if-eqz v2, :cond_f

    .line 203
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 204
    :cond_f
    instance-of v2, v3, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 205
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    :cond_10
    sget-object v2, Lcom/baidu/tts/loopj/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_3

    .line 206
    :cond_11
    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_12

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 208
    :cond_12
    instance-of v2, v3, Ljava/lang/Double;

    if-eqz v2, :cond_13

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 210
    :cond_13
    instance-of v2, v3, Ljava/lang/Float;

    if-eqz v2, :cond_14

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 212
    :cond_14
    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_15

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 215
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/tts/loopj/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
