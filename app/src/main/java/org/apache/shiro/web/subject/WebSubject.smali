.class public interface abstract Lorg/apache/shiro/web/subject/WebSubject;
.super Ljava/lang/Object;
.source "WebSubject.java"

# interfaces
.implements Lorg/apache/shiro/subject/Subject;
.implements Lorg/apache/shiro/web/util/RequestPairSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/web/subject/WebSubject$Builder;
    }
.end annotation


# virtual methods
.method public abstract getServletRequest()Ljavax/servlet/ServletRequest;
.end method

.method public abstract getServletResponse()Ljavax/servlet/ServletResponse;
.end method
