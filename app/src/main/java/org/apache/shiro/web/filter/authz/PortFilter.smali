.class public Lorg/apache/shiro/web/filter/authz/PortFilter;
.super Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;
.source "PortFilter.java"


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x50

.field public static final HTTP_SCHEME:Ljava/lang/String; = "http"


# instance fields
.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;-><init>()V

    .line 51
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/shiro/web/filter/authz/PortFilter;->port:I

    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/shiro/web/filter/authz/PortFilter;->port:I

    return v0
.end method

.method protected getScheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "requestScheme"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 80
    const/16 v0, 0x50

    if-ne p2, v0, :cond_1

    .line 81
    const-string p1, "http"

    .line 85
    .end local p1    # "requestScheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 82
    .restart local p1    # "requestScheme":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x1bb

    if-ne p2, v0, :cond_0

    .line 83
    const-string p1, "https"

    goto :goto_0
.end method

.method protected isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p3}, Lorg/apache/shiro/web/filter/authz/PortFilter;->toPort(Ljava/lang/Object;)I

    move-result v1

    .line 75
    .local v1, "requiredPort":I
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getServerPort()I

    move-result v0

    .line 76
    .local v0, "requestPort":I
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onAccessDenied(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p3}, Lorg/apache/shiro/web/filter/authz/PortFilter;->toPort(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "port":I
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/apache/shiro/web/filter/authz/PortFilter;->getScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "scheme":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v4, 0x50

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1bb

    if-eq v0, v4, :cond_0

    .line 109
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    instance-of v4, p1, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v4, :cond_1

    .line 113
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v4

    invoke-interface {v4}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {p1}, Lorg/apache/shiro/web/util/WebUtils;->toHttp(Ljavax/servlet/ServletRequest;)Ljavax/servlet/http/HttpServletRequest;

    move-result-object v4

    invoke-interface {v4}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 116
    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lorg/apache/shiro/web/util/WebUtils;->issueRedirect(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;)V

    .line 122
    const/4 v4, 0x0

    return v4
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/apache/shiro/web/filter/authz/PortFilter;->port:I

    .line 59
    return-void
.end method

.method protected toPort(Ljava/lang/Object;)I
    .locals 4
    .param p1, "mappedValue"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "mappedValue":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 63
    .local v0, "ports":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/filter/authz/PortFilter;->getPort()I

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 66
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 67
    new-instance v1, Lorg/apache/shiro/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PortFilter can only be configured with a single port.  You have configured "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/shiro/util/StringUtils;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
