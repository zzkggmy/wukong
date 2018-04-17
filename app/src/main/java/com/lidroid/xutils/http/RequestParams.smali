.class public Lcom/lidroid/xutils/http/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/RequestParams$HeaderItem;
    }
.end annotation


# instance fields
.field private bodyEntity:Lorg/apache/http/HttpEntity;

.field private bodyParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private fileParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/xutils/http/RequestParams$HeaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private priority:Lcom/lidroid/xutils/task/Priority;

.field private queryStringParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3, p4}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "length"    # J

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;

    invoke-direct {v1, p2, p3, p4}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 258
    :cond_0
    iget-object v6, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public addBodyParameter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    .line 205
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    :cond_1
    return-void

    .line 206
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 207
    .local v0, "pair":Lorg/apache/http/NameValuePair;
    iget-object v2, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addBodyParameter(Lorg/apache/http/NameValuePair;)V
    .locals 1
    .param p1, "nameValuePair"    # Lorg/apache/http/NameValuePair;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    invoke-direct {v1, p0, p1}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    return-void

    .line 116
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 117
    .local v0, "header":Lorg/apache/http/Header;
    iget-object v2, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    invoke-direct {v3, p0, v0}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public addQueryStringParameter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    .line 180
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    :cond_1
    return-void

    .line 181
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 182
    .local v0, "pair":Lorg/apache/http/NameValuePair;
    iget-object v2, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addQueryStringParameter(Lorg/apache/http/NameValuePair;)V
    .locals 1
    .param p1, "nameValuePair"    # Lorg/apache/http/NameValuePair;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 9

    .prologue
    .line 278
    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    if-eqz v5, :cond_1

    .line 279
    iget-object v4, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    .line 307
    :cond_0
    :goto_0
    return-object v4

    .line 282
    :cond_1
    const/4 v4, 0x0

    .line 284
    .local v4, "result":Lorg/apache/http/HttpEntity;
    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 286
    new-instance v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;

    sget-object v5, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;-><init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 288
    .local v2, "multipartEntity":Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;
    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 289
    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 302
    move-object v4, v2

    .line 303
    goto :goto_0

    .line 289
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 291
    .local v3, "param":Lorg/apache/http/NameValuePair;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lidroid/xutils/http/client/multipart/content/StringBody;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/lidroid/xutils/http/client/multipart/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "param":Lorg/apache/http/NameValuePair;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 299
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    invoke-virtual {v2, v5, v6}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    goto :goto_2

    .line 303
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;>;"
    .end local v2    # "multipartEntity":Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;
    :cond_5
    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 304
    new-instance v4, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;

    .end local v4    # "result":Lorg/apache/http/HttpEntity;
    iget-object v5, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    iget-object v6, p0, Lcom/lidroid/xutils/http/RequestParams;->charset:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .restart local v4    # "result":Lorg/apache/http/HttpEntity;
    goto/16 :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/xutils/http/RequestParams$HeaderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()Lcom/lidroid/xutils/task/Priority;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public getQueryStringParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->queryStringParams:Ljava/util/List;

    return-object v0
.end method

.method public setBodyEntity(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "bodyEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v1, 0x0

    .line 262
    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyEntity:Lorg/apache/http/HttpEntity;

    .line 263
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iput-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->bodyParams:Ljava/util/List;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 269
    iput-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->fileParams:Ljava/util/HashMap;

    .line 271
    :cond_1
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    iget-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    .line 157
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    return-void

    .line 157
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 158
    .local v0, "header":Lorg/apache/http/Header;
    iget-object v2, p0, Lcom/lidroid/xutils/http/RequestParams;->headers:Ljava/util/List;

    new-instance v3, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;-><init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPriority(Lcom/lidroid/xutils/task/Priority;)V
    .locals 0
    .param p1, "priority"    # Lcom/lidroid/xutils/task/Priority;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams;->priority:Lcom/lidroid/xutils/task/Priority;

    .line 72
    return-void
.end method
