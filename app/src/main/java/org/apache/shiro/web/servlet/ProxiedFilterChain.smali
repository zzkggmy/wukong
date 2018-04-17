.class public Lorg/apache/shiro/web/servlet/ProxiedFilterChain;
.super Ljava/lang/Object;
.source "ProxiedFilterChain.java"

# interfaces
.implements Ljavax/servlet/FilterChain;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private orig:Ljavax/servlet/FilterChain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/FilterChain;Ljava/util/List;)V
    .locals 2
    .param p1, "orig"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/FilterChain;",
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/Filter;>;"
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->index:I

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "original FilterChain cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->orig:Ljavax/servlet/FilterChain;

    .line 51
    iput-object p2, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->filters:Ljava/util/List;

    .line 52
    iput v0, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->index:I

    .line 53
    return-void
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->filters:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->index:I

    if-ne v0, v1, :cond_2

    .line 58
    :cond_0
    sget-object v0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Invoking original filter chain."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->orig:Ljavax/servlet/FilterChain;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_2
    sget-object v0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    sget-object v0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking wrapped filter at index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 66
    :cond_3
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->filters:Ljava/util/List;

    iget v1, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/shiro/web/servlet/ProxiedFilterChain;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    invoke-interface {v0, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    goto :goto_0
.end method
