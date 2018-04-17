.class public abstract Lorg/apache/shiro/web/servlet/AdviceFilter;
.super Lorg/apache/shiro/web/servlet/OncePerRequestFilter;
.source "AdviceFilter.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/shiro/web/servlet/AdviceFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/OncePerRequestFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCompletion(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method protected cleanup(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "existing"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v1, p3

    .line 172
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/shiro/web/servlet/AdviceFilter;->afterCompletion(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V

    .line 173
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "Successfully invoked afterCompletion method."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 185
    instance-of v3, v1, Ljavax/servlet/ServletException;

    if-eqz v3, :cond_2

    .line 186
    check-cast v1, Ljavax/servlet/ServletException;

    .end local v1    # "exception":Ljava/lang/Exception;
    throw v1

    .line 176
    .restart local v1    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_1

    .line 178
    move-object v1, v0

    goto :goto_0

    .line 180
    :cond_1
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "afterCompletion implementation threw an exception.  This will be ignored to allow the original source exception to be propagated."

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_3

    .line 188
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "exception":Ljava/lang/Exception;
    throw v1

    .line 190
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_3
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    const-string v2, "Filter execution resulted in an unexpected Exception (not IOException or ServletException as the Filter API recommends).  Wrapping in ServletException and propagating."

    .line 194
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 196
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljavax/servlet/ServletException;

    invoke-direct {v3, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 199
    :cond_5
    return-void
.end method

.method public doFilterInternal(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 6
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 131
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/servlet/AdviceFilter;->preHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z

    move-result v0

    .line 132
    .local v0, "continueChain":Z
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoked preHandle method.  Continuing chain?: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/web/servlet/AdviceFilter;->executeChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 140
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/servlet/AdviceFilter;->postHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 141
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    sget-object v3, Lorg/apache/shiro/web/servlet/AdviceFilter;->log:Lorg/slf4j/Logger;

    const-string v4, "Successfully invoked postHandle method"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/shiro/web/servlet/AdviceFilter;->cleanup(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V

    .line 150
    .end local v0    # "continueChain":Z
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    .line 148
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/shiro/web/servlet/AdviceFilter;->cleanup(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/shiro/web/servlet/AdviceFilter;->cleanup(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected executeChain(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 109
    return-void
.end method

.method protected postHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method protected preHandle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
