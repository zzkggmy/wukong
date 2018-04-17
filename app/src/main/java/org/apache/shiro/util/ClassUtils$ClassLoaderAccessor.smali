.class interface abstract Lorg/apache/shiro/util/ClassUtils$ClassLoaderAccessor;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/util/ClassUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ClassLoaderAccessor"
.end annotation


# virtual methods
.method public abstract getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract loadClass(Ljava/lang/String;)Ljava/lang/Class;
.end method
