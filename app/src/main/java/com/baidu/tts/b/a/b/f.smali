.class public Lcom/baidu/tts/b/a/b/f;
.super Lcom/baidu/tts/b/a/b/a;
.source "OnlineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/a/b/f$a;,
        Lcom/baidu/tts/b/a/b/f$b;,
        Lcom/baidu/tts/b/a/b/f$c;
    }
.end annotation


# instance fields
.field private b:Lcom/baidu/tts/b/a/b/f$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/tts/n/a;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->X:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->W:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/baidu/tts/k/i;->c(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3}, Lcom/baidu/tts/k/i;->d()Ljava/lang/String;

    move-result-object v3

    .line 202
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {p3}, Lcom/baidu/tts/k/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v4, Lcom/baidu/tts/e/g;->Y:Lcom/baidu/tts/e/g;

    invoke-virtual {v4}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {}, Lcom/baidu/tts/g/b/b;->f()Lcom/baidu/tts/g/b/b;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/baidu/tts/e/g;->Z:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/g/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    sget-object v4, Lcom/baidu/tts/e/g;->ab:Lcom/baidu/tts/e/g;

    invoke-virtual {v4}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/tts/g/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v6, Lcom/baidu/tts/e/g;->Z:Lcom/baidu/tts/e/g;

    invoke-virtual {v6}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v0}, Lcom/baidu/tts/g/b/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v5, Lcom/baidu/tts/e/g;->aa:Lcom/baidu/tts/e/g;

    invoke-virtual {v5}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->ab:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    if-eqz p4, :cond_1

    .line 219
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->e()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    invoke-static {}, Lcom/baidu/tts/answer/auth/a;->g()Lcom/baidu/tts/answer/auth/a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/baidu/tts/answer/auth/a;->a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/answer/auth/AuthInfo;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/AuthInfo;->getOnlineAuthBean()Lcom/baidu/tts/answer/auth/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/answer/auth/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v4, Lcom/baidu/tts/e/g;->aj:Lcom/baidu/tts/e/g;

    invoke-virtual {v4}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->H:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->r()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->J:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->K:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->L:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->ac:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->ad:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->M:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->N:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->ae:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->af:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->G:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->D:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->t()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->F:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->u()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/baidu/tts/e/g;->E:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/baidu/tts/b/a/b/f$b;->v()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 260
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 267
    const-string v0, "OnlineSynthesizer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request params: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_3
    return-object v0

    .line 226
    :cond_2
    :try_start_2
    new-instance v0, Lcom/baidu/tts/n/a;

    invoke-direct {v0}, Lcom/baidu/tts/n/a;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 229
    :cond_3
    :try_start_3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v4, Lcom/baidu/tts/e/g;->O:Lcom/baidu/tts/e/g;

    invoke-virtual {v4}, Lcom/baidu/tts/e/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 261
    :cond_4
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 262
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 269
    :catch_1
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/tts/n/a;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/tts/b/a/b/f;->a(ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/f$b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V
    .locals 1

    .prologue
    .line 128
    add-int/lit8 v0, p1, 0x1

    .line 129
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/baidu/tts/b/a/b/f;->b(ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/tts/b/a/b/f;->a(ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V

    return-void
.end method

.method private b(ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V
    .locals 7

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/baidu/tts/b/a/b/f$a;

    iget-object v5, p0, Lcom/baidu/tts/b/a/b/f;->b:Lcom/baidu/tts/b/a/b/f$b;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/tts/b/a/b/f$a;-><init>(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/f$b;Lcom/baidu/tts/b/a/b/h$a;)V

    .line 137
    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$a;->run()V

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/tts/b/a/b/f;ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/tts/b/a/b/f;->b(ILjava/lang/String;Lcom/baidu/tts/k/i;Lcom/baidu/tts/b/a/b/h$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/baidu/tts/k/f;)I
    .locals 1

    .prologue
    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/baidu/tts/k/g;)I
    .locals 1

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/baidu/tts/k/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Lcom/baidu/tts/b/a/b/f$c;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/b/a/b/f$c;-><init>(Lcom/baidu/tts/b/a/b/f;Lcom/baidu/tts/k/i;)V

    .line 72
    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/f$c;->a()Lcom/baidu/tts/aop/tts/TtsError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {}, Lcom/baidu/tts/g/a/c;->a()Lcom/baidu/tts/g/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/e/o;->j:Lcom/baidu/tts/e/o;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/tts/g/a/c;->a(Lcom/baidu/tts/e/o;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OnlineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOnlineSynthesizerParams;)V"
        }
    .end annotation

    .prologue
    .line 59
    .line 60
    check-cast p1, Lcom/baidu/tts/b/a/b/f$b;

    .line 59
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f;->b:Lcom/baidu/tts/b/a/b/f$b;

    .line 61
    return-void
.end method

.method public b(Lcom/baidu/tts/k/e;)I
    .locals 1

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
