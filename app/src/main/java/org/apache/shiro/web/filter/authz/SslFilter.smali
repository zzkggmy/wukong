.class public Lorg/apache/shiro/web/filter/authz/SslFilter;
.super Lorg/apache/shiro/web/filter/authz/PortFilter;
.source "SslFilter.java"


# static fields
.field public static final DEFAULT_HTTPS_PORT:I = 0x1bb

.field public static final HTTPS_SCHEME:Ljava/lang/String; = "https"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authz/PortFilter;-><init>()V

    .line 47
    const/16 v0, 0x1bb

    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/filter/authz/SslFilter;->setPort(I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getScheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "requestScheme"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 52
    const/16 v0, 0x50

    if-ne p2, v0, :cond_0

    .line 53
    const-string v0, "http"

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https"

    goto :goto_0
.end method

.method protected isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 1
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
    invoke-super {p0, p1, p2, p3}, Lorg/apache/shiro/web/filter/authz/PortFilter;->isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
