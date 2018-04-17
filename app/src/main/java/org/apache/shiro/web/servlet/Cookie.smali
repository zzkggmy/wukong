.class public interface abstract Lorg/apache/shiro/web/servlet/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field public static final DELETED_COOKIE_VALUE:Ljava/lang/String; = "deleteMe"

.field public static final ONE_YEAR:I = 0x1e13380

.field public static final ROOT_PATH:Ljava/lang/String; = "/"


# virtual methods
.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getMaxAge()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract isHttpOnly()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract readValue(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;
.end method

.method public abstract removeFrom(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end method

.method public abstract saveTo(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end method

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setDomain(Ljava/lang/String;)V
.end method

.method public abstract setHttpOnly(Z)V
.end method

.method public abstract setMaxAge(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public abstract setVersion(I)V
.end method
