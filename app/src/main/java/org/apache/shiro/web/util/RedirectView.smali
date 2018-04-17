.class public Lorg/apache/shiro/web/util/RedirectView;
.super Ljava/lang/Object;
.source "RedirectView.java"


# static fields
.field public static final DEFAULT_ENCODING_SCHEME:Ljava/lang/String; = "UTF-8"


# instance fields
.field private contextRelative:Z

.field private encodingScheme:Ljava/lang/String;

.field private http10Compatible:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/web/util/RedirectView;->contextRelative:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/web/util/RedirectView;->http10Compatible:Z

    .line 78
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/shiro/web/util/RedirectView;->encodingScheme:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/web/util/RedirectView;->contextRelative:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/web/util/RedirectView;->http10Compatible:Z

    .line 78
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/shiro/web/util/RedirectView;->encodingScheme:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/util/RedirectView;->setUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contextRelative"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/util/RedirectView;-><init>(Ljava/lang/String;)V

    .line 108
    iput-boolean p2, p0, Lorg/apache/shiro/web/util/RedirectView;->contextRelative:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contextRelative"    # Z
    .param p3, "http10Compatible"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/util/RedirectView;-><init>(Ljava/lang/String;)V

    .line 121
    iput-boolean p2, p0, Lorg/apache/shiro/web/util/RedirectView;->contextRelative:Z

    .line 122
    iput-boolean p3, p0, Lorg/apache/shiro/web/util/RedirectView;->http10Compatible:Z

    .line 123
    return-void
.end method


# virtual methods
.method protected appendQueryProperties(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V
    .locals 12
    .param p1, "targetUrl"    # Ljava/lang/StringBuilder;
    .param p2, "model"    # Ljava/util/Map;
    .param p3, "encodingScheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3f

    .line 224
    const/4 v5, 0x0

    .line 225
    .local v5, "fragment":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x23

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 226
    .local v0, "anchorIndex":I
    const/4 v9, -0x1

    if-le v0, v9, :cond_0

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {p1, v0, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/util/RedirectView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_1

    const/4 v4, 0x1

    .line 233
    .local v4, "first":Z
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/shiro/web/util/RedirectView;->queryProperties(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 235
    .local v8, "queryProps":Ljava/util/Map;
    if-eqz v8, :cond_4

    .line 236
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 237
    .local v7, "o":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    const/4 v4, 0x0

    :goto_2
    move-object v3, v7

    .line 243
    check-cast v3, Ljava/util/Map$Entry;

    .line 244
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, p3}, Lorg/apache/shiro/web/util/RedirectView;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "encodedKey":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, p3}, Lorg/apache/shiro/web/util/RedirectView;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "encodedValue":Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    .end local v1    # "encodedKey":Ljava/lang/String;
    .end local v2    # "encodedValue":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "first":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "queryProps":Ljava/util/Map;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 241
    .restart local v4    # "first":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v8    # "queryProps":Ljava/util/Map;
    :cond_2
    const/16 v9, 0x26

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 245
    .restart local v1    # "encodedKey":Ljava/lang/String;
    .restart local v3    # "entry":Ljava/util/Map$Entry;
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 252
    .end local v1    # "encodedKey":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "o":Ljava/lang/Object;
    :cond_4
    if-eqz v5, :cond_5

    .line 253
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_5
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/shiro/web/util/RedirectView;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected queryProperties(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p1, "model"    # Ljava/util/Map;

    .prologue
    .line 283
    return-object p1
.end method

.method public final renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .param p1, "model"    # Ljava/util/Map;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "targetUrl":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lorg/apache/shiro/web/util/RedirectView;->contextRelative:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/shiro/web/util/RedirectView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/util/RedirectView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lorg/apache/shiro/web/util/RedirectView;->encodingScheme:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/shiro/web/util/RedirectView;->appendQueryProperties(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/shiro/web/util/RedirectView;->http10Compatible:Z

    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/apache/shiro/web/util/RedirectView;->sendRedirect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Z)V

    .line 204
    return-void
.end method

.method protected sendRedirect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "targetUrl"    # Ljava/lang/String;
    .param p4, "http10Compatible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p4, :cond_0

    .line 300
    invoke-interface {p2, p3}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    const/16 v0, 0x12f

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 304
    const-string v0, "Location"

    invoke-interface {p2, p3}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContextRelative(Z)V
    .locals 0
    .param p1, "contextRelative"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/apache/shiro/web/util/RedirectView;->contextRelative:Z

    .line 150
    return-void
.end method

.method public setEncodingScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodingScheme"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/apache/shiro/web/util/RedirectView;->encodingScheme:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setHttp10Compatible(Z)V
    .locals 0
    .param p1, "http10Compatible"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/apache/shiro/web/util/RedirectView;->http10Compatible:Z

    .line 167
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/apache/shiro/web/util/RedirectView;->url:Ljava/lang/String;

    .line 132
    return-void
.end method

.method protected urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "encodingScheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
