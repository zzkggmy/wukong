.class public interface abstract Lorg/apache/shiro/web/session/mgt/WebSessionContext;
.super Ljava/lang/Object;
.source "WebSessionContext.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionContext;
.implements Lorg/apache/shiro/web/util/RequestPairSource;


# virtual methods
.method public abstract getServletRequest()Ljavax/servlet/ServletRequest;
.end method

.method public abstract getServletResponse()Ljavax/servlet/ServletResponse;
.end method

.method public abstract setServletRequest(Ljavax/servlet/ServletRequest;)V
.end method

.method public abstract setServletResponse(Ljavax/servlet/ServletResponse;)V
.end method
