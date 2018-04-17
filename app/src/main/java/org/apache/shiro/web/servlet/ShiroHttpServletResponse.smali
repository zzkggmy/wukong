.class public Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "ShiroHttpServletResponse.java"


# static fields
.field private static final DEFAULT_SESSION_ID_PARAMETER_NAME:Ljava/lang/String; = "JSESSIONID"


# instance fields
.field private context:Ljavax/servlet/ServletContext;

.field private request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;Ljavax/servlet/ServletContext;Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;)V
    .locals 1
    .param p1, "wrapped"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "context"    # Ljavax/servlet/ServletContext;
    .param p3, "request"    # Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 51
    iput-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->context:Ljavax/servlet/ServletContext;

    .line 53
    iput-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .line 57
    iput-object p2, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->context:Ljavax/servlet/ServletContext;

    .line 58
    iput-object p3, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .line 59
    return-void
.end method

.method private doIsEncodeable(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpSession;Ljava/lang/String;)Z
    .locals 11
    .param p1, "hreq"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "session"    # Ljavax/servlet/http/HttpSession;
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 161
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v5, "url":Ljava/net/URL;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 199
    .end local v5    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return v7

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_1
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 171
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v3

    .line 172
    .local v3, "serverPort":I
    if-ne v3, v10, :cond_2

    .line 173
    const-string v8, "https"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 174
    const/16 v3, 0x1bb

    .line 178
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 179
    .local v6, "urlPort":I
    if-ne v6, v10, :cond_3

    .line 180
    const-string v8, "https"

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 181
    const/16 v6, 0x1bb

    .line 185
    :cond_3
    :goto_2
    if-ne v3, v6, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->getRequest()Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "contextPath":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {v5}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "file":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ";JSESSIONID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "tok":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-gez v8, :cond_0

    .line 199
    .end local v2    # "file":Ljava/lang/String;
    .end local v4    # "tok":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "contextPath":Ljava/lang/String;
    .end local v6    # "urlPort":I
    :cond_5
    const/16 v3, 0x50

    goto :goto_1

    .line 183
    .restart local v6    # "urlPort":I
    :cond_6
    const/16 v6, 0x50

    goto :goto_2
.end method

.method private hasScheme(Ljava/lang/String;)Z
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 278
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 279
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 280
    .local v0, "c":C
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_1

    .line 281
    if-lez v1, :cond_0

    const/4 v3, 0x1

    .line 286
    .end local v0    # "c":C
    :cond_0
    return v3

    .line 282
    .restart local v0    # "c":C
    :cond_1
    invoke-static {v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->isSchemeChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isSchemeChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 265
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 253
    .end local p1    # "location":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 219
    .restart local p1    # "location":Ljava/lang/String;
    :cond_1
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 221
    .local v4, "leadingSlash":Z
    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->hasScheme(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v10}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "scheme":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v10}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v10}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getServerPort()I

    move-result v6

    .line 230
    .local v6, "port":I
    :try_start_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x50

    if-ne v6, v10, :cond_4

    :cond_3
    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x1bb

    if-eq v6, v10, :cond_5

    .line 233
    :cond_4
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    :cond_5
    if-nez v4, :cond_6

    .line 236
    iget-object v10, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v10}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "relativePath":Ljava/lang/String;
    const/16 v10, 0x2f

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 238
    .local v7, "pos":I
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 240
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "encodedURI":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .end local v2    # "encodedURI":Ljava/lang/String;
    .end local v7    # "pos":I
    .end local v8    # "relativePath":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 247
    throw v3
.end method


# virtual methods
.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->isEncodeable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->toEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "absolute":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->isEncodeable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    move-object p1, v0

    .line 113
    :cond_0
    iget-object v1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    invoke-virtual {v1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->toEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->context:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getRequest()Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    return-object v0
.end method

.method protected isEncodeable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 139
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .line 148
    .local v0, "hreq":Ljavax/servlet/http/HttpServletRequest;
    invoke-interface {v0, v2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 149
    .local v1, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromCookie()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->doIsEncodeable(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpSession;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public setContext(Ljavax/servlet/ServletContext;)V
    .locals 0
    .param p1, "context"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->context:Ljavax/servlet/ServletContext;

    .line 69
    return-void
.end method

.method public setRequest(Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpServletResponse;->request:Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;

    .line 78
    return-void
.end method

.method protected toEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 298
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 323
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 301
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .line 302
    .local v1, "path":Ljava/lang/String;
    const-string v3, ""

    .line 303
    .local v3, "query":Ljava/lang/String;
    const-string v0, ""

    .line 304
    .local v0, "anchor":Ljava/lang/String;
    const/16 v6, 0x3f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 305
    .local v4, "question":I
    if-ltz v4, :cond_2

    .line 306
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    :cond_2
    const/16 v6, 0x23

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 310
    .local v2, "pound":I
    if-ltz v2, :cond_3

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 314
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 316
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v6, "JSESSIONID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
