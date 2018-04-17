.class public interface abstract Lorg/apache/shiro/util/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/shiro/util/ByteSource$Util;
    }
.end annotation


# virtual methods
.method public abstract getBytes()[B
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract toBase64()Ljava/lang/String;
.end method

.method public abstract toHex()Ljava/lang/String;
.end method
