.class public abstract Lorg/apache/shiro/web/servlet/OncePerRequestFilter;
.super Lorg/apache/shiro/web/servlet/NameableFilter;
.source "OncePerRequestFilter.java"


# static fields
.field public static final ALREADY_FILTERED_SUFFIX:Ljava/lang/String; = ".FILTERED"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/NameableFilter;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->enabled:Z

    return-void
.end method


# virtual methods
.method public final doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "filterChain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->getAlreadyFilteredAttributeName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "alreadyFilteredAttributeName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "Filter \'{}\' already executed.  Proceeding without invoking this filter."

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 132
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->isEnabled(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->shouldNotFilter(Ljavax/servlet/ServletRequest;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    :cond_1
    sget-object v1, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "Filter \'{}\' is not enabled for the current request.  Proceeding without invoking this filter."

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    .line 121
    :cond_2
    sget-object v1, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "Filter \'{}\' not yet executed.  Executing now."

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->doFilterInternal(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract doFilterInternal(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getAlreadyFilteredAttributeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".FILTERED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->enabled:Z

    return v0
.end method

.method protected isEnabled(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;->enabled:Z

    .line 96
    return-void
.end method

.method protected shouldNotFilter(Ljavax/servlet/ServletRequest;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method
