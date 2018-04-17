.class public interface abstract Lorg/apache/shiro/web/subject/WebSubjectContext;
.super Ljava/lang/Object;
.source "WebSubjectContext.java"

# interfaces
.implements Lorg/apache/shiro/subject/SubjectContext;
.implements Lorg/apache/shiro/web/util/RequestPairSource;


# virtual methods
.method public abstract getServletRequest()Ljavax/servlet/ServletRequest;
.end method

.method public abstract getServletResponse()Ljavax/servlet/ServletResponse;
.end method

.method public abstract resolveServletRequest()Ljavax/servlet/ServletRequest;
.end method

.method public abstract resolveServletResponse()Ljavax/servlet/ServletResponse;
.end method

.method public abstract setServletRequest(Ljavax/servlet/ServletRequest;)V
.end method

.method public abstract setServletResponse(Ljavax/servlet/ServletResponse;)V
.end method
