.class public Lorg/apache/shiro/web/util/SavedRequest;
.super Ljava/lang/Object;
.source "SavedRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private method:Ljava/lang/String;

.field private queryString:Ljava/lang/String;

.field private requestURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/util/SavedRequest;->method:Ljava/lang/String;

    .line 45
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/util/SavedRequest;->queryString:Ljava/lang/String;

    .line 46
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/util/SavedRequest;->requestURI:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/shiro/web/util/SavedRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/shiro/web/util/SavedRequest;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/shiro/web/util/SavedRequest;->requestURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/shiro/web/util/SavedRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "requestUrl":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/shiro/web/util/SavedRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/shiro/web/util/SavedRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
