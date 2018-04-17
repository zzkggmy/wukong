.class public Lorg/apache/shiro/web/servlet/ServletContextSupport;
.super Ljava/lang/Object;
.source "ServletContextSupport.java"


# instance fields
.field private servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/ServletContextSupport;->servletContext:Ljavax/servlet/ServletContext;

    return-void
.end method

.method private getRequiredServletContext()Ljavax/servlet/ServletContext;
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ServletContextSupport;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    .line 48
    .local v1, "servletContext":Ljavax/servlet/ServletContext;
    if-nez v1, :cond_0

    .line 49
    const-string v0, "ServletContext property must be set via the setServletContext method."

    .line 50
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getContextAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/ServletContextSupport;->getRequiredServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getContextInitParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ServletContextSupport;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ServletContextSupport;->servletContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method protected removeContextAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/ServletContextSupport;->getRequiredServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->removeAttribute(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected setContextAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/ServletContextSupport;->removeContextAttribute(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/ServletContextSupport;->getRequiredServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setServletContext(Ljavax/servlet/ServletContext;)V
    .locals 0
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/ServletContextSupport;->servletContext:Ljavax/servlet/ServletContext;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ServletContextSupport;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
