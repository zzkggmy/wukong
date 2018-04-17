.class public Lcom/baidu/tts/b/a/b/h;
.super Lcom/baidu/tts/b/a/b/g;
.source "TtsResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/a/b/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/b/a/b/h$a;

.field private b:Lcom/baidu/tts/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/tts/a/a/a",
            "<[B[B>;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/tts/b/a/b/f$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/g;-><init>()V

    .line 43
    new-instance v0, Lcom/baidu/tts/a/a/a;

    invoke-direct {v0}, Lcom/baidu/tts/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/h;->b:Lcom/baidu/tts/a/a/a;

    .line 44
    new-instance v0, Lcom/baidu/tts/a/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/a/a/b;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/h;->b:Lcom/baidu/tts/a/a/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/a/a/a;->a(Lcom/baidu/tts/a/a/c;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->b:Lcom/baidu/tts/a/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/a/a;->a()V

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/tts/k/h;
    .locals 5

    .prologue
    .line 148
    new-instance v1, Lcom/baidu/tts/k/h;

    invoke-direct {v1}, Lcom/baidu/tts/k/h;-><init>()V

    .line 150
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    sget-object v2, Lcom/baidu/tts/e/g;->v:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 152
    invoke-virtual {v1, v2}, Lcom/baidu/tts/k/h;->a(I)V

    .line 153
    if-eqz v2, :cond_0

    .line 154
    sget-object v3, Lcom/baidu/tts/e/g;->w:Lcom/baidu/tts/e/g;

    invoke-virtual {v3}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v3

    sget-object v4, Lcom/baidu/tts/e/o;->g:Lcom/baidu/tts/e/o;

    invoke-virtual {v3, v4, v2, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 158
    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 172
    :goto_0
    return-object v1

    .line 160
    :cond_0
    sget-object v2, Lcom/baidu/tts/e/g;->W:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v1, v2}, Lcom/baidu/tts/k/h;->a(Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/baidu/tts/e/g;->X:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 163
    invoke-virtual {v1, v2}, Lcom/baidu/tts/k/h;->b(I)V

    .line 164
    sget-object v2, Lcom/baidu/tts/e/g;->z:Lcom/baidu/tts/e/g;

    invoke-virtual {v2}, Lcom/baidu/tts/e/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 165
    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->c(I)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/b/a/b/h$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/b/a/b/h$a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b/h$a;->a(Lcom/baidu/tts/k/h;)V

    .line 179
    :cond_0
    return-void
.end method

.method private b(Lorg/apache/http/HttpEntity;)Lcom/baidu/tts/k/h;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string v0, "--BD**TTS++LIB"

    .line 82
    const-string v2, "--"

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 98
    :goto_1
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/baidu/tts/o/a;->a([B[BI)I

    move-result v3

    .line 99
    if-gez v3, :cond_1

    .line 132
    :cond_0
    :goto_2
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v2

    .line 96
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    goto :goto_1

    .line 103
    :cond_1
    array-length v4, v0

    add-int/2addr v4, v3

    invoke-static {v2, v0, v4}, Lcom/baidu/tts/o/a;->a([B[BI)I

    move-result v4

    .line 104
    if-ltz v4, :cond_0

    .line 108
    array-length v5, v0

    add-int/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/baidu/tts/o/a;->a([BII)[B

    move-result-object v3

    .line 112
    :try_start_2
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/baidu/tts/b/a/b/h;->a(Ljava/lang/String;)Lcom/baidu/tts/k/h;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 118
    :goto_3
    array-length v3, v0

    add-int/2addr v3, v4

    invoke-static {v2, v0, v3}, Lcom/baidu/tts/o/a;->a([B[BI)I

    move-result v3

    .line 119
    if-ltz v3, :cond_0

    .line 121
    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {v2, v0, v3}, Lcom/baidu/tts/o/a;->a([BII)[B

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v2}, Lcom/baidu/tts/b/a/b/f$b;->c()Lcom/baidu/tts/e/b;

    move-result-object v2

    sget-object v3, Lcom/baidu/tts/e/b;->d:Lcom/baidu/tts/e/b;

    invoke-virtual {v2, v3}, Lcom/baidu/tts/e/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a([B)V

    .line 125
    sget-object v0, Lcom/baidu/tts/e/a;->b:Lcom/baidu/tts/e/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/a;)V

    goto :goto_2

    .line 113
    :catch_2
    move-exception v3

    .line 115
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/h;->b:Lcom/baidu/tts/a/a/a;

    invoke-virtual {v2, v0}, Lcom/baidu/tts/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 128
    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a([B)V

    .line 129
    sget-object v0, Lcom/baidu/tts/e/a;->a:Lcom/baidu/tts/e/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/e/a;)V

    goto :goto_2
.end method

.method private b(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/b/a/b/h$a;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/b/a/b/h$a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/b/h$a;->b(Lcom/baidu/tts/k/h;)V

    .line 185
    :cond_0
    return-void
.end method

.method private c(Lorg/apache/http/HttpEntity;)Lcom/baidu/tts/k/h;
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    :try_start_0
    sget-object v1, Lcom/baidu/tts/e/d;->c:Lcom/baidu/tts/e/d;

    invoke-virtual {v1}, Lcom/baidu/tts/e/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 144
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/h;->a(Ljava/lang/String;)Lcom/baidu/tts/k/h;

    move-result-object v0

    return-object v0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 141
    :catch_1
    move-exception v1

    .line 142
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 1

    .prologue
    .line 71
    .line 72
    const-string v0, "application/json"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p4}, Lcom/baidu/tts/b/a/b/h;->c(Lorg/apache/http/HttpEntity;)Lcom/baidu/tts/k/h;

    move-result-object v0

    .line 77
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/h;->a(Lcom/baidu/tts/k/h;)V

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-direct {p0, p4}, Lcom/baidu/tts/b/a/b/h;->b(Lorg/apache/http/HttpEntity;)Lcom/baidu/tts/k/h;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 200
    const-string v0, "TtsResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/baidu/tts/k/h;

    invoke-direct {v0}, Lcom/baidu/tts/k/h;-><init>()V

    .line 203
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->b:Lcom/baidu/tts/e/o;

    .line 204
    const/4 v3, 0x0

    .line 203
    invoke-virtual {v1, v2, p1, v3, p5}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 206
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/b/h;->b(Lcom/baidu/tts/k/h;)V

    .line 207
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/f$b;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/h;->c:Lcom/baidu/tts/b/a/b/f$b;

    .line 51
    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/h$a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/h;->a:Lcom/baidu/tts/b/a/b/h$a;

    .line 58
    return-void
.end method
